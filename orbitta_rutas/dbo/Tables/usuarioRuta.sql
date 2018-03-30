CREATE TABLE [dbo].[usuarioRuta] (
    [id]                 INT           IDENTITY (1, 1) NOT NULL,
    [fecha]              DATETIME2 (0) DEFAULT (sysdatetime()) NULL,
    [usuarioId]          INT           NOT NULL,
    [rutaId]             INT           NOT NULL,
    [direccionUsuarioId] INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([direccionUsuarioId]) REFERENCES [dbo].[direccionUsuario] ([id]),
    FOREIGN KEY ([rutaId]) REFERENCES [dbo].[ruta] ([id]),
    FOREIGN KEY ([usuarioId]) REFERENCES [dbo].[usuario] ([id])
);

