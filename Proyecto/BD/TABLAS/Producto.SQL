IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[Producto]') AND type IN ('U'))
	DROP TABLE [Producto]
	
GO
CREATE TABLE Producto (
    ProductoID				INT					NOT NULL,
    CodigoProducto			VARCHAR(50)			NOT NULL,
    NombreProducto			VARCHAR(50)			NOT NULL,
    PrecioVenta				DECIMAL(14,2)		NOT NULL,
	PrecioCompra			DECIMAL(14,2)		NOT NULL,
	Cantidad				INT					NOT NULL,
	CONSTRAINT PK_Producto PRIMARY KEY (ProductoID)
	)
GO	