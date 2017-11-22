IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[Factura]') AND type IN ('U'))
	DROP TABLE [Factura]
	
GO
CREATE TABLE Factura (
    FacturaID				INT					NOT NULL,
    FechaGenerado			DATE				NOT NULL,
	NumeroPedido			VARCHAR(13)			NOT NULL,
    FechaVencimiento		DATE				NOT NULL,
    Estatus					CHAR(1)				NOT NULL,
	Subtotal				DECIMAL(14,2)		NOT NULL,
	IVA						DECIMAL(14,2)		NOT NULL,
    Total					DECIMAL(14,2)		NOT NULL,
    PedidoID				INT					NOT NULL,
	EmpresaID				INT					NOT NULL,
	CONSTRAINT PK_Factura PRIMARY KEY (FacturaID),
	CONSTRAINT FK_FacturaPedido_1 FOREIGN KEY (PedidoID) REFERENCES Pedido (PedidoID),
	CONSTRAINT FK_FacturaPedido_2 FOREIGN KEY (EmpresaID) REFERENCES Empresa (EmpresaID)
	)
GO	