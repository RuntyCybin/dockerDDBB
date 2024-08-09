-- Crear esquema cybinschema
CREATE SCHEMA cybinschema;

-- (Opcional) Crear una tabla en el esquema
CREATE TABLE cybinschema.users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL
);