DROP DATABASE IF EXISTS isuumo;
CREATE DATABASE isuumo;

DROP TABLE IF EXISTS isuumo.estate;
DROP TABLE IF EXISTS isuumo.chair;

CREATE TABLE isuumo.estate
(
    id          INTEGER             NOT NULL PRIMARY KEY,
    name        VARCHAR(64)         NOT NULL,
    description VARCHAR(4096)       NOT NULL,
    thumbnail   VARCHAR(128)        NOT NULL,
    address     VARCHAR(128)        NOT NULL,
    latitude    DOUBLE PRECISION    NOT NULL,
    longitude   DOUBLE PRECISION    NOT NULL,
    rent        INTEGER             NOT NULL,
    door_height INTEGER             NOT NULL,
    door_width  INTEGER             NOT NULL,
    features    VARCHAR(64)         NOT NULL,
    popularity  INTEGER             NOT NULL
);

CREATE TABLE isuumo.chair
(
    id          INTEGER         NOT NULL PRIMARY KEY,
    name        VARCHAR(64)     NOT NULL,
    description VARCHAR(4096)   NOT NULL,
    thumbnail   VARCHAR(128)    NOT NULL,
    price       INTEGER         NOT NULL,
    height      INTEGER         NOT NULL,
    width       INTEGER         NOT NULL,
    depth       INTEGER         NOT NULL,
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
ALTER TABLE estate ADD INDEX estate_door_width(door_width);
ALTER TABLE estate ADD INDEX estate_rent(rent);
ALTER TABLE estate ADD INDEX estate_popularity(popularity);

ALTER TABLE chair ADD INDEX chair_price(price);
ALTER TABLE chair ADD INDEX chair_height(height);
ALTER TABLE chair ADD INDEX chair_width(width);
ALTER TABLE chair ADD INDEX chair_depth(depth);
ALTER TABLE chair ADD INDEX chair_kind(kind);
ALTER TABLE chair ADD INDEX chair_color(color);
ALTER TABLE chair ADD INDEX chair_stock(stock);
