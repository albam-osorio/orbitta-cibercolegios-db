CREATE TABLE [dbo].[mensajeRuta] (
    [id]            INT           IDENTITY (1, 1) NOT NULL,
    [fecha]         DATETIME2 (0) DEFAULT (sysdatetime()) NULL,
    [mensaje]       VARCHAR (200) DEFAULT ('') NOT NULL,
    [origenMensaje] INT           DEFAULT ((1)) NOT NULL,
    [padreId]       INT           NOT NULL,
    [monitorId]     INT           NOT NULL,
    [rutaId]        INT           NOT NULL,
    [estadoId]      INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([estadoId]) REFERENCES [dbo].[estado] ([id]),
    FOREIGN KEY ([monitorId]) REFERENCES [dbo].[usuario] ([id]),
    FOREIGN KEY ([padreId]) REFERENCES [dbo].[usuario] ([id]),
    FOREIGN KEY ([rutaId]) REFERENCES [dbo].[ruta] ([id])
);

