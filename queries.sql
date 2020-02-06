/* link of the exercise: https://www.w3resource.com/sql-exercises/sql-retrieve-from-table.php   */


12. select * from nobel_win where YEAR = 1970;

13. select * from nobel_win where YEAR = 1971 and SUBJECT='Literature';

14. select YEAR, SUBJECT from nobel_win where WINNER='Dennis Gabor';

15. select WINNER FROM nobel_win WHERE YEAR >=1950 AND SUBJECT='Physics';

16. SELECT YEAR,SUBJECT,WINNER,COUNTRY FROM nobel_win WHERE SUBJECT='Chemistry' AND (YEAR>=1965 AND YEAR<=1975);

18. SELECT * FROM nobel_win WHERE WINNER LIKE 'Louis%';

19. SELECT * FROM nobel_win WHERE (SUBJECT='Physics' AND YEAR=1970) OR 
	(SUBJECT='Economics' AND YEAR=1971);

20. solution 1: SELECT WINNER FROM nobel_win WHERE YEAR=1970 AND SUBJECT NOT IN('Physiology', 'Economics');
	solution 2: SELECT * FROM nobel_win WHERE YEAR=1970 AND (SUBJECT != 'Physiology' and SUBJECT != 'Economics');

21. (SELECT WINNER FROM noble_win WHERE (SUBJECT='Physiology' AND YEAR<1971)) 
	UNION	
	(SELECT WINNER FROM noble_win WHERE (SUBJECT='Peace' AND YEAR>1974));

22. SELECT * FROM nobel_win WHERE WINNER='Johannes Georg Bednorz';

23. SELECT * FROM nobel_win WHERE SUBJECT NOT LIKE 'P%' ORDER BY YEAR, WINNER;

24. SELECT * FROM nobel_win WHERE 
	(YEAR=1970 AND SUBJECT IN ('Economics', 'Chemistry')) OR BY SUBJECT, WINNER;

25. SELECT * FROM item_mast WHERE PRO_PRICE BETWEEN 200 AND 600 ORDER BY PRO_PRICE;

26. SELECT PRO_ID, PRO_NAME, AVERAGE(PRO_PRICE) AS PRICE FROM item_mast WHERE PRO_COM = 16;

27. SELECT PRO_NAME, PRO_PRICE FROM item_mast;

28. SELECT PRO_NAME, PRO_PRICE FROM item_mast WHERE PRO_PRICE>249 ORDER BY PRO_PRICE DESC, PRO_NAME;
