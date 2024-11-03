-- 1. Jointure Interne (INNER JOIN)
-- Récupère les enregistrements qui ont des valeurs correspondantes dans les deux tables.

SELECT a.colonne1, b.colonne2
FROM table_a a
INNER JOIN table_b b ON a.id = b.id_a;

-- 2. Jointure Externe (LEFT JOIN ou LEFT OUTER JOIN)
-- Récupère tous les enregistrements de la table de gauche et les enregistrements correspondants de la table de droite. Si aucune correspondance n'est trouvée, les résultats de la table de droite seront NULL.


SELECT a.colonne1, b.colonne2
FROM table_a a
LEFT JOIN table_b b ON a.id = b.id_a;

-- 3. Jointure Externe Droite (RIGHT JOIN ou RIGHT OUTER JOIN)
-- Récupère tous les enregistrements de la table de droite et les enregistrements correspondants de la table de gauche. Si aucune correspondance n'est trouvée, les résultats de la table de gauche seront NULL.
SELECT a.colonne1, b.colonne2
FROM table_a a
RIGHT JOIN table_b b ON a.id = b.id_a;

-- 4. Jointure Complète (FULL JOIN ou FULL OUTER JOIN)
-- Récupère tous les enregistrements lorsque qu'il y a une correspondance dans l'une ou l'autre des tables. Les résultats sans correspondance seront NULL.

SELECT a.colonne1, b.colonne2
FROM table_a a
FULL JOIN table_b b ON a.id = b.id_a;

-- 5. Jointure Croisée (CROSS JOIN)
-- Récupère le produit cartésien des deux tables, c'est-à-dire toutes les combinaisons possibles d'enregistrements.

SELECT a.colonne1, b.colonne2
FROM table_a a
CROSS JOIN table_b b;

-- 6. Jointure avec plusieurs conditions
-- Vous pouvez également ajouter plusieurs conditions à vos jointures.

SELECT a.colonne1, b.colonne2
FROM table_a a
INNER JOIN table_b b ON a.id = b.id_a AND a.date = b.date;
-- Remarques
-- Assurez-vous que les colonnes utilisées dans les conditions de jointure sont indexées si vous travaillez avec de grandes tables pour améliorer les performances.
-- Les jointures peuvent également être combinées dans une seule requête pour des analyses plus complexes.