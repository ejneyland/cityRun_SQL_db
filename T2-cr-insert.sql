--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T2-cr-insert.sql

-- ITO Assignment 2 Task 2

--Student ID:       27932273
--Student Name:     Ethan Neyland

/* Comments for your marker: 




*/


-- ENSURE that your SQL code is formatted and has a semicolon (;)
-- at the end of every statement. When marked this will be run as
-- a script.


-- Insert into ENTRY

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
    1,
    TO_DATE('04/SEP/22 07:30:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('04/SEP/22 08:25:17', 'DD/MON/YY HH24:MI:SS'), 
    'RSPCA', 
    14, 
    TO_DATE('04/SEP/22', 'DD/MON/YY'), 
    '10K', 
    NULL -- 1
);

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
    2, 
    TO_DATE('04/SEP/22 07:30:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('04/SEP/22 08:25:17', 'DD/MON/YY HH24:MI:SS'), 
    'RSPCA', 
    9, 
    TO_DATE('04/SEP/22', 'DD/MON/YY'), 
    '10K', 
    NULL -- 1
);

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
    3, 
    TO_DATE('04/SEP/22 07:30:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('04/SEP/22 08:24:51', 'DD/MON/YY HH24:MI:SS'), 
    'RSPCA', 
    6, 
    TO_DATE('04/SEP/22', 'DD/MON/YY'), 
    '10K', 
    NULL -- 1
);

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
    4, 
    TO_DATE('04/SEP/22 07:45:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('04/SEP/22 08:03:33', 'DD/MON/YY HH24:MI:SS'), 
    'Salvation Army', 
    3, 
    TO_DATE('04/SEP/22', 'DD/MON/YY'), 
    '5K', 
    NULL -- 2
);

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
    5, 
    TO_DATE('04/SEP/22 07:45:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('04/SEP/22 08:01:24', 'DD/MON/YY HH24:MI:SS'), 
    'Salvation Army', 
    20, 
    TO_DATE('04/SEP/22', 'DD/MON/YY'), 
    '5K', 
    NULL -- 2
);

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
    6, 
    TO_DATE('01/FEB/23 09:05:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('01/FEB/23 11:08:20', 'DD/MON/YY HH24:MI:SS'), 
    'RSPCA', 
    16, 
    TO_DATE('01/FEB/23', 'DD/MON/YY'), 
    '21K', 
    NULL -- 3
);

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
    7, 
    TO_DATE('01/FEB/23 09:05:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('01/FEB/23 11:08:19', 'DD/MON/YY HH24:MI:SS'), 
    'RSPCA', 
    17, 
    TO_DATE('01/FEB/23', 'DD/MON/YY'), 
    '21K', 
    NULL -- 3 
);

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
    8, 
    TO_DATE('01/FEB/23 12:55:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('01/FEB/23 13:41:09', 'DD/MON/YY HH24:MI:SS'), 
    'Beyond Blue', 
    18, 
    TO_DATE('01/FEB/23', 'DD/MON/YY'), 
    '10K', 
    NULL -- 3 
);

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
    9, 
    TO_DATE('01/FEB/23 12:55:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('01/FEB/23 13:44:43', 'DD/MON/YY HH24:MI:SS'), 
    'RSPCA', 
    19, 
    TO_DATE('01/FEB/23', 'DD/MON/YY'), 
    '10K', 
    NULL -- 3
);

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
    10, 
    TO_DATE('01/FEB/23 12:55:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('01/FEB/23 13:51:05', 'DD/MON/YY HH24:MI:SS'), 
    'Amnesty International', 
    10, 
    TO_DATE('01/FEB/23', 'DD/MON/YY'), 
    '10K', 
    NULL -- 4
);

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
    11, 
    TO_DATE('01/FEB/23 12:55:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('01/FEB/23 13:51:07', 'DD/MON/YY HH24:MI:SS'), 
    'Salvation Army', 
    11, 
    TO_DATE('01/FEB/23', 'DD/MON/YY'), 
    '10K', 
    NULL -- 4
);

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
    12, 
    TO_DATE('01/FEB/23 09:05:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('01/FEB/23 11:14:31', 'DD/MON/YY HH24:MI:SS'), 
    'Amnesty International', 
    12, 
    TO_DATE('01/FEB/23', 'DD/MON/YY'), 
    '21K', 
    NULL -- 4
);

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
    13, 
    TO_DATE('06/APR/23 12:10:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('06/APR/23 12:31:35', 'DD/MON/YY HH24:MI:SS'), 
    'Beyond Blue', 
    15, 
    TO_DATE('06/APR/23', 'DD/MON/YY'), 
    '5K', 
    NULL -- 5
);

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
    14, 
    TO_DATE('06/APR/23 11:00:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('06/APR/23 13:41:54', 'DD/MON/YY HH24:MI:SS'), 
    'RSPCA', 
    2, 
    TO_DATE('06/APR/23', 'DD/MON/YY'), 
    '42K', 
    NULL -- 5
);

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
    15, 
    TO_DATE('06/APR/23 11:00:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('06/APR/23 13:42:02', 'DD/MON/YY HH24:MI:SS'), 
    'Beyond Blue', 
    7, 
    TO_DATE('06/APR/23', 'DD/MON/YY'), 
    '42K', 
    NULL -- 5
);

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
    16, 
    TO_DATE('06/APR/23 10:05:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('06/APR/23 10:39:57', 'DD/MON/YY HH24:MI:SS'), 
    'Amnesty International', 
    1, 
    TO_DATE('06/APR/23', 'DD/MON/YY'), 
    '10K', 
    NULL -- 6
);

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
    17, 
    TO_DATE('06/APR/23 12:10:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('06/APR/23 12:28:14', 'DD/MON/YY HH24:MI:SS'), 
    'Amnesty International', 
    8, 
    TO_DATE('06/APR/23', 'DD/MON/YY'), 
    '5K', 
    NULL -- 6
);

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
    18, 
    TO_DATE('08/SEP/23 06:55:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('08/SEP/23 07:32:51', 'DD/MON/YY HH24:MI:SS'), 
    'Beyond Blue',
    4, 
    TO_DATE('08/SEP/23', 'DD/MON/YY'), 
    '5K', 
    NULL -- 7
);

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
    19, 
    TO_DATE('08/SEP/23 07:15:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('08/SEP/23 11:19:22', 'DD/MON/YY HH24:MI:SS'), 
    'Salvation Army', 
    5, 
    TO_DATE('08/SEP/23', 'DD/MON/YY'), 
    '42K', 
    NULL -- 7
);

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
    20, 
    TO_DATE('08/SEP/23 07:15:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('08/SEP/23 11:22:41', 'DD/MON/YY HH24:MI:SS'), 
    'Amnesty International', 
    6, 
    TO_DATE('08/SEP/23', 'DD/MON/YY'), 
    '42K', 
    NULL -- 7
);

-- additional entries added for the purpose of T4c
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
    31,
    TO_DATE('19/SEP/2021 09:15:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('19/SEP/2021 09:47:17', 'DD/MON/YY HH24:MI:SS'), 
    'Amnesty International', 
    1, 
    TO_DATE('19/SEP/2021', 'DD/MON/YY'), 
    '10K', 
    NULL
);

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
    32, 
    TO_DATE('04/SEP/22 07:30:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('04/SEP/22 08:03:04', 'DD/MON/YY HH24:MI:SS'), 
    'RSPCA', 
    1, 
    TO_DATE('04/SEP/22', 'DD/MON/YY'), 
    '10K', 
    NULL
);

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
    33, 
    TO_DATE('19/SEP/2021 09:00:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('19/SEP/2021 09:24:51', 'DD/MON/YY HH24:MI:SS'), 
    'RSPCA', 
    6, 
    TO_DATE('19/SEP/2021', 'DD/MON/YY'), 
    '5K', 
    NULL
);

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
    34, 
    TO_DATE('19/SEP/2021 09:00:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('19/SEP/2021 09:33:33', 'DD/MON/YY HH24:MI:SS'), 
    'Salvation Army', 
    3, 
    TO_DATE('19/SEP/2021', 'DD/MON/YY'), 
    '5K', 
    NULL
);

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
    35, 
    TO_DATE('19/SEP/2021 09:00:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('19/SEP/2021 09:21:24', 'DD/MON/YY HH24:MI:SS'), 
    'Salvation Army', 
    20, 
    TO_DATE('19/SEP/2021', 'DD/MON/YY'), 
    '5K', 
    NULL
);

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
    41, 
    TO_DATE('04/SEP/22 07:45:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('04/SEP/22 08:21:24', 'DD/MON/YY HH24:MI:SS'), 
    'Salvation Army', 
    16, 
    TO_DATE('04/SEP/22', 'DD/MON/YY'), 
    '5K', 
    NULL
);

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
    42, 
    TO_DATE('04/SEP/22 07:45:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('04/SEP/22 08:20:41', 'DD/MON/YY HH24:MI:SS'), 
    'Salvation Army', 
    17, 
    TO_DATE('04/SEP/22', 'DD/MON/YY'), 
    '5K', 
    NULL
);

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
    43, 
    TO_DATE('04/SEP/22 07:45:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('04/SEP/22 08:21:13', 'DD/MON/YY HH24:MI:SS'), 
    'Salvation Army', 
    18, 
    TO_DATE('04/SEP/22', 'DD/MON/YY'), 
    '5K', 
    NULL
);

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
    44, 
    TO_DATE('04/SEP/22 07:45:00', 'DD/MON/YY HH24:MI:SS'), 
    TO_DATE('04/SEP/22 08:20:59', 'DD/MON/YY HH24:MI:SS'), 
    'Salvation Army', 
    19, 
    TO_DATE('04/SEP/22', 'DD/MON/YY'), 
    '5K', 
    NULL
);


-- Insert into TEAM

INSERT INTO team (
    team_id,
    team_name,
    carn_date, 
    team_no_members,
    char_name,
    entry_id
) VALUES (
    1, 
    'The Flaming Galahs', 
    TO_DATE('04/SEP/22', 'DD/MON/YY'), 
    3, 
    'RSPCA', 
    3
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date, 
    team_no_members,
    char_name,
    entry_id
) VALUES (
    2, 
    'The Hip Hop Hopotomous', 
    TO_DATE('04/SEP/22', 'DD/MON/YY'), 
    2, 
    'Salvation Army', 
    5
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date, 
    team_no_members,
    char_name,
    entry_id
) VALUES (
    3, 
    'Monash IT Crowd', 
    TO_DATE('01/FEB/23', 'DD/MON/YY'), 
    4, 
    'RSPCA', 
    7
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date, 
    team_no_members,
    char_name,
    entry_id
) VALUES (
    4, 
    'Velocity-Raptors', 
    TO_DATE('01/FEB/23', 'DD/MON/YY'), 
    3, 
    'Amnesty International', 
    9
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date, 
    team_no_members,
    char_name,
    entry_id
) VALUES (
    5, 
    'The Turbo Diesels', 
    TO_DATE('06/APR/23', 'DD/MON/YY'), 
    3, 
    'Beyond Blue', 
    12
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date, 
    team_no_members,
    char_name,
    entry_id
) VALUES (
    6, 
    'Happy Feet', 
    TO_DATE('06/APR/23', 'DD/MON/YY'), 
    2, 
    'Amnesty International', 
    14
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date, 
    team_no_members,
    char_name,
    entry_id
) VALUES (
    7, 
    'Speed Demons', 
    TO_DATE('08/SEP/23', 'DD/MON/YY'), 
    3, 
    'Beyond Blue', 
    18
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date, 
    team_no_members,
    char_name,
    entry_id
) VALUES (
    8, 
    'Fantastic Four', 
    TO_DATE('04/SEP/22', 'DD/MON/YY'), 
    4, 
    'Salvation Army', 
    41
);

-- Update ENTRY to include TEAM ID
UPDATE entry
SET team_id = 1
WHERE entry_id IN (1, 2, 3);

UPDATE entry
SET team_id = 2
WHERE entry_id IN (4, 5);

UPDATE entry
SET team_id = 3
WHERE entry_id IN (6, 7, 8, 9);

UPDATE entry
SET team_id = 4
WHERE entry_id IN (10, 11, 12);

UPDATE entry
SET team_id = 5
WHERE entry_id IN (13, 14, 15);

UPDATE entry
SET team_id = 6
WHERE entry_id IN (16, 17);

UPDATE entry
SET team_id = 7
WHERE entry_id IN (18, 19, 20);

UPDATE entry
SET team_id = 8
WHERE entry_id IN (41, 42, 43, 44);

COMMIT;







