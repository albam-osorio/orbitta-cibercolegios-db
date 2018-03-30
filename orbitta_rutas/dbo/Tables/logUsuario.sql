CREATE TABLE [dbo].[logUsuario] (
    [id]            INT           IDENTITY (1, 1) NOT NULL,
    [fecha]         DATETIME2 (0) DEFAULT (sysdatetime()) NULL,
    [logId]         INT           NOT NULL,
    [usuarioRutaId] INT           NOT NULL,
    [estadoId]      INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([estadoId]) REFERENCES [dbo].[estado] ([id]),
    FOREIGN KEY ([logId]) REFERENCES [dbo].[log] ([id]),
    FOREIGN KEY ([usuarioRutaId]) REFERENCES [dbo].[usuarioRuta] ([id])
);

