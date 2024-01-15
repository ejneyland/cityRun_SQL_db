--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T4-cr-queries.sql

-- ITO Assignment 2 Task 4

--Student ID:       27932273
--Student Name:     Ethan Neyland

/* Comments for your marker: 




*/

-- ENSURE that your SQL code is formatted and has a semicolon (;)
-- at the end of every statement. When marked this will be run as
-- a script.


/*
(a)
*/

SELECT
    carn.carn_date AS CARNIVAL_DATE,
    carn.carn_name AS CARNIVAL_NAME,
    et.eventtype_desc AS EVENTTYPE_DESC,
    comp.comp_fname || ' ' || comp.comp_lname AS FULLNAME
FROM
    entry e
JOIN
    carnival carn ON e.carn_date = carn.carn_date
JOIN
    competitor comp ON e.comp_no = comp.comp_no
JOIN
    eventtype et ON e.eventtype_code = et.eventtype_code
WHERE
    UPPER(comp.comp_email) LIKE UPPER('%gmail.com%')
ORDER BY
    carn.carn_date;


/*
(b)
*/
 
-- Updating runners of the 42K to be individual, so there are rows to display
UPDATE entry
SET team_id = NULL
WHERE
    eventtype_code = '42K';

COMMIT;

SELECT
    carn.carn_date AS CARNIVAL_DATE,
    comp.comp_fname || ' ' || comp.comp_lname AS RUNNER,
    ch.char_name AS CHARITY_NAME,
    ch.char_contact AS CHARITY_CONTACT,
    et.eventtype_desc AS EVENTTYPE_DESC
FROM
    entry e
JOIN
    carnival carn ON e.carn_date = carn.carn_date
JOIN
    competitor comp ON e.comp_no = comp.comp_no
JOIN
    charity ch ON e.char_name = ch.char_name
JOIN
    eventtype et ON e.eventtype_code = et.eventtype_code
WHERE
    UPPER(et.eventtype_desc) = UPPER('42.2 Km Marathon')
    AND e.team_id IS NULL
ORDER BY
    carn.carn_date ASC,
    ch.char_name,
    runner;


/*
(c)
*/

SELECT
    c.comp_no AS COMPNO,
    c.comp_fname AS COMPFNAME,
    c.comp_lname AS COMPLNAME,
    c.comp_gender AS COMPGENDER,
    COUNT(DISTINCT e.entry_id) AS TWOYRSBACK,
    COUNT(DISTINCT f.entry_id) AS LASTCALYEAR,
    CASE 
        WHEN COUNT(DISTINCT g.entry_id) = 0 THEN
            'COMPLETED NO RUNS'
        ELSE 
            TO_CHAR(COUNT(DISTINCT g.entry_id))   
    END AS LASTTWOCALYEARS
FROM
    competitor c
LEFT JOIN
    entry e ON c.comp_no = e.comp_no AND e.carn_date BETWEEN TRUNC(SYSDATE, 'YEAR') - INTERVAL '2' YEAR AND TRUNC(SYSDATE, 'YEAR') - INTERVAL '1' YEAR
LEFT JOIN
    entry f ON c.comp_no = f.comp_no AND f.carn_date BETWEEN TRUNC(SYSDATE, 'YEAR') - INTERVAL '1' YEAR AND TRUNC(SYSDATE, 'YEAR')
LEFT JOIN
    entry g ON c.comp_no = g.comp_no AND g.carn_date BETWEEN TRUNC(SYSDATE, 'YEAR') - INTERVAL '2' YEAR AND TRUNC(SYSDATE, 'YEAR')
GROUP BY
    c.comp_no, c.comp_fname, c.comp_lname, c.comp_gender
ORDER BY
    CASE
        WHEN LASTTWOCALYEARS = 'COMPLETED NO RUNS' THEN 0
        ELSE 1
    END,
    LASTTWOCALYEARS DESC,
    c.comp_no;


/*
(d) 
*/

SELECT
    TO_CHAR(c.carn_date, 'DD-Mon-YYYY') AS CARNIVAL_DATE,
    c.carn_name AS CARNNAME,
    COUNT(e.entry_id) AS TOTAL_ENTRIES5KM
FROM
    carnival c
JOIN 
    entry e ON c.carn_date = e.carn_date
WHERE
    c.carn_date BETWEEN TO_DATE('01-Jan-2023', 'DD-Mon-YYYY') 
    AND TO_DATE('31-Dec-2023', 'DD-Mon-YYYY')
    AND e.eventtype_code = '5K'
GROUP BY
    c.carn_date, c.carn_name
ORDER BY
    TOTAL_ENTRIES5KM DESC,
    CARNIVAL_DATE;


/* 
(e) 
*/ 

SELECT
    carn.carn_date AS CARNIVAL_DATE,
    carn.carn_name AS CARNNAME,
    et.eventtype_desc AS EVENTTYPEDESC
FROM
    carnival carn
JOIN
    event e ON e.carn_date = carn.carn_date
JOIN
    eventtype et ON et.eventtype_code = e.eventtype_code
LEFT JOIN
    entry ent ON ent.carn_date = carn.carn_date AND ent.eventtype_code = et.eventtype_code
WHERE
    ent.entry_id IS NULL
ORDER BY
    CARNIVAL_DATE,
    EVENTTYPEDESC;


/*
(f)
*/

SELECT 
    t.team_name AS TEAMNAME, 
    t.carn_date AS CARNIVALDATE, 
    TO_CHAR(c.comp_no, 'FM0000') || ' ' || c.comp_fname || ' ' || 
        c.comp_lname AS TEAMLEADER, 
    t.team_no_members AS TEAMNOMEMBERS
FROM 
    team t
JOIN 
    competitor c ON t.entry_id = c.comp_no
GROUP BY 
    t.team_name, t.carn_date, t.team_no_members, c.comp_no, c.comp_fname, c.comp_lname
ORDER BY 
    TEAMNAME, 
    CARNIVALDATE;
