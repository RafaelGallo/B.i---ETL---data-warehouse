CREATE TABLE [dbo].[Fato_004]
(
	[Cod_Cliente] NVARCHAR(50) NOT NULL , 
    [Cod_Produto] NVARCHAR(50) NOT NULL, 
    [Cod_Organizacional] NVARCHAR(50) NOT NULL,  
    [Cod_Dia] NVARCHAR(50) NOT NULL, 
    [Meta_Faturamento] FLOAT NULL,

    PRIMARY KEY ([Cod_Cliente], [Cod_Produto], [Cod_Organizacional], [Cod_Dia]), 
    CONSTRAINT [FK_Fato_004_Dim_Cliente] FOREIGN KEY ([Cod_Cliente]) REFERENCES [Dim_Cliente]([Cod_Cliente]), 
    CONSTRAINT [FK_Fato_004_Dim_Produto] FOREIGN KEY ([Cod_Produto]) REFERENCES [Dim_Produto]([Cod_Produto]),
    CONSTRAINT [FK_Fato_004_Dim_Organizacional] FOREIGN KEY ([Cod_Organizacional]) REFERENCES [Dim_Organizacional]([Cod_Filho]),
    CONSTRAINT [FK_FATO_004_Dim_Tempo] FOREIGN KEY ([Cod_Dia]) REFERENCES [Dim_Tempo]([Cod_Dia])


)
