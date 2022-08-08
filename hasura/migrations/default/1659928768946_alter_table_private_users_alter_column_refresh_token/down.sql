alter table "private"."users" alter column "refresh_token" set default 'select substr(md5(random()::text), 0, 50)'::text;
