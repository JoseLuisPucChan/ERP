IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[Proveedor]') AND type IN ('U'))
	DROP TABLE [Proveedor]
	
GO
CREATE TABLE Proveedor (
    ProveedorID				INT					NOT NULL,
    RFC						VARCHAR(13)			NOT NULL,
    Nombre					VARCHAR(50)			NOT NULL,
    CorreoElectronico		VARCHAR(50)			NOT NULL,
    Direccion				VARCHAR(50)			NOT NULL,
    Telefono				INT					NOT NULL,
	CONSTRAINT PK_Proveedor PRIMARY KEY (ProveedorID)
	)
GO	