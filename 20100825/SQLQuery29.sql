BEGIN TRAN

DELETE Il

SELECT *
FROM Il (NOLOCK)

COMMIT TRAN 