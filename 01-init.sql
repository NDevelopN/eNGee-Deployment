CREATE TABLE games (
    gid  VARCHAR PRIMARY KEY,
    name VARCHAR NOT NULL,
    type VARCHAR,
    status VARCHAR,
    ostatus VARCHAR,
    leader VARCHAR,
    min_plrs SMALLINT,
    max_plrs SMALLINT,
    cur_plrs SMALLINT,
    add_rules VARCHAR,
);

CREATE TABLE players (
    uid VARCHAR PRIMARY KEY,
    gid VARCHAR,
    name VARCHAR NOT NULL,
    status VARCHAR,
);

CREATE TABLE gametypes (
    type VARCHAR,
);
