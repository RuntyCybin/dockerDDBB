-- 1.Crear esquema cybinschema
CREATE SCHEMA cybinschema;

-- 2.Crear la tabla de roles en el esquema
CREATE TABLE cybinschema.roles (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

-- 3.Crear la tabla de usuarios en el esquema
CREATE TABLE cybinschema.users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL
);

-- 4.Crear la tabla de relaciones muchos a muchos entre usuarios y roles
CREATE TABLE cybinschema.user_roles (
    user_id INT REFERENCES cybinschema.users(id) ON DELETE CASCADE,
    roles_id INT REFERENCES cybinschema.roles(id) ON DELETE CASCADE,
    PRIMARY KEY (user_id, roles_id)
);

CREATE SEQUENCE cybinschema.users_seq;