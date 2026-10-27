CREATE TABLE ciudades (
    id_ciudades INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    estado_id INT NOT NULL,
    CONSTRAINT fk_ciudades_estados FOREIGN KEY (estado_id) REFERENCES estados(id_estados)
);
INSERT INTO ciudades (nombre, estado_id)
SELECT DISTINCT c.ciudad, c.estado
FROM clientes c
WHERE c.ciudad IS NOT NULL;
CREATE TABLE IF NOT EXISTS ciudades (
    id_ciudades INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    estado_id INT NOT NULL,
    CONSTRAINT fk_ciudades_estados FOREIGN KEY (estado_id) REFERENCES estados(id_estados)