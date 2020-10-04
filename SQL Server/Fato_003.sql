CREATE TABLE [dbo].[Fato_003]
(

    [Cod_Fabrica] NVARCHAR(50) NOT NULL, 
    [Cod_Dia] NVARCHAR (50) NOT NULL,
    [Custo_Fixo] FLOAT NULL,
    PRIMARY KEY ([Cod_Fabrica], [Cod_Dia]), 
    CONSTRAINT [FK_FATO_003_Dim_Fabrica] FOREIGN KEY ([Cod_Fabrica]) REFERENCES [Dim_Fabrica]([Cod_Fabrica]),
    CONSTRAINT [FK_FATO_003_Dim_Tempo] FOREIGN KEY ([Cod_Dia]) REFERENCES [Dim_Tempo]([Cod_Dia])
)