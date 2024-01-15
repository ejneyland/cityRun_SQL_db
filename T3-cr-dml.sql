--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T3-cr-dml.sql

-- ITO Assignment 2 Task 3

--Student ID:      27932273
--Student Name:    Ethan Neyland

/* Comments for your marker: 




*/

-- ENSURE that your SQL code is formatted and has a semicolon (;)
-- at the end of every statement. When marked this will be run as
-- a script.


/*
(a)
*/

-- Drop Sequences
DROP SEQUENCE competitor_seq;
DROP SEQUENCE entry_seq;
DROP SEQUENCE team_seq;

-- COMPETITOR_SEQ create
CREATE SEQUENCE competitor_seq START WITH 100 INCREMENT BY 1;

-- ENTRY_SEQ create
CREATE SEQUENCE entry_seq START WITH 100 INCREMENT BY 1;

-- TEAM_SEQ create
CREATE SEQUENCE team_seq START WITH 100 INCREMENT BY 1;


/*
(b) 
*/

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    entry_seq.NEXTVAL,
    NULL,
    NULL,
    (
        SELECT char_name
        FROM charity
        WHERE UPPER(char_name) = UPPER('Amnesty International')
    ),
    (
        SELECT
            comp_no
        FROM
            competitor
        WHERE
            comp_phone = '1234567890'
    ),
    (
        SELECT 
            carn_date
        FROM 
            carnival
        WHERE 
            UPPER(carn_name) = UPPER('CR Summer Series Melbourne 2024')
    ),
    (
        SELECT eventtype_code
        FROM event
        WHERE
            eventtype_code = '21K'
            AND carn_date = (
                SELECT carn_date
                FROM carnival
                WHERE
                    UPPER(carn_name) = UPPER('CR Summer Series Melbourne 2024')
            )
    
    ),
    NULL
);

COMMIT;


/*
(c)
*/

INSERT INTO team (
    team_id,
    team_name,
    carn_date, 
    team_no_members,
    char_name,
    entry_id
) VALUES (
    team_seq.NEXTVAL,
    'Kenya Speedsters',
    (
        SELECT 
            carn_date
        FROM 
            carnival
        WHERE 
            UPPER(carn_name) = UPPER('CR Summer Series Melbourne 2024')
    ),
    1,
    (
        SELECT char_name
        FROM charity
        WHERE UPPER(char_name) = UPPER('Beyond Blue')
    ),
    (
        SELECT
            entry_id
        FROM
            ENTRY
        WHERE
            comp_no = (
                SELECT comp_no
                FROM competitor
                WHERE comp_phone = '1234567890'
            )
            AND carn_date = (
                SELECT carn_date
                FROM entry
                WHERE carn_date = (
                    SELECT carn_date
                    FROM carnival
                    WHERE UPPER(carn_name) = UPPER('CR Summer Series Melbourne 2024')
                )
            )
    )
);

COMMIT;

UPDATE entry
SET
    eventtype_code = '10K',
    team_id = (
        SELECT team_id
        FROM team
        WHERE 
            UPPER(team_name) = UPPER('Kenya Speedsters')
            AND carn_date = (
                SELECT carn_date
                FROM carnival
                WHERE UPPER(carn_name) = UPPER('CR Summer Series Melbourne 2024')
            )
    )
WHERE
    comp_no = (
        SELECT comp_no
        FROM competitor
        WHERE comp_phone = '1234567890'
    )
    AND carn_date = (
        SELECT carn_date
        FROM carnival
        WHERE UPPER(carn_name) = UPPER('CR Summer Series Melbourne 2024') 
    );

 
COMMIT;


/*
(d) 
*/ 

UPDATE entry
SET team_id = NULL
WHERE team_id = (
    SELECT team_id
    FROM team
    WHERE UPPER(team_name) = UPPER('Kenya Speedsters')
        AND carn_date = (
            SELECT carn_date
            FROM carnival
            WHERE UPPER(carn_name) = UPPER('CR Summer Series Melbourne 2024')
        )
);
    
COMMIT;

DELETE FROM team
WHERE 
    UPPER(team_name) = UPPER('Kenya Speedsters')
    AND carn_date = (
        SELECT carn_date
        FROM carnival
        WHERE UPPER(carn_name) = UPPER('CR Summer Series Melbourne 2024')
    );

DELETE FROM entry
WHERE 
    comp_no = (
        SELECT comp_no
        FROM competitor
        WHERE comp_phone = '1234567890'
    )
    AND carn_date = (
        SELECT carn_date
        FROM carnival
        WHERE UPPER(carn_name) = UPPER('CR Summer Series Melbourne 2024')
    );

COMMIT;



    

