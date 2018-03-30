CREATE TABLE [dbo].[ubicacionRuta] (
    [id]           INT            IDENTITY (1, 1) NOT NULL,
    [fecha]        DATETIME2 (0)  DEFAULT (sysdatetime()) NULL,
    [ubicacionLat] DECIMAL (9, 6) DEFAULT ((0)) NOT NULL,
    [ubicacionLon] DECIMAL (9, 6) DEFAULT ((0)) NOT NULL,
    [ubicacionGeo] DECIMAL (9, 6) DEFAULT ((0)) NULL,
    [sentido]      INT            DEFAULT ((1)) NOT NULL,
    [rutaId]       INT            NOT NULL,
    [estadoId]     INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([estadoId]) REFERENCES [dbo].[estado] ([id]),
    FOREIGN KEY ([rutaId]) REFERENCES [dbo].[ruta] ([id])
);

