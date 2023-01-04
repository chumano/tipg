SET standard_conforming_strings = OFF;
DROP TABLE IF EXISTS "public"."nongeo_data" CASCADE;
DELETE FROM geometry_columns WHERE f_table_name = 'nongeo_data' AND f_table_schema = 'public';
BEGIN;
CREATE TABLE "public"."nongeo_data" ( "ogc_fid" SERIAL, CONSTRAINT "nongeo_data_pk" PRIMARY KEY ("ogc_fid") );
ALTER TABLE "public"."nongeo_data" ADD COLUMN "id" VARCHAR;
ALTER TABLE "public"."nongeo_data" ADD COLUMN "datetime" TIMESTAMP WITH TIME ZONE;
INSERT INTO "public"."nongeo_data" ("id", "datetime") VALUES ('0', '2004-10-19 10:23:54+01:00');
INSERT INTO "public"."nongeo_data" ("id", "datetime") VALUES ('1', '2004-10-20 10:23:54+01:00');
INSERT INTO "public"."nongeo_data" ("id", "datetime") VALUES ('2', '2004-10-21 10:23:54+01:00');
INSERT INTO "public"."nongeo_data" ("id", "datetime") VALUES ('3', '2004-10-22 10:23:54+01:00');
INSERT INTO "public"."nongeo_data" ("id", "datetime") VALUES ('4', '2004-10-23 10:23:54+01:00');
INSERT INTO "public"."nongeo_data" ("id", "datetime") VALUES ('5', '2004-10-24 10:23:54+01:00');
COMMIT;
