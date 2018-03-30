CREATE TABLE [dbo].[ruta] (
    [id]            INT           IDENTITY (1, 1) NOT NULL,
    [codRuta]       VARCHAR (2)   DEFAULT ('') NOT NULL,
    [descripcion]   VARCHAR (100) DEFAULT ('') NOT NULL,
    [marca]         VARCHAR (100) DEFAULT ('') NOT NULL,
    [placa]         VARCHAR (100) DEFAULT ('') NOT NULL,
    [movil]         VARCHAR (100) DEFAULT ('') NOT NULL,
    [capacidad]     INT           DEFAULT ((1)) NOT NULL,
    [estudiante]    INT           DEFAULT ((1)) NOT NULL,
    [institucionId] INT           NOT NULL,
    [monitorId]     INT           NOT NULL,
    [conductorId]   INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([conductorId]) REFERENCES [dbo].[usuario] ([id]),
    FOREIGN KEY ([institucionId]) REFERENCES [dbo].[institucion] ([id]),
    FOREIGN KEY ([monitorId]) REFERENCES [dbo].[usuario] ([id])
);

