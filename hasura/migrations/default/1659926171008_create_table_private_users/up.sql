CREATE TABLE "private"."users" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "refresh_token" text NOT NULL DEFAULT 'select substr(md5(random()::text), 0, 50)', PRIMARY KEY ("id") , UNIQUE ("id"));
CREATE EXTENSION IF NOT EXISTS pgcrypto;
