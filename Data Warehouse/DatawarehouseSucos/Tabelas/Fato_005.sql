CREATE TABLE [dbo].[Fato_005]
(
    [Cod_Produto] NVARCHAR(50) NOT NULL, 
    [Cod_Fabrica] NVARCHAR(50) NOT NULL, 
    [Cod_Dia] NVARCHAR(50) NOT NULL, 
    [Meta_Custo] FLOAT NULL, 
    
    PRIMARY KEY ([Cod_Produto], [Cod_Fabrica], [Cod_Dia]), 
    CONSTRAINT [FK_Fato_005_Dim_Produto] FOREIGN KEY ([Cod_Produto]) REFERENCES [Dim_Produto]([Cod_Produto]),
    CONSTRAINT [FK_FATO_005_Dim_Fabrica] FOREIGN KEY ([Cod_Fabrica]) REFERENCES [Dim_Fabrica]([Cod_Fabrica]),
    CONSTRAINT [FK_FATO_005_Dim_Tempo] FOREIGN KEY ([Cod_Dia]) REFERENCES [Dim_Tempo]([Cod_Dia])
)