IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[Pedido]') AND type IN ('U'))
	DROP TABLE [Pedido]
	
GO
CREATE TABLE Pedido (
    PedidoID				INT					NOT NULL,
    ProveedorID				INT					NOT NULL,
	FechaCreacion			DATE				NOT NULL,
	CONSTRAINT PK_Pedido	PRIMARY KEY (PedidoID),
	CONSTRAINT FK_Proveedor_1 FOREIGN KEY (ProveedorID) REFERENCES Proveedor (ProveedorID)
	)
GO
	CREATE INDEX FK_Proveedor_1 ON Pedido (PedidoID ASC)
	
	
	
GO