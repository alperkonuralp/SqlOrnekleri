WITH Yillar AS (
    SELECT 2000 AS Yil
    UNION ALL
    SELECT Yillar.Yil + 1
    FROM Yillar
    WHERE Yil<(YEAR(GETDATE())+5)
), 
Aylar AS (
    SELECT 1 AS Ay
    UNION ALL
    SELECT Aylar.Ay + 1
    FROM Aylar
    WHERE Ay < 12
)
SELECT Ay, Yil
FROM Aylar CROSS JOIN Yillar