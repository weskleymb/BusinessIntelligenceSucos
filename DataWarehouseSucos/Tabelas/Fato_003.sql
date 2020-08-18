CREATE TABLE [dbo].[Fato_003]
(
	[Cod_Fabrica] NVARCHAR(50) NOT NULL , 
    [Cod_Dia] NVARCHAR(50) NOT NULL, 
    [Custo_Fixo] FLOAT NULL, 
    PRIMARY KEY ([Cod_Dia], [Cod_Fabrica]), 
    CONSTRAINT [FK_Fabrica_Fato_003] FOREIGN KEY ([Cod_Fabrica]) REFERENCES [Dim_Fabrica]([Cod_Fabrica]), 
    CONSTRAINT [FK_Tempo_Fato_003] FOREIGN KEY ([Cod_Dia]) REFERENCES [Dim_Tempo]([Cod_Dia])
)
