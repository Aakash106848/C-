use testdb;

CREATE TABLE[dbo].[emptbl_x](
[eno][int]NOT NULL,[name][varchar](20)NOT NULL,
[salary][numeric](18,0)NOT NULL,[city][varchar](20)NOT NULL,
CONSTRAINT[PK_emptbl]PRIMARY KEY CLUSTERED([eno]ASC));
ALTER TABLE[dbo].[emptbl_x] WITH CHECK ADD CONSTRAINT[CK_emptb;_City]CHECK(([city]='Chennai'OR[city]='Bgl'))