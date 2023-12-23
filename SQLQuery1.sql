CREATE TABLE Clientes (
    codigoCliente INT PRIMARY KEY,
    Empresa NVARCHAR(100),
    Direccion NVARCHAR(200),
    Poblacion NVARCHAR(50),
    Telefono NVARCHAR(20),
    Responsable NVARCHAR(100),
    Historial NVARCHAR(MAX)
);

-- Crear la tabla "Productos"
CREATE TABLE Productos (
    CodigoArticulo INT PRIMARY KEY,
    seccion NVARCHAR(50),
    nombreArticulo NVARCHAR(100),
    Precio DECIMAL(10, 2),
    Fecha DATE,
    Importado BIT,
    PaisDeOrigen NVARCHAR(50),
    Foto VARBINARY(MAX)
);

-- Crear la tabla "ProductosPedido"
CREATE TABLE ProductosPedido (
    NumeroPedido INT,
    CodigoArticulo INT,
    Unidades INT,
    PRIMARY KEY (NumeroPedido, CodigoArticulo),
    FOREIGN KEY (CodigoArticulo) REFERENCES Productos(CodigoArticulo)
);

-- Crear la tabla "Pedidos"
CREATE TABLE Pedidos (
    numerodePedido INT PRIMARY KEY,
    codigoCliente INT,
    FechaPedido DATE,
    FormadePago NVARCHAR(50),
    Descuento DECIMAL(5, 2),
    Enviado BIT,
);


