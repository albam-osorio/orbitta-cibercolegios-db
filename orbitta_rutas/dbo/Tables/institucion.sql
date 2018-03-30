CREATE TABLE [dbo].[institucion] (
    [id]          INT           IDENTITY (1, 1) NOT NULL,
    [descripcion] VARCHAR (100) DEFAULT ('') NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

