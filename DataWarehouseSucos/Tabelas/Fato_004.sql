CREATE TABLE [dbo].[Fato_004]
(
	[Cod_Cliente] NVARCHAR(50) NOT NULL , 
    [Cod_Produto] NVARCHAR(50) NOT NULL, 
    [Cod_Organizacional] NVARCHAR(50) NOT NULL, 
    [Cod_Dia] NVARCHAR(50) NOT NULL, 
    [Meta_Faturamento] FLOAT NULL, 
    PRIMARY KEY ([Cod_Cliente], [Cod_Dia], [Cod_Produto], [Cod_Organizacional]), 
    CONSTRAINT [FK_Cliente_Fato_004] FOREIGN KEY ([Cod_Cliente]) REFERENCES [Dim_Cliente]([Cod_Cliente]), 
    CONSTRAINT [FK_Produto_Fato_004] FOREIGN KEY ([Cod_Produto]) REFERENCES [Dim_Produto]([Cod_Produto]), 
    CONSTRAINT [FK_Organizacional_Fato_004] FOREIGN KEY ([Cod_Organizacional]) REFERENCES [Dim_Organizacional]([Cod_Filho]), 
    CONSTRAINT [FK_Tempo_Fato_004] FOREIGN KEY ([Cod_Dia]) REFERENCES [Dim_Tempo]([Cod_Dia])
)
