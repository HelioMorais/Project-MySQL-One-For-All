SELECT 
    MIN(p.plan_price) AS faturamento_minimo,
    MAX(p.plan_price) AS faturamento_maximo,
    ROUND(AVG(p.plan_price),2) AS faturamento_medio,
    SUM(p.plan_price) AS faturamento_total
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.plan AS p
ON u.plan_id = p.plan_id;