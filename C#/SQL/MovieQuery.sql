use testdb

CREATE TABLE[dbo].[movie](
[ID][int]NOT NULL,[Title][varchar](20)NOT NULL,
[Language][varchar](20)NOT NULL,[Hero][varchar](20)NOT NULL,[Director][varchar](20)NOT NULL,[MusicDirector][varchar](20)NOT NULL,
[ReleaseDate][DateTime]NOT NULL,[Cost][int]NOT NULL,[Collection][int]NOT NULL,[Review][varchar](20)
CONSTRAINT[PK_movie]PRIMARY KEY CLUSTERED([ID]ASC));

Select * From movie