CREATE TABLE [dbo].[perfil] (
    [id]            INT IDENTITY (1, 1) NOT NULL,
    [tipoPerfilId]  INT DEFAULT ((1)) NOT NULL,
    [usuarioId]     INT NOT NULL,
    [perfilPadreId] INT NOT NULL,
    [perfilMadreId] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([perfilMadreId]) REFERENCES [dbo].[perfil] ([id]),
    FOREIGN KEY ([perfilPadreId]) REFERENCES [dbo].[perfil] ([id]),
    FOREIGN KEY ([tipoPerfilId]) REFERENCES [dbo].[tipoPerfil] ([id]),
    FOREIGN KEY ([usuarioId]) REFERENCES [dbo].[usuario] ([id])
);

