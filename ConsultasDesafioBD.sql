--Consulta 1
SELECT 
	[Nome],
	[Ano]
FROM [Filmes].[dbo].[Filmes]

--Consulta 2
SELECT *
FROM [Filmes].[dbo].[Filmes]
ORDER BY [Ano]

--Consulta 3
SELECT *
FROM [Filmes].[dbo].[Filmes]
WHERE [Nome] LIKE 'de volta para o futuro'

--Consulta 4
SELECT *
FROM [Filmes].[dbo].[Filmes]
WHERE [Ano] = 1997

--Consulta 5
SELECT *
FROM [Filmes].[dbo].[Filmes]
WHERE [Ano] > 2000

--Consulta 6
SELECT *
FROM [Filmes].[dbo].[Filmes]
WHERE [Duracao] > 100 AND  [Duracao] < 150
ORDER BY [Duracao]

--Consulta 7
SELECT 
	[Ano],
	COUNT(*) [Quantidade]
FROM [Filmes].[dbo].[Filmes]
GROUP BY [Ano]
ORDER BY [Quantidade] DESC

--Consulta 8
SELECT	*
FROM [Filmes].[dbo].[Atores]
WHERE [Genero] = 'M'

--Consulta 9
SELECT	*
FROM [Filmes].[dbo].[Atores]
WHERE [Genero] = 'F'
ORDER BY [PrimeiroNome]

--Consulta 10
SELECT	f.[Nome],
		g.[Genero]
FROM [Filmes].[dbo].[FilmesGenero] fG
INNER JOIN [Filmes].[dbo].[Filmes] f ON f.Id = fG.IdFilme
INNER JOIN [Filmes].[dbo].[Generos] g ON g.Id = fG.IdGenero

--Consulta 11
SELECT	f.[Nome],
		g.[Genero]
FROM [Filmes].[dbo].[FilmesGenero] fG
INNER JOIN [Filmes].[dbo].[Filmes] f ON f.Id = fG.IdFilme
INNER JOIN [Filmes].[dbo].[Generos] g ON g.Id = fG.IdGenero
WHERE g.[Genero] LIKE 'Mistério'

--Consulta 12
SELECT	f.[Nome], 
		a.[PrimeiroNome], 
		a.[UltimoNome],
		eF.[Papel]
FROM [Filmes].[dbo].[ElencoFilme] eF
INNER JOIN [Filmes].[dbo].[Filmes] f ON f.Id = eF.IdFilme
INNER JOIN [Filmes].[dbo].[Atores] a ON a.Id = eF.IdAtor