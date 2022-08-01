CREATE EXTENSION IF NOT EXISTS pgcrypto;
create schema IF NOT EXISTS private;

DROP TYPE IF EXISTS jwt_token CASCADE;
create TYPE jwt_token as (
  exp integer,
  sub uuid,
  admin boolean
);

-- Users
CREATE TABLE IF NOT EXISTS private.users (
    like base including all,
    admin boolean NOT NULL DEFAULT false,
    refresh_token TEXT NOT NULL UNIQUE
);
CREATE OR REPLACE TRIGGER set_timestamp
    BEFORE UPDATE ON private.users
    FOR EACH ROW
EXECUTE PROCEDURE trigger_set_timestamp();

-- Login Trigger
DROP FUNCTION IF EXISTS public.authenticate;
create function public.authenticate(
  token text,
  OUT user_id uuid,
  OUT access_token public.jwt_token,
  OUT refresh_token TEXT,
  OUT admin boolean
) as $$
BEGIN
  user_id := uuid_generate_v4();
  refresh_token := substr(md5(random()::text), 0, 200);

  if token = (SELECT current_setting('env.user_secret')) then
    admin := false;
  elseif token = (SELECT current_setting('env.admin_secret')) then
    admin := true;
  else
    RAISE EXCEPTION 'Invalid Token';
  end if;

  access_token := (
      extract(epoch from now() + interval '30 minutes'),
      uuid_generate_v4(),
      admin
  )::public.jwt_token;

  INSERT INTO private.users (admin, id, refresh_token)
    VALUES (admin, user_id, crypt(refresh_token, gen_salt('bf')));
end;
$$ language plpgsql strict security definer;


-- Refresh Trigger
DROP FUNCTION IF EXISTS public.refresh;
create function public.refresh(
  user_id uuid,
  refresh_token TEXT,
  OUT access_token public.jwt_token
) as $$
DECLARE
  input_refresh_token ALIAS FOR refresh_token;
  found_user private.users;
BEGIN
  SELECT u.* INTO found_user FROM private.users as u
    WHERE u.id = user_id
    AND u.refresh_token = crypt(input_refresh_token, u.refresh_token);

  if found_user is NULL then
    RAISE EXCEPTION 'invalid refresh attempt';
  end if;

  access_token := (
      extract(epoch from now() + interval '30 minutes'),
      found_user.id,
      found_user.admin
  )::public.jwt_token;
end;
$$ language plpgsql strict security definer;