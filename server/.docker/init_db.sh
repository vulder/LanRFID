#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 <<-EOSQL
  DROP SCHEMA IF EXISTS beer_user CASCADE;
  CREATE SCHEMA beer_user;

  CREATE TABLE beer_user.users (
      uuid            VARCHAR(36) NOT NULL PRIMARY KEY,
      first_name      VARCHAR(200) UNIQUE NOT NULL,
      last_name       VARCHAR(200) NOT NULL,
      email           VARCHAR(200) UNIQUE NOT NULL,
      token           VARCHAR(200) UNIQUE NOT NULL
  );

  CREATE TABLE beer_user.beer_brands (
      brand_id        BIGSERIAL PRIMARY KEY,
      beer_brand      VARCHAR(200) NOT NULL,
      beer_type       VARCHAR(200)
  );

  CREATE TABLE beer_user.beers (
      time            timestamp,
      uuid            VARCHAR(36) NOT NULL,
      brand_id        BIGSERIAL,
      FOREIGN KEY (brand_id) REFERENCES beer_user.beer_brands(brand_id)
  );
  INSERT INTO beer_user.beer_brands(beer_brand, beer_type) VALUES('Unknown' , 'Unknown');
  INSERT INTO beer_user.beer_brands(beer_brand, beer_type) VALUES('ByNFlowsMom' , 'Dunkel');
  INSERT INTO beer_user.beer_brands(beer_brand, beer_type) VALUES('Ali Braeu'   , 'Weizen');
  INSERT INTO beer_user.beer_brands(beer_brand, beer_type) VALUES('Augustiner'  , 'Hell');
  INSERT INTO beer_user.beer_brands(beer_brand, beer_type) VALUES('Kneitinger'  , 'Hell');
  INSERT INTO beer_user.beer_brands(beer_brand, beer_type) VALUES('Prösslbräu'  , 'Palmator');
  INSERT INTO beer_user.beer_brands(beer_brand, beer_type) VALUES('Goss-Bräu'  , 'Hell');
EOSQL
