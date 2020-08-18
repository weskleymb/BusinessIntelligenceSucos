CREATE TABLE [dbo].[Fato_005]
(
	[Cod_Produto] NVARCHAR(50) NOT NULL , 
    [Cod_Fabrica] NVARCHAR(50) NOT NULL, 
    [Cod_Dia] NVARCHAR(50) NOT NULL, 
    [Meta_Custo] FLOAT NULL, 
    PRIMARY KEY ([Cod_Dia], [Cod_Produto], [Cod_Fabrica]), 
    CONSTRAINT [FK_Produto_Fato_005] FOREIGN KEY ([Cod_Produto]) REFERENCES [Dim_Produto]([Cod_Produto]), 
    CONSTRAINT [FK_Fabrica_Fato_005] FOREIGN KEY ([Cod_Fabrica]) REFERENCES [Dim_Fabrica]([Cod_Fabrica]), 
    CONSTRAINT [FK_Tempo_Fato_005] FOREIGN KEY ([Cod_Dia]) REFERENCES [Dim_Tempo]([Cod_Dia])
)
