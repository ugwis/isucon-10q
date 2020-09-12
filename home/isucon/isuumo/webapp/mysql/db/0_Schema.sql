GRANT ALL PRIVILEGES ON *.* TO isucon@"10.162.89.%" IDENTIFIED BY 'isucon' WITH GRANT OPTION;

DROP DATABASE IF EXISTS isuumo;
CREATE DATABASE isuumo;

DROP TABLE IF EXISTS isuumo.estate;
DROP TABLE IF EXISTS isuumo.chair;

CREATE TABLE isuumo.estate
(
    id             INTEGER             NOT NULL PRIMARY KEY,
    name           VARCHAR(64)         NOT NULL,
    description    VARCHAR(4096)       NOT NULL,
    thumbnail      VARCHAR(128)        NOT NULL,
    address        VARCHAR(128)        NOT NULL,
    latitude       DOUBLE PRECISION    NOT NULL,
    longitude      DOUBLE PRECISION    NOT NULL,
    rent           INTEGER             NOT NULL,
    rent_id        INTEGER             NOT NULL DEFAULT 0,
    door_height    INTEGER             NOT NULL,
    door_height_id INTEGER             NOT NULL DEFAULT 0,
    door_width     INTEGER             NOT NULL,
    door_width_id  INTEGER             NOT NULL DEFAULT 0,
    features       VARCHAR(64)         NOT NULL,
    popularity     INTEGER             NOT NULL
);

CREATE TABLE isuumo.chair
(
    id          INTEGER         NOT NULL PRIMARY KEY,
    name        VARCHAR(64)     NOT NULL,
    description VARCHAR(4096)   NOT NULL,
    thumbnail   VARCHAR(128)    NOT NULL,
    price       INTEGER         NOT NULL,
    price_id    INTEGER         NOT NULL DEFAULT 0,
    height      INTEGER         NOT NULL,
    height_id   INTEGER         NOT NULL DEFAULT 0,
    width       INTEGER         NOT NULL,
    width_id    INTEGER         NOT NULL DEFAULT 0,
    depth       INTEGER         NOT NULL,
    depth_id    INTEGER         NOT NULL DEFAULT 0,
    color       VARCHAR(64)     NOT NULL,
    features    VARCHAR(64)     NOT NULL,
    kind        VARCHAR(64)     NOT NULL,
    popularity  INTEGER         NOT NULL,
    stock       INTEGER         NOT NULL
);


use isuumo;
ALTER TABLE estate ADD INDEX estate_latitude(latitude);
ALTER TABLE estate ADD INDEX estate_longitude(longitude);
ALTER TABLE estate ADD INDEX estate_door_height(door_height);
ALTER TABLE estate ADD INDEX estate_door_height_id(door_height_id);
ALTER TABLE estate ADD INDEX estate_door_width(door_width);
ALTER TABLE estate ADD INDEX estate_door_width_id(door_width_id);
ALTER TABLE estate ADD INDEX estate_rent(rent);
ALTER TABLE estate ADD INDEX estate_rent_id(rent_id);
ALTER TABLE estate ADD INDEX estate_popularity(popularity);

ALTER TABLE chair ADD INDEX chair_price(price);
ALTER TABLE chair ADD INDEX chair_price_id(price_id);
ALTER TABLE chair ADD INDEX chair_height(height);
ALTER TABLE chair ADD INDEX chair_height_id(height_id);
ALTER TABLE chair ADD INDEX chair_width(width);
ALTER TABLE chair ADD INDEX chair_width_id(width_id);
ALTER TABLE chair ADD INDEX chair_depth(depth);
ALTER TABLE chair ADD INDEX chair_depth_id(depth_id);
ALTER TABLE chair ADD INDEX chair_kind(kind);
ALTER TABLE chair ADD INDEX chair_color(color);
ALTER TABLE chair ADD INDEX chair_stock(stock);
