CREATE TABLE ##B
( ID INT NOT NULL IDENTITY PRIMARY KEY,
  Name NVARCHAR(50) NOT NULL
)

INSERT INTO ##B VALUES ('Deneme')

SELECT * FROM ##B