CREATE TABLE [dbo].[usuario] (
    [id]        INT           IDENTITY (1, 1) NOT NULL,
    [nombre1]   VARCHAR (100) DEFAULT ('') NOT NULL,
    [nombre2]   VARCHAR (100) DEFAULT ('') NOT NULL,
    [apellido1] VARCHAR (100) DEFAULT ('') NOT NULL,
    [apellido2] VARCHAR (100) DEFAULT ('') NOT NULL,
    [correo]    VARCHAR (100) DEFAULT ('') NOT NULL,
    [sexo]      INT           DEFAULT ((1)) NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

