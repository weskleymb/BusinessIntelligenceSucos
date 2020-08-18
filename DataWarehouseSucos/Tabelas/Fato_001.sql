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
    PRIMARY KEY ([Cod_Cliente], [Cod_Dia], [Cod_Produto], [Cod_Organizacional], [Cod_Fabrica]), 
    CONSTRAINT [FK_Cliente_Fato_001] FOREIGN KEY ([Cod_Cliente]) REFERENCES [Dim_Cliente]([Cod_Cliente]), 
    CONSTRAINT [FK_Produto_Fato_001] FOREIGN KEY ([Cod_Produto]) REFERENCES [Dim_Produto]([Cod_Produto]), 
    CONSTRAINT [FK_Organizacional_Fato_001] FOREIGN KEY ([Cod_Organizacional]) REFERENCES [Dim_Organizacional]([Cod_Filho]), 
    CONSTRAINT [FK_Fabrica_Fato_001] FOREIGN KEY ([Cod_Fabrica]) REFERENCES [Dim_Fabrica]([Cod_Fabrica]), 
    CONSTRAINT [FK_Tempo_Fato_001] FOREIGN KEY ([Cod_Dia]) REFERENCES [Dim_Tempo]([Cod_Dia])
)
