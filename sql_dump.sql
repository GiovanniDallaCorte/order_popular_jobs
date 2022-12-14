PGDMP         %                z            postgis_32_sample    14.5    14.5 )    h           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            i           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            j           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            k           1262    16394    postgis_32_sample    DATABASE     q   CREATE DATABASE postgis_32_sample WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
 !   DROP DATABASE postgis_32_sample;
                postgres    false            l           0    0    postgis_32_sample    DATABASE PROPERTIES     \   ALTER DATABASE postgis_32_sample SET search_path TO '$user', 'public', 'topology', 'tiger';
                     postgres    false                        2615    18601    tiger    SCHEMA        CREATE SCHEMA tiger;
    DROP SCHEMA tiger;
                postgres    false                        2615    18857 
   tiger_data    SCHEMA        CREATE SCHEMA tiger_data;
    DROP SCHEMA tiger_data;
                postgres    false                        2615    18290    topology    SCHEMA        CREATE SCHEMA topology;
    DROP SCHEMA topology;
                postgres    false            m           0    0    SCHEMA topology    COMMENT     9   COMMENT ON SCHEMA topology IS 'PostGIS Topology schema';
                   postgres    false    15                        3079    18451    address_standardizer 	   EXTENSION     H   CREATE EXTENSION IF NOT EXISTS address_standardizer WITH SCHEMA public;
 %   DROP EXTENSION address_standardizer;
                   false            n           0    0    EXTENSION address_standardizer    COMMENT     ?   COMMENT ON EXTENSION address_standardizer IS 'Used to parse an address into constituent elements. Generally used to support geocoding address normalization step.';
                        false    6                        3079    18590    fuzzystrmatch 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;
    DROP EXTENSION fuzzystrmatch;
                   false            o           0    0    EXTENSION fuzzystrmatch    COMMENT     ]   COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';
                        false    11            
            3079    18584    ogr_fdw 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS ogr_fdw WITH SCHEMA public;
    DROP EXTENSION ogr_fdw;
                   false            p           0    0    EXTENSION ogr_fdw    COMMENT     L   COMMENT ON EXTENSION ogr_fdw IS 'foreign-data wrapper for GIS data access';
                        false    10                        3079    16395    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                   false            q           0    0    EXTENSION postgis    COMMENT     ^   COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';
                        false    2                        3079    17991 	   pgrouting 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS pgrouting WITH SCHEMA public;
    DROP EXTENSION pgrouting;
                   false    2            r           0    0    EXTENSION pgrouting    COMMENT     9   COMMENT ON EXTENSION pgrouting IS 'pgRouting Extension';
                        false    4                        3079    18478 
   pointcloud 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS pointcloud WITH SCHEMA public;
    DROP EXTENSION pointcloud;
                   false            s           0    0    EXTENSION pointcloud    COMMENT     G   COMMENT ON EXTENSION pointcloud IS 'data type for lidar point clouds';
                        false    8            	            3079    18573    pointcloud_postgis 	   EXTENSION     F   CREATE EXTENSION IF NOT EXISTS pointcloud_postgis WITH SCHEMA public;
 #   DROP EXTENSION pointcloud_postgis;
                   false    8    2            t           0    0    EXTENSION pointcloud_postgis    COMMENT     n   COMMENT ON EXTENSION pointcloud_postgis IS 'integration for pointcloud LIDAR data and PostGIS geometry data';
                        false    9                        3079    17426    postgis_raster 	   EXTENSION     B   CREATE EXTENSION IF NOT EXISTS postgis_raster WITH SCHEMA public;
    DROP EXTENSION postgis_raster;
                   false    2            u           0    0    EXTENSION postgis_raster    COMMENT     M   COMMENT ON EXTENSION postgis_raster IS 'PostGIS raster types and functions';
                        false    3                        3079    18458    postgis_sfcgal 	   EXTENSION     B   CREATE EXTENSION IF NOT EXISTS postgis_sfcgal WITH SCHEMA public;
    DROP EXTENSION postgis_sfcgal;
                   false    2            v           0    0    EXTENSION postgis_sfcgal    COMMENT     C   COMMENT ON EXTENSION postgis_sfcgal IS 'PostGIS SFCGAL functions';
                        false    7                        3079    18602    postgis_tiger_geocoder 	   EXTENSION     I   CREATE EXTENSION IF NOT EXISTS postgis_tiger_geocoder WITH SCHEMA tiger;
 '   DROP EXTENSION postgis_tiger_geocoder;
                   false    18    2    11            w           0    0     EXTENSION postgis_tiger_geocoder    COMMENT     ^   COMMENT ON EXTENSION postgis_tiger_geocoder IS 'PostGIS tiger geocoder and reverse geocoder';
                        false    12                        3079    18291    postgis_topology 	   EXTENSION     F   CREATE EXTENSION IF NOT EXISTS postgis_topology WITH SCHEMA topology;
 !   DROP EXTENSION postgis_topology;
                   false    15    2            x           0    0    EXTENSION postgis_topology    COMMENT     Y   COMMENT ON EXTENSION postgis_topology IS 'PostGIS topology spatial types and functions';
                        false    5            *           1259    19018    userlocation    TABLE     ?   CREATE TABLE public.userlocation (
    id uuid NOT NULL,
    iduser uuid NOT NULL,
    geom public.geometry NOT NULL,
    createdat timestamp without time zone NOT NULL,
    updatedat timestamp without time zone NOT NULL,
    idjob integer
);
     DROP TABLE public.userlocation;
       public         heap    postgres    false    2    2    2    2    2    2    2    2                      0    18480    pointcloud_formats 
   TABLE DATA                 public          postgres    false    245   (!                 0    16705    spatial_ref_sys 
   TABLE DATA                 public          postgres    false    224   B!       e          0    19018    userlocation 
   TABLE DATA                 public          postgres    false    298   \!                 0    18608    geocode_settings 
   TABLE DATA                 tiger          postgres    false    248   ?"                 0    18940    pagc_gaz 
   TABLE DATA                 tiger          postgres    false    293   #                 0    18950    pagc_lex 
   TABLE DATA                 tiger          postgres    false    295   /#                 0    18960 
   pagc_rules 
   TABLE DATA                 tiger          postgres    false    297   I#                 0    18293    topology 
   TABLE DATA                 topology          postgres    false    239   c#                 0    18305    layer 
   TABLE DATA                 topology          postgres    false    240   }#          
   x???             
   x???          e   ?  x???Kk1 ???nN`FI+%'???&?]???%?Cj??z????)???"$]?cf?X???d?z?D^??y,7?????????N?????Ngy???R^???k?4d?R?l??u????|???j?5?M?}6?
L??*Z?4-?Q?yC?9?TY?T}??JEuAAa?XR?R???????~?F???`-\uJ??E?az??s
?? L??r}??????f?s???p??? ??????????8??%??(:A????b"??xP???t?rk???&???????K:??????/?E???Bv?????C???Q?L?R?D???????^/?? ?? ?b?:k;'?.??r??????Gw?>2!???{?#?[?RY????Z/g<_V????>???'??o         
   x???             
   x???             
   x???             
   x???             
   x???             
   x???         