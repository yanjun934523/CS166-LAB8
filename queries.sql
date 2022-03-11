--Yanjun Guan SID:862153327
SELECT COUNT(*)
FROM part_nyc P
WHERE P.on_hand > 70;


SELECT SUM(
	(SELECT COUNT(P1.on_hand, P2.on_hand)
	FROM part_nyc P1, part_sfo P2, color C
	WHERE(P1.color = C.color_id AND C.color_name = 'RED') 
	OR 
	(P2.color = C.color_id AND C.color_name = 'RED'));


SELECT S.supplier_id, S.supplier_name
FROM supplier S
WHERE(SELECT COUNT(P1.on_hand)
FROM part_nyc P1
WHERE S.supplier_id = P1.supplier)
>
(SELECT COUNT(P2.on_hand)
FROM part_nyc P2
WHERE S.supplier_id = P2.supplier)
GROUP BY S.supplier_name


SELECT DISTINCT S.supplier_id, S.supplier_name
FROM supplier S, part_nyc P1
WHERE S.supplier_id = P1.supplier AND P1.part_number IN
	( SELECT P1.part_number
	FROM supplier S, part_nyc P1
	WHERE S.supplier_id = P1.supplier
	EXCEPT
	SELECT P2.part_number
	FROM supplier S, part_sfo P2
	WHERE S.supplier_id = P2.supplier)
GROUP BY S.supplier_name;


UPDATE part_nyc P1
SET P1.on_hand = P1.on_hand -10 
WHERE P1.on_hand >=10;


DELETE FROM part_nyc P1
WHERE P1.on_hand < 30;
