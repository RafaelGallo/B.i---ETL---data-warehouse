CREATE TABLE [dbo].[Fato_001]
(
	[Cod_Cliente] NVARCHAR(50) NOT NULL , 
    [Cod_Produto] NVARCHAR(50) NOT NULL, 
    [Cod_Organizacional] NVARCHAR(50) NOT NULL, 
    [Cod_Fabrica] NVARCHAR(50) NOT NULL, 
    [Cod_Dia] NVARCHAR(50) NOT NULL, 
    [Faturamento] FLOAT NULL, 
    [Imposto] FLOAT NULL, 
    [Custo_Variavel] FLOAT NULL, 
    [Quantidade_Vendida] FLOAT NULL, 
    [Unidade_Vendida] FLOAT NULL, 
    PRIMARY KEY ([Cod_Cliente], [Cod_Produto], [Cod_Organizacional], [Cod_Fabrica], [Cod_Dia]), 
    CONSTRAINT [FK_Fato_001_Dim_Cliente] FOREIGN KEY ([Cod_Cliente]) REFERENCES [Dim_Cliente]([Cod_Cliente]), 
    CONSTRAINT [FK_Fato_001_Dim_Produto] FOREIGN KEY ([Cod_Produto]) REFERENCES [Dim_Produto]([Cod_Produto]),
    CONSTRAINT [FK_Fato_001_Dim_Organizacional] FOREIGN KEY ([Cod_Organizacional]) REFERENCES [Dim_Organizacional]([Cod_Filho]),
    CONSTRAINT [FK_FATO_001_Dim_Fabrica] FOREIGN KEY ([Cod_Fabrica]) REFERENCES [Dim_Fabrica]([Cod_Fabrica]),
    CONSTRAINT [FK_FATO_001_Dim_Tempo] FOREIGN KEY ([Cod_Dia]) REFERENCES [Dim_Tempo]([Cod_Dia])


)
