INSERT INTO beer_user.users VALUES ('4571a5f1-bdd4-4f5e-8176-0569fed333fc', 'Tristan'   , 'Schneider'     , 'tri@schn.com'     , '1A4215B1');
INSERT INTO beer_user.users VALUES ('27f78a8c-80d3-4e3d-be52-c5c1c0063a6c', 'Florian'   , 'Niederhuberus' , 'fl@nied.com'      , '2A2235B1');
INSERT INTO beer_user.users VALUES ('30a6b04a-03bc-4342-a7d0-cf877bfdf054', 'flo'       , 'nie'           , 'bar'              , 'A3FE68AD');
INSERT INTO beer_user.users VALUES ('cb4bdd63-5366-4dda-8577-b6330b3863ec', 'first'     , 'last'          , 'mail'             , '83D64792');
INSERT INTO beer_user.users VALUES ('10384f01-b9c6-429c-a849-b2054e758f13', 'real'      , 'token'         , 'debug'            , '04265EA2B05680');
INSERT INTO beer_user.users VALUES ('b8f8666f-adb9-43fc-9b30-a2c0a5149ac9', 'debugging' , 'fucking'       , 'sucks'            , '63046EAD');
INSERT INTO beer_user.users VALUES ('8b981764-76f7-4098-9cc6-525473dec745', 'the'       , 'last'          , 'one'              , 'B35B46AC');
INSERT INTO beer_user.users VALUES ('aa981764-76f7-4098-9cc6-525473dec7aa', 'A'         , 'a'             , 'a@a.com'          , 'AAAAAAAA');
INSERT INTO beer_user.users VALUES ('aaaa1764-76f7-4098-9cc6-525473dec7aa', 'No'        , 'Beer'          , 'no@beer.saarland' , 'NOOOBEER');

INSERT INTO beer_user.beers(time,uuid,brand_id,paid) VALUES ('2022-08-01 20:49:28.785094', '27f78a8c-80d3-4e3d-be52-c5c1c0063a6c',
  (SELECT brand_id FROM beer_user.beer_brands WHERE beer_brand = 'ByNFlowsMom'), false);
INSERT INTO beer_user.beers(time,uuid,brand_id,paid) VALUES ('2022-08-01 22:11:53.792822', '27f78a8c-80d3-4e3d-be52-c5c1c0063a6c',
  (SELECT brand_id FROM beer_user.beer_brands WHERE beer_brand = 'ByNFlowsMom'), false);
INSERT INTO beer_user.beers(time,uuid,brand_id,paid) VALUES ('2022-07-30 22:11:53.792822', '27f78a8c-80d3-4e3d-de52-c5c1c0063a6d',
  (SELECT brand_id FROM beer_user.beer_brands WHERE beer_brand = 'Ali Braeu'), false);
INSERT INTO beer_user.beers(time,uuid,brand_id,paid) VALUES ('2022-07-30 22:10:53.792822', '27f78a8c-80d3-4e3d-de52-c5c1c0063a6d',
  (SELECT brand_id FROM beer_user.beer_brands WHERE beer_brand = 'Ali Braeu'), false);
INSERT INTO beer_user.beers(time,uuid,brand_id,paid) VALUES ('2022-07-30 22:10:53.792821', '27f78a8c-80d3-4e3d-de52-c5c1c0063a6d',
  (SELECT brand_id FROM beer_user.beer_brands WHERE beer_brand = 'Ali Braeu'), false);
INSERT INTO beer_user.beers(time,uuid,brand_id,paid) VALUES ('2022-08-02 11:34:43.48538' , '27f78a8c-80d3-4e3d-be52-c5c1c0063a6c',
  (SELECT brand_id FROM beer_user.beer_brands WHERE beer_brand = 'ByNFlowsMom'), false);
INSERT INTO beer_user.beers(time,uuid,brand_id,paid) VALUES ('2022-08-02 11:45:01.241313', '808d8447-dc07-434c-958e-5039fa5ae6c2',
  (SELECT brand_id FROM beer_user.beer_brands WHERE beer_brand = 'ByNFlowsMom'), false);
INSERT INTO beer_user.beers(time,uuid,brand_id,paid) VALUES ('2022-08-02 11:45:12.152999', '808d8447-dc07-434c-958e-5039fa5ae6c2',
  (SELECT brand_id FROM beer_user.beer_brands WHERE beer_brand = 'ByNFlowsMom'), false);
INSERT INTO beer_user.beers(time,uuid,brand_id,paid) VALUES ('2022-08-02 11:45:19.328645', '808d8447-dc07-434c-958e-5039fa5ae6c2',
  (SELECT brand_id FROM beer_user.beer_brands WHERE beer_brand = 'ByNFlowsMom'), false);
INSERT INTO beer_user.beers(time,uuid,brand_id,paid) VALUES ('2022-08-02 11:46:34.395843', '27f78a8c-80d3-4e3d-be52-c5c1c0063a6c',
  (SELECT brand_id FROM beer_user.beer_brands WHERE beer_brand = 'ByNFlowsMom'), false);
INSERT INTO beer_user.beers(time,uuid,brand_id,paid) VALUES ('2022-08-02 14:07:45.914825', '808d8447-dc07-434c-958e-5039fa5ae6c2',
  (SELECT brand_id FROM beer_user.beer_brands WHERE beer_brand = 'ByNFlowsMom'), false);
INSERT INTO beer_user.beers(time,uuid,brand_id,paid) VALUES ('2022-08-02 14:07:47.023605', '808d8447-dc07-434c-958e-5039fa5ae6c2',
  (SELECT brand_id FROM beer_user.beer_brands WHERE beer_brand = 'ByNFlowsMom'), false);
INSERT INTO beer_user.beers(time,uuid,brand_id,paid) VALUES ('2022-08-02 14:07:47.44891' , '808d8447-dc07-434c-958e-5039fa5ae6c2',
  (SELECT brand_id FROM beer_user.beer_brands WHERE beer_brand = 'ByNFlowsMom'), false);
INSERT INTO beer_user.beers(time,uuid,brand_id,paid) VALUES ('2022-08-02 14:07:47.854382', '808d8447-dc07-434c-958e-5039fa5ae6c2',
  (SELECT brand_id FROM beer_user.beer_brands WHERE beer_brand = 'ByNFlowsMom'), false);
INSERT INTO beer_user.beers(time,uuid,brand_id,paid) VALUES ('2022-08-02 14:07:48.256881', '808d8447-dc07-434c-958e-5039fa5ae6c2',
  (SELECT brand_id FROM beer_user.beer_brands WHERE beer_brand = 'ByNFlowsMom'), false);
INSERT INTO beer_user.beers(time,uuid,brand_id,paid) VALUES ('2022-08-02 14:07:48.643366', '808d8447-dc07-434c-958e-5039fa5ae6c2',
  (SELECT brand_id FROM beer_user.beer_brands WHERE beer_brand = 'ByNFlowsMom'), false);
