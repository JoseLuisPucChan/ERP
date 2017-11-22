IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[DetallePedido]') AND type IN ('U'))
	DROP TABLE [DetallePedido]
	
GO
CREATE TABLE DetallePedido (
    DetallePedidoID			INT					NOT NULL,
    Cantidad				INT					NOT NULL,
	CosteUnitario			DECIMAL(14,2)		NOT NULL,
	PrecioTotal				DECIMAL(14,2)		NOT NULL,
	PedidoID				INT					NOT NULL,
	ProductoID				INT					NOT NULL,
	FechaCreacion			DATE				NOT NULL,
	CONSTRAINT PK_DetallePedido	PRIMARY KEY (DetallePedidoID),
	CONSTRAINT FK_Pedido_1 FOREIGN KEY (PedidoID) REFERENCES Pedido (PedidoID),
	CONSTRAINT FK_Producto_1 FOREIGN KEY (ProductoID) REFERENCES Producto (ProductoID)

	)
GO
	CREATE INDEX FK_Pedido_1 ON DetallePedido (PedidoID ASC)
	CREATE INDEX PK_DetallePedido_1 ON DetallePedido (DetallePedidoID ASC)
	
GO