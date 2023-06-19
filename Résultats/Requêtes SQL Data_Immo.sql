/*Il est tout d'abord intéressant de noter qu'une vue nommée "alltables" a été créée.
Elle contient toutes les tables réunies dans une seule table.
Cela permettra d'avoir facilement accès aux données tout en réduisant la longueur des requêtes.*/

/*Requête 1 : Nombre total d’appartements vendus au 1er semestre 2020.*/
SELECT COUNT(*) AS "Nombre d'appartements vendus au 1er semestre 2020"
FROM mutations AS M 
	JOIN biens AS B
		ON M.id_mutation = B.id_mutation
WHERE date >= '20200101' AND date < '20200701'
	AND type_local = 'Appartement';
GO
/*Requête 2 : Le nombre de ventes d’appartement par région pour le 1er semestre
2020.*/
SELECT region, COUNT(id_mutation) AS "Appartements vendus au 1er semestre 2020"
FROM alltables
WHERE date >= '20200101' AND date < '20200701'
	AND type_local = 'Appartement'
GROUP BY region
ORDER BY "Appartements vendus au 1er semestre 2020" DESC;
GO
/*Requête 3 : Proportion des ventes d’appartements par le nombre de pièces.*/
SELECT pieces, COUNT(id_mutation) AS "Nombre de ventes",
	100. * COUNT(id_mutation) / SUM(COUNT(id_mutation)) OVER() AS "Pourcentage"
FROM alltables
WHERE type_local = 'Appartement'
GROUP BY pieces
ORDER BY "Nombre de ventes" DESC;
GO
/*Requête 4 : Liste des 10 départements où le prix du mètre carré est le plus élevé.*/
SELECT TOP(10) dep, code_dep,
	ROUND((SUM(valeur) / SUM(surface)),2) AS "Prix au m²"
FROM alltables
GROUP BY dep, code_dep
ORDER BY "Prix au m²" DESC;
GO
/*Requête 5 : Prix moyen du mètre carré d’une maison en Île-de-France.*/
SELECT region, 
	ROUND((SUM(valeur) / SUM(surface)),2) AS "Prix moyen au m² d'une maison"
FROM alltables
WHERE type_local = 'Maison' AND region = 'ILE-DE-FRANCE'
GROUP BY region;
GO
/*Requête 6 : Liste des 10 appartements les plus chers avec la région et le nombre
de mètres carrés.*/
SELECT TOP(10) WITH TIES adresse, code_postal, nom_com, region, valeur,type_local, surface, YEAR(date) AS annee
FROM alltables
ORDER BY valeur DESC;
GO
/*Requête 7 : Taux d’évolution du nombre de ventes entre le premier et le second
trimestre de 2020.*/
WITH
taux_1 AS(
	SELECT COUNT(id_mutation) AS n1
	FROM alltables
	WHERE date >= '20200101' AND date < '20200701'),
taux_2 AS(
	SELECT COUNT(id_mutation) AS n2
	FROM alltables
	WHERE date >= '20200701' AND date < '20210101')
SELECT ROUND((100. *(n2-n1) / n1),2) AS "Taux d'évolution des ventes entre le 1er et 2e semestre 2020"
FROM taux_1,taux_2
GO
/*Requête 8 : Le classement des régions par rapport au prix au mètre carré des
appartement de plus de 4 pièces.*/
SELECT region, 
	ROUND((SUM(valeur) / SUM(surface)),2) AS "Prix moyen au m²",
	DENSE_RANK() OVER(ORDER BY ROUND((SUM(valeur) / SUM(surface)),2) DESC) AS "Classement"
FROM alltables
WHERE type_local = 'Appartement' AND pieces >= 4
GROUP BY region;
GO
/*Requête 9 : Liste des communes ayant eu au moins 50 ventes au 1er trimestre de 2020*/
SELECT nom_com, COUNT(id_mutation) AS "Nombre de ventes"
FROM alltables
WHERE MONTH(date) >= 1 AND MONTH(date) < 7 AND YEAR(date) = 2022
GROUP BY nom_com
HAVING COUNT(id_mutation) >= 50
ORDER BY [Nombre de ventes] DESC;
GO
/*Requête 10 : Différence en pourcentage du prix au mètre carré entre un
appartement de 2 pièces et un appartement de 3 pièces.*/
WITH
taux_2 AS(
	SELECT ROUND((SUM(valeur) / SUM(surface)),2) AS p2
	FROM alltables
	WHERE type_local = 'Appartement' AND pieces = 2),
taux_3 AS(
	SELECT ROUND((SUM(valeur) / SUM(surface)),2) AS p3
	FROM alltables
	WHERE type_local = 'Appartement' AND pieces = 3)
SELECT ROUND((100. *(p3-p2) / p2),2) AS "Variance entre un appartement de 2 pièces et un appartement de 3 pièces"
FROM taux_2,taux_3;
GO
/*Requête 11 : Les moyennes des valeurs foncières pour le top 3 des communes des
départements 6, 13, 33, 59 et 69.*/
WITH
ranking AS(
	SELECT dep, code_dep, nom_com,
		ROUND(AVG(valeur),2) AS valeur_moyenne,
		DENSE_RANK() OVER(PARTITION BY code_dep ORDER BY ROUND(AVG(valeur),2) DESC) AS classement
	FROM alltables
	WHERE code_dep IN ('6', '13', '33', '59', '69')
	GROUP BY dep, code_dep, nom_com)
SELECT *
FROM ranking
WHERE classement <= 3;
GO

