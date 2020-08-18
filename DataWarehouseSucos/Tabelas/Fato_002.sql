CREATE TABLE [dbo].[Fato_002]
(
	[Cod_Cliente] NVARCHAR(50) NOT NULL , 
    [Cod_Produto] NVARCHAR(50) NOT NULL, 
    [Cod_Fabrica] NVARCHAR(50) NOT NULL, 
    [Cod_Dia] NVARCHAR(50) NOT NULL, 
    [Frete] FLOAT NULL, 
    PRIMARY KEY ([Cod_Cliente], [Cod_Dia], [Cod_Produto], [Cod_Fabrica]), 
    CONSTRAINT [FK_Cliente_Fato_002] FOREIGN KEY ([Cod_Cliente]) REFERENCES [Dim_Cliente]([Cod_Cliente]), 
    CONSTRAINT [FK_Produto_Fato_002] FOREIGN KEY ([Cod_Produto]) REFERENCES [Dim_Produto]([Cod_Produto]), 
    CONSTRAINT [FK_Fabrica_Fato_002] FOREIGN KEY ([Cod_Fabrica]) REFERENCES [Dim_Fabrica]([Cod_Fabrica]), 
    CONSTRAINT [FK_Tempo_Fato_002] FOREIGN KEY ([Cod_Dia]) REFERENCES [Dim_Tempo]([Cod_Dia])
)
