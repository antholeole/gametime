alter table "private"."users" alter column "refresh_token" set default md5(random()::text);
