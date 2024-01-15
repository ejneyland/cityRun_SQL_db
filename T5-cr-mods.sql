--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T5-cr-mods.sql

-- ITO Assignment 2 Task 5

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

ALTER TABLE entry
    ADD CONSTRAINT 
        comp_one_event_constraint 
    UNIQUE 
        (comp_no, carn_date);

COMMIT;

 
/*
(b)
*/

ALTER TABLE entry
    ADD elapsed_time NUMBER(8,2);
    
COMMENT ON COLUMN entry.elapsed_time IS
    'Elapsed Time in Minutes (to 2dp)';
    
UPDATE 
    entry
SET
    elapsed_time = ROUND((entry_finishtime - entry_starttime) * 24 * 60, 2)
WHERE
    entry_starttime IS NOT NULL 
    AND entry_finishtime IS NOT NULL;

UPDATE 
    entry
SET
    elapsed_time = 0
WHERE
    entry_starttime IS NULL OR entry_finishtime IS NULL;

COMMIT;


/*
(c)
*/

-- removes ec relation constraint from competitor, so it can be used in COMPEC
ALTER TABLE competitor
    DROP CONSTRAINT check_ecrelationship;

DROP TABLE compec CASCADE CONSTRAINTS;

-- creates new join table relation, between competitor and emercontact
CREATE TABLE compec (
    comp_no                 NUMBER(5) NOT NULL,
    ec_phone                CHAR(10) NOT NULL,
    comp_ec_relationship    CHAR(1) NOT NULL
);

-- FK to COMPETITOR via comp_no
ALTER TABLE compec
    ADD CONSTRAINT compec_comp_fk FOREIGN KEY ( comp_no )
        REFERENCES competitor ( comp_no );

-- FK to EMERCONTACT via ec_phone         
ALTER TABLE compec
    ADD CONSTRAINT compec_ec_fk FOREIGN KEY ( ec_phone )
        REFERENCES emercontact ( ec_phone );
    
-- CHECK ensures valid relationship CHAR     
ALTER TABLE compec
    ADD CONSTRAINT check_compecrel 
        CHECK ( comp_ec_relationship IN ( 'F', 'G', 'P', 'T' ) );      
  
COMMENT ON COLUMN compec.comp_ec_relationship IS
    'Emergency contact relationship to competitor (P or  T or G or F)
        P = Parent
        T = Partner
        G = Guardian
        F = Friend';  

COMMIT;

-- populates COMPEC table with ec values from the competitor table        
INSERT INTO compec (
    comp_no, 
    ec_phone, 
    comp_ec_relationship
)
SELECT 
    comp_no, ec_phone, comp_ec_relationship
FROM 
    competitor;

-- removes relo value from competitor, as its now stored in COMPEC 
ALTER TABLE competitor
    DROP COLUMN comp_ec_relationship;

-- renames ec_phone to indicate it is the 1st ec    
ALTER TABLE competitor
    RENAME COLUMN ec_phone TO ec_phone_one;

-- adds 2nd ec to competitor value, which is optional (can be null)
-- more than 2 ec can be created per comp, but only 2 stored in comp table,
-- any additional ec accessible in COMPEC table, by querying comp_no
ALTER TABLE competitor
    ADD ec_phone_two CHAR(10);
    
COMMENT ON COLUMN competitor.ec_phone_two IS
    'Secondary emergency contact phone number';

-- ec_phone FK set for 2nd ec column        
ALTER TABLE competitor
    ADD CONSTRAINT comp_ec_two_fk FOREIGN KEY (ec_phone_two)
        REFERENCES emercontact(ec_phone);
        
COMMIT;