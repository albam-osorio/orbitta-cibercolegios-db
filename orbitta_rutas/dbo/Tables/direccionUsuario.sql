CREATE TABLE [dbo].[direccionUsuario] (
    [id]           INT            IDENTITY (1, 1) NOT NULL,
    [descripcion]  VARCHAR (100)  DEFAULT ('') NOT NULL,
    [ubicacionLat] DECIMAL (9, 6) DEFAULT ((0)) NOT NULL,
    [ubicacionLon] DECIMAL (9, 6) DEFAULT ((0)) NOT NULL,
    [ubicacionGeo] DECIMAL (9, 6) DEFAULT ((0)) NULL,
    [usuarioId]    INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([usuarioId]) REFERENCES [dbo].[usuario] ([id])
);

