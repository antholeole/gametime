DROP TYPE IF EXISTS jwt_token;
create TYPE jwt_token as (
  role text,
  exp integer,
  admin boolean
);

COMMENT ON TABLE base is
  '@omit :CRUDFOAM';