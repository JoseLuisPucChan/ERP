IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[Empresa]') AND type IN ('U'))
	DROP TABLE [Empresa]
	
GO
CREATE TABLE Empresa (
    EmpresaID				INT					NOT NULL,
    Nombre					VARCHAR(50)			NOT NULL,
    Direccion				VARCHAR(50)			NOT NULL,
    Telefono				INT					NOT NULL,
	CorreoElectronico		VARCHAR(50)			NOT NULL,
	CONSTRAINT PK_Empresa PRIMARY KEY (EmpresaID)
	)
GO	