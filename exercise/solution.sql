SELECT
  id,
  name
FROM product p
WHERE (SELECT count(*)
       FROM (SELECT detail_id
             FROM supply
             WHERE product_id = 3 EXCEPT SELECT detail_id
                                         FROM supply
                                         WHERE product_id = p.id) AS details_except) = 0;