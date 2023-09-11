DROP TABLE IF EXISTS listitems;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS lists;
DROP TABLE IF EXISTS people;

CREATE TABLE people (
    pid SERIAL PRIMARY KEY,
    pFirstName VARCHAR(50) NOT NULL
); 

CREATE TABLE lists (
    lID SERIAL PRIMARY KEY,
    pID INT REFERENCES people NOT NULL,
    lName VARCHAR(50) NOT NULL
);

CREATE TABLE items (
    iID SERIAL PRIMARY KEY,
    iName VARCHAR(50) NOT NULL
); 

CREATE TABLE listItems (
    liID SERIAL PRIMARY KEY,
    lID INT REFERENCES lists NOT NULL,
    iID INT REFERENCES items NOT NULL,
    liDesired INT NOT NULL DEFAULT 1,
    liPurchased INT NOT NULL DEFAULT 0
);

ALTER TABLE people
    ADD COLUMN plastname VARCHAR(50) NOT NULL,
    ADD COLUMN pcity VARCHAR(50) NOT NULL,
    ADD COLUMN pstate VARCHAR(2) NOT NULL;

INSERT INTO people (pfirstname, plastname, pstate, pcity) VALUES
('Bert', 'Negrillo', 'ND', 'Chula Vista'),
('Peter', 'Parker', 'VT', 'Santa Rosa');