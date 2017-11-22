IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[DetalleFactura]') AND type IN ('U'))
	DROP TABLE [DetalleFactura]
	
GO
CREATE TABLE DetalleFactura (
    DetalleFacturaID		INT					NOT NULL,
	CodigoProducto			VARCHAR(50)			NOT NULL,
    NombreProducto			VARCHAR(50)			NOT NULL,
    Cantidad				INT					NOT NULL,
	CosteUnitario			DECIMAL(14,2)		NOT NULL,
	PrecioTotal				DECIMAL(14,2)		NOT NULL,
    FacturaID				INT					NOT NULL,
	CONSTRAINT PK_DetalleFactura PRIMARY KEY (DetalleFacturaID),
	CONSTRAINT FK_DetalleFactura_1 FOREIGN KEY (FacturaID) REFERENCES Factura (FacturaID)
	)
GO	