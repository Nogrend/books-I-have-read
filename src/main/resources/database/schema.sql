CREATE TABLE IF NOT EXISTS books (
    id pg_catalog.uuid PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL);
