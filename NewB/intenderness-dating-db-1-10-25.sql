PGDMP               
         }            intenderness_dating_m0dl    16.4 (Debian 16.4-1.pgdg120+2)    17.0 �   n           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            o           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            p           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            q           1262    16389    intenderness_dating_m0dl    DATABASE     �   CREATE DATABASE intenderness_dating_m0dl WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
 (   DROP DATABASE intenderness_dating_m0dl;
                     intenderness_dating_m0dl_user    false            r           0    0    intenderness_dating_m0dl    DATABASE PROPERTIES     A   ALTER DATABASE intenderness_dating_m0dl SET "TimeZone" TO 'utc';
                          intenderness_dating_m0dl_user    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                     intenderness_dating_m0dl_user    false                        3079    16398    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                        false    6            s           0    0    EXTENSION postgis    COMMENT     ^   COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';
                             false    2            t           0    0    FUNCTION box2d_in(cstring)    ACL     Q   GRANT ALL ON FUNCTION public.box2d_in(cstring) TO intenderness_dating_m0dl_user;
          public               postgres    false    278            u           0    0     FUNCTION box2d_out(public.box2d)    ACL     W   GRANT ALL ON FUNCTION public.box2d_out(public.box2d) TO intenderness_dating_m0dl_user;
          public               postgres    false    279            v           0    0 
   TYPE box2d    ACL     A   GRANT ALL ON TYPE public.box2d TO intenderness_dating_m0dl_user;
          public               postgres    false    1629            w           0    0    FUNCTION box2df_in(cstring)    ACL     R   GRANT ALL ON FUNCTION public.box2df_in(cstring) TO intenderness_dating_m0dl_user;
          public               postgres    false    280            x           0    0 "   FUNCTION box2df_out(public.box2df)    ACL     Y   GRANT ALL ON FUNCTION public.box2df_out(public.box2df) TO intenderness_dating_m0dl_user;
          public               postgres    false    281            y           0    0    TYPE box2df    ACL     B   GRANT ALL ON TYPE public.box2df TO intenderness_dating_m0dl_user;
          public               postgres    false    1632            z           0    0    FUNCTION box3d_in(cstring)    ACL     Q   GRANT ALL ON FUNCTION public.box3d_in(cstring) TO intenderness_dating_m0dl_user;
          public               postgres    false    276            {           0    0     FUNCTION box3d_out(public.box3d)    ACL     W   GRANT ALL ON FUNCTION public.box3d_out(public.box3d) TO intenderness_dating_m0dl_user;
          public               postgres    false    277            |           0    0 
   TYPE box3d    ACL     A   GRANT ALL ON TYPE public.box3d TO intenderness_dating_m0dl_user;
          public               postgres    false    1626            }           0    0 $   FUNCTION geography_analyze(internal)    ACL     [   GRANT ALL ON FUNCTION public.geography_analyze(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    811            ~           0    0 ,   FUNCTION geography_in(cstring, oid, integer)    ACL     c   GRANT ALL ON FUNCTION public.geography_in(cstring, oid, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    807                       0    0 (   FUNCTION geography_out(public.geography)    ACL     _   GRANT ALL ON FUNCTION public.geography_out(public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    808            �           0    0 /   FUNCTION geography_recv(internal, oid, integer)    ACL     f   GRANT ALL ON FUNCTION public.geography_recv(internal, oid, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    809            �           0    0 )   FUNCTION geography_send(public.geography)    ACL     `   GRANT ALL ON FUNCTION public.geography_send(public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    810            �           0    0 '   FUNCTION geography_typmod_in(cstring[])    ACL     ^   GRANT ALL ON FUNCTION public.geography_typmod_in(cstring[]) TO intenderness_dating_m0dl_user;
          public               postgres    false    805            �           0    0 &   FUNCTION geography_typmod_out(integer)    ACL     ]   GRANT ALL ON FUNCTION public.geography_typmod_out(integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    806            �           0    0    TYPE geography    ACL     E   GRANT ALL ON TYPE public.geography TO intenderness_dating_m0dl_user;
          public               postgres    false    1647            �           0    0 #   FUNCTION geometry_analyze(internal)    ACL     Z   GRANT ALL ON FUNCTION public.geometry_analyze(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    262            �           0    0    FUNCTION geometry_in(cstring)    ACL     T   GRANT ALL ON FUNCTION public.geometry_in(cstring) TO intenderness_dating_m0dl_user;
          public               postgres    false    258            �           0    0 &   FUNCTION geometry_out(public.geometry)    ACL     ]   GRANT ALL ON FUNCTION public.geometry_out(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    259            �           0    0     FUNCTION geometry_recv(internal)    ACL     W   GRANT ALL ON FUNCTION public.geometry_recv(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    263            �           0    0 '   FUNCTION geometry_send(public.geometry)    ACL     ^   GRANT ALL ON FUNCTION public.geometry_send(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    264            �           0    0 &   FUNCTION geometry_typmod_in(cstring[])    ACL     ]   GRANT ALL ON FUNCTION public.geometry_typmod_in(cstring[]) TO intenderness_dating_m0dl_user;
          public               postgres    false    260            �           0    0 %   FUNCTION geometry_typmod_out(integer)    ACL     \   GRANT ALL ON FUNCTION public.geometry_typmod_out(integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    261            �           0    0    TYPE geometry    ACL     D   GRANT ALL ON TYPE public.geometry TO intenderness_dating_m0dl_user;
          public               postgres    false    1623            �           0    0    TYPE geometry_dump    ACL     I   GRANT ALL ON TYPE public.geometry_dump TO intenderness_dating_m0dl_user;
          public               postgres    false    1638            �           0    0    FUNCTION gidx_in(cstring)    ACL     P   GRANT ALL ON FUNCTION public.gidx_in(cstring) TO intenderness_dating_m0dl_user;
          public               postgres    false    282            �           0    0    FUNCTION gidx_out(public.gidx)    ACL     U   GRANT ALL ON FUNCTION public.gidx_out(public.gidx) TO intenderness_dating_m0dl_user;
          public               postgres    false    283            �           0    0 	   TYPE gidx    ACL     @   GRANT ALL ON TYPE public.gidx TO intenderness_dating_m0dl_user;
          public               postgres    false    1635            �           0    0    FUNCTION spheroid_in(cstring)    ACL     T   GRANT ALL ON FUNCTION public.spheroid_in(cstring) TO intenderness_dating_m0dl_user;
          public               postgres    false    256            �           0    0 &   FUNCTION spheroid_out(public.spheroid)    ACL     ]   GRANT ALL ON FUNCTION public.spheroid_out(public.spheroid) TO intenderness_dating_m0dl_user;
          public               postgres    false    257            �           0    0    TYPE spheroid    ACL     D   GRANT ALL ON TYPE public.spheroid TO intenderness_dating_m0dl_user;
          public               postgres    false    1620            �           0    0    TYPE valid_detail    ACL     H   GRANT ALL ON TYPE public.valid_detail TO intenderness_dating_m0dl_user;
          public               postgres    false    1644            �           0    0    FUNCTION box3d(public.box2d)    ACL     S   GRANT ALL ON FUNCTION public.box3d(public.box2d) TO intenderness_dating_m0dl_user;
          public               postgres    false    527            �           0    0    FUNCTION geometry(public.box2d)    ACL     V   GRANT ALL ON FUNCTION public.geometry(public.box2d) TO intenderness_dating_m0dl_user;
          public               postgres    false    531            �           0    0    FUNCTION box(public.box3d)    ACL     Q   GRANT ALL ON FUNCTION public.box(public.box3d) TO intenderness_dating_m0dl_user;
          public               postgres    false    528            �           0    0    FUNCTION box2d(public.box3d)    ACL     S   GRANT ALL ON FUNCTION public.box2d(public.box3d) TO intenderness_dating_m0dl_user;
          public               postgres    false    526            �           0    0    FUNCTION geometry(public.box3d)    ACL     V   GRANT ALL ON FUNCTION public.geometry(public.box3d) TO intenderness_dating_m0dl_user;
          public               postgres    false    532            �           0    0    FUNCTION geography(bytea)    ACL     P   GRANT ALL ON FUNCTION public.geography(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    813            �           0    0    FUNCTION geometry(bytea)    ACL     O   GRANT ALL ON FUNCTION public.geometry(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    534            �           0    0     FUNCTION bytea(public.geography)    ACL     W   GRANT ALL ON FUNCTION public.bytea(public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    814            �           0    0 6   FUNCTION geography(public.geography, integer, boolean)    ACL     m   GRANT ALL ON FUNCTION public.geography(public.geography, integer, boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    812            �           0    0 #   FUNCTION geometry(public.geography)    ACL     Z   GRANT ALL ON FUNCTION public.geometry(public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    825            �           0    0    FUNCTION box(public.geometry)    ACL     T   GRANT ALL ON FUNCTION public.box(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    525            �           0    0    FUNCTION box2d(public.geometry)    ACL     V   GRANT ALL ON FUNCTION public.box2d(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    523            �           0    0    FUNCTION box3d(public.geometry)    ACL     V   GRANT ALL ON FUNCTION public.box3d(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    524            �           0    0    FUNCTION bytea(public.geometry)    ACL     V   GRANT ALL ON FUNCTION public.bytea(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    535            �           0    0 #   FUNCTION geography(public.geometry)    ACL     Z   GRANT ALL ON FUNCTION public.geography(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    824            �           0    0 4   FUNCTION geometry(public.geometry, integer, boolean)    ACL     k   GRANT ALL ON FUNCTION public.geometry(public.geometry, integer, boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    265            �           0    0     FUNCTION "json"(public.geometry)    ACL     W   GRANT ALL ON FUNCTION public."json"(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    696            �           0    0    FUNCTION jsonb(public.geometry)    ACL     V   GRANT ALL ON FUNCTION public.jsonb(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    697            �           0    0    FUNCTION path(public.geometry)    ACL     U   GRANT ALL ON FUNCTION public.path(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    269            �           0    0    FUNCTION point(public.geometry)    ACL     V   GRANT ALL ON FUNCTION public.point(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    267            �           0    0 !   FUNCTION polygon(public.geometry)    ACL     X   GRANT ALL ON FUNCTION public.polygon(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    271            �           0    0    FUNCTION text(public.geometry)    ACL     U   GRANT ALL ON FUNCTION public.text(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    529            �           0    0    FUNCTION geometry(path)    ACL     N   GRANT ALL ON FUNCTION public.geometry(path) TO intenderness_dating_m0dl_user;
          public               postgres    false    268            �           0    0    FUNCTION geometry(point)    ACL     O   GRANT ALL ON FUNCTION public.geometry(point) TO intenderness_dating_m0dl_user;
          public               postgres    false    266            �           0    0    FUNCTION geometry(polygon)    ACL     Q   GRANT ALL ON FUNCTION public.geometry(polygon) TO intenderness_dating_m0dl_user;
          public               postgres    false    270            �           0    0    FUNCTION geometry(text)    ACL     N   GRANT ALL ON FUNCTION public.geometry(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    533            �           0    0 E   FUNCTION _postgis_deprecate(oldname text, newname text, version text)    ACL     |   GRANT ALL ON FUNCTION public._postgis_deprecate(oldname text, newname text, version text) TO intenderness_dating_m0dl_user;
          public               postgres    false    255            �           0    0 6   FUNCTION _postgis_index_extent(tbl regclass, col text)    ACL     m   GRANT ALL ON FUNCTION public._postgis_index_extent(tbl regclass, col text) TO intenderness_dating_m0dl_user;
          public               postgres    false    305            �           0    0 H   FUNCTION _postgis_join_selectivity(regclass, text, regclass, text, text)    ACL        GRANT ALL ON FUNCTION public._postgis_join_selectivity(regclass, text, regclass, text, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    303            �           0    0 !   FUNCTION _postgis_pgsql_version()    ACL     X   GRANT ALL ON FUNCTION public._postgis_pgsql_version() TO intenderness_dating_m0dl_user;
          public               postgres    false    520            �           0    0 )   FUNCTION _postgis_scripts_pgsql_version()    ACL     `   GRANT ALL ON FUNCTION public._postgis_scripts_pgsql_version() TO intenderness_dating_m0dl_user;
          public               postgres    false    519            �           0    0 [   FUNCTION _postgis_selectivity(tbl regclass, att_name text, geom public.geometry, mode text)    ACL     �   GRANT ALL ON FUNCTION public._postgis_selectivity(tbl regclass, att_name text, geom public.geometry, mode text) TO intenderness_dating_m0dl_user;
          public               postgres    false    302            �           0    0 :   FUNCTION _postgis_stats(tbl regclass, att_name text, text)    ACL     q   GRANT ALL ON FUNCTION public._postgis_stats(tbl regclass, att_name text, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    304            �           0    0 [   FUNCTION _st_3ddfullywithin(geom1 public.geometry, geom2 public.geometry, double precision)    ACL     �   GRANT ALL ON FUNCTION public._st_3ddfullywithin(geom1 public.geometry, geom2 public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    643            �           0    0 V   FUNCTION _st_3ddwithin(geom1 public.geometry, geom2 public.geometry, double precision)    ACL     �   GRANT ALL ON FUNCTION public._st_3ddwithin(geom1 public.geometry, geom2 public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    642            �           0    0 G   FUNCTION _st_3dintersects(geom1 public.geometry, geom2 public.geometry)    ACL     ~   GRANT ALL ON FUNCTION public._st_3dintersects(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    644            �           0    0 J   FUNCTION _st_asgml(integer, public.geometry, integer, integer, text, text)    ACL     �   GRANT ALL ON FUNCTION public._st_asgml(integer, public.geometry, integer, integer, text, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    690            �           0    0 D   FUNCTION _st_asx3d(integer, public.geometry, integer, integer, text)    ACL     {   GRANT ALL ON FUNCTION public._st_asx3d(integer, public.geometry, integer, integer, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    969            �           0    0 '   FUNCTION _st_bestsrid(public.geography)    ACL     ^   GRANT ALL ON FUNCTION public._st_bestsrid(public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    876            �           0    0 9   FUNCTION _st_bestsrid(public.geography, public.geography)    ACL     p   GRANT ALL ON FUNCTION public._st_bestsrid(public.geography, public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    875            �           0    0 C   FUNCTION _st_contains(geom1 public.geometry, geom2 public.geometry)    ACL     z   GRANT ALL ON FUNCTION public._st_contains(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    635            �           0    0 K   FUNCTION _st_containsproperly(geom1 public.geometry, geom2 public.geometry)    ACL     �   GRANT ALL ON FUNCTION public._st_containsproperly(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    636            �           0    0 F   FUNCTION _st_coveredby(geog1 public.geography, geog2 public.geography)    ACL     }   GRANT ALL ON FUNCTION public._st_coveredby(geog1 public.geography, geog2 public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    891            �           0    0 D   FUNCTION _st_coveredby(geom1 public.geometry, geom2 public.geometry)    ACL     {   GRANT ALL ON FUNCTION public._st_coveredby(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    638            �           0    0 C   FUNCTION _st_covers(geog1 public.geography, geog2 public.geography)    ACL     z   GRANT ALL ON FUNCTION public._st_covers(geog1 public.geography, geog2 public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    889            �           0    0 A   FUNCTION _st_covers(geom1 public.geometry, geom2 public.geometry)    ACL     x   GRANT ALL ON FUNCTION public._st_covers(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    637            �           0    0 B   FUNCTION _st_crosses(geom1 public.geometry, geom2 public.geometry)    ACL     y   GRANT ALL ON FUNCTION public._st_crosses(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    634            �           0    0 Y   FUNCTION _st_dfullywithin(geom1 public.geometry, geom2 public.geometry, double precision)    ACL     �   GRANT ALL ON FUNCTION public._st_dfullywithin(geom1 public.geometry, geom2 public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    641            �           0    0 =   FUNCTION _st_distancetree(public.geography, public.geography)    ACL     t   GRANT ALL ON FUNCTION public._st_distancetree(public.geography, public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    862            �           0    0 X   FUNCTION _st_distancetree(public.geography, public.geography, double precision, boolean)    ACL     �   GRANT ALL ON FUNCTION public._st_distancetree(public.geography, public.geography, double precision, boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    861            �           0    0 A   FUNCTION _st_distanceuncached(public.geography, public.geography)    ACL     x   GRANT ALL ON FUNCTION public._st_distanceuncached(public.geography, public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    860            �           0    0 J   FUNCTION _st_distanceuncached(public.geography, public.geography, boolean)    ACL     �   GRANT ALL ON FUNCTION public._st_distanceuncached(public.geography, public.geography, boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    859            �           0    0 \   FUNCTION _st_distanceuncached(public.geography, public.geography, double precision, boolean)    ACL     �   GRANT ALL ON FUNCTION public._st_distanceuncached(public.geography, public.geography, double precision, boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    858            �           0    0 T   FUNCTION _st_dwithin(geom1 public.geometry, geom2 public.geometry, double precision)    ACL     �   GRANT ALL ON FUNCTION public._st_dwithin(geom1 public.geometry, geom2 public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    631            �           0    0 v   FUNCTION _st_dwithin(geog1 public.geography, geog2 public.geography, tolerance double precision, use_spheroid boolean)    ACL     �   GRANT ALL ON FUNCTION public._st_dwithin(geog1 public.geography, geog2 public.geography, tolerance double precision, use_spheroid boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    890            �           0    0 R   FUNCTION _st_dwithinuncached(public.geography, public.geography, double precision)    ACL     �   GRANT ALL ON FUNCTION public._st_dwithinuncached(public.geography, public.geography, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    864            �           0    0 [   FUNCTION _st_dwithinuncached(public.geography, public.geography, double precision, boolean)    ACL     �   GRANT ALL ON FUNCTION public._st_dwithinuncached(public.geography, public.geography, double precision, boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    863            �           0    0 A   FUNCTION _st_equals(geom1 public.geometry, geom2 public.geometry)    ACL     x   GRANT ALL ON FUNCTION public._st_equals(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    646            �           0    0 7   FUNCTION _st_expand(public.geography, double precision)    ACL     n   GRANT ALL ON FUNCTION public._st_expand(public.geography, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    857            �           0    0 '   FUNCTION _st_geomfromgml(text, integer)    ACL     ^   GRANT ALL ON FUNCTION public._st_geomfromgml(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    675            �           0    0 E   FUNCTION _st_intersects(geom1 public.geometry, geom2 public.geometry)    ACL     |   GRANT ALL ON FUNCTION public._st_intersects(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    633            �           0    0 P   FUNCTION _st_linecrossingdirection(line1 public.geometry, line2 public.geometry)    ACL     �   GRANT ALL ON FUNCTION public._st_linecrossingdirection(line1 public.geometry, line2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    630            �           0    0 F   FUNCTION _st_longestline(geom1 public.geometry, geom2 public.geometry)    ACL     }   GRANT ALL ON FUNCTION public._st_longestline(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    799            �           0    0 F   FUNCTION _st_maxdistance(geom1 public.geometry, geom2 public.geometry)    ACL     }   GRANT ALL ON FUNCTION public._st_maxdistance(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    795            �           0    0 I   FUNCTION _st_orderingequals(geom1 public.geometry, geom2 public.geometry)    ACL     �   GRANT ALL ON FUNCTION public._st_orderingequals(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    645            �           0    0 C   FUNCTION _st_overlaps(geom1 public.geometry, geom2 public.geometry)    ACL     z   GRANT ALL ON FUNCTION public._st_overlaps(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    640            �           0    0 +   FUNCTION _st_pointoutside(public.geography)    ACL     b   GRANT ALL ON FUNCTION public._st_pointoutside(public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    873            �           0    0 /   FUNCTION _st_sortablehash(geom public.geometry)    ACL     f   GRANT ALL ON FUNCTION public._st_sortablehash(geom public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    719            �           0    0 B   FUNCTION _st_touches(geom1 public.geometry, geom2 public.geometry)    ACL     y   GRANT ALL ON FUNCTION public._st_touches(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    632            �           0    0 s   FUNCTION _st_voronoi(g1 public.geometry, clip public.geometry, tolerance double precision, return_polygons boolean)    ACL     �   GRANT ALL ON FUNCTION public._st_voronoi(g1 public.geometry, clip public.geometry, tolerance double precision, return_polygons boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    598            �           0    0 A   FUNCTION _st_within(geom1 public.geometry, geom2 public.geometry)    ACL     x   GRANT ALL ON FUNCTION public._st_within(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    639            �           0    0 �   FUNCTION addgeometrycolumn(table_name character varying, column_name character varying, new_srid integer, new_type character varying, new_dim integer, use_typmod boolean)    ACL     �   GRANT ALL ON FUNCTION public.addgeometrycolumn(table_name character varying, column_name character varying, new_srid integer, new_type character varying, new_dim integer, use_typmod boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    478            �           0    0 �   FUNCTION addgeometrycolumn(schema_name character varying, table_name character varying, column_name character varying, new_srid integer, new_type character varying, new_dim integer, use_typmod boolean)    ACL        GRANT ALL ON FUNCTION public.addgeometrycolumn(schema_name character varying, table_name character varying, column_name character varying, new_srid integer, new_type character varying, new_dim integer, use_typmod boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    477            �           0    0 �   FUNCTION addgeometrycolumn(catalog_name character varying, schema_name character varying, table_name character varying, column_name character varying, new_srid_in integer, new_type character varying, new_dim integer, use_typmod boolean)    ACL     #  GRANT ALL ON FUNCTION public.addgeometrycolumn(catalog_name character varying, schema_name character varying, table_name character varying, column_name character varying, new_srid_in integer, new_type character varying, new_dim integer, use_typmod boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    476            �           0    0 !   FUNCTION box3dtobox(public.box3d)    ACL     X   GRANT ALL ON FUNCTION public.box3dtobox(public.box3d) TO intenderness_dating_m0dl_user;
          public               postgres    false    530            �           1255    17470 Z   calculate_distance(double precision, double precision, double precision, double precision)    FUNCTION     �  CREATE FUNCTION public.calculate_distance(lat1 double precision, lon1 double precision, lat2 double precision, lon2 double precision) RETURNS double precision
    LANGUAGE plpgsql
    AS $$
DECLARE
  -- Earth's radius in kilometers (6371) or miles (3959)
  earth_radius FLOAT := 6371;
  lat_diff FLOAT;
  lon_diff FLOAT;
  a FLOAT;
  c FLOAT;
BEGIN
  -- Convert latitude and longitude from degrees to radians
  lat1 := radians(lat1);
  lon1 := radians(lon1);
  lat2 := radians(lat2);
  lon2 := radians(lon2);

  -- Calculate differences in latitude and longitude
  lat_diff := lat2 - lat1;
  lon_diff := lon2 - lon1;

  -- Apply the Haversine formula
  a := sin(lat_diff / 2) * sin(lat_diff / 2) + 
       cos(lat1) * cos(lat2) * sin(lon_diff / 2) * sin(lon_diff / 2);

  c := 2 * atan2(sqrt(a), sqrt(1 - a));

  -- Calculate the distance
  RETURN earth_radius * c;  -- Returns distance in kilometers (change radius for miles)
END;
$$;
 �   DROP FUNCTION public.calculate_distance(lat1 double precision, lon1 double precision, lat2 double precision, lon2 double precision);
       public               intenderness_dating_m0dl_user    false    6            �           0    0 2   FUNCTION contains_2d(public.box2df, public.box2df)    ACL     i   GRANT ALL ON FUNCTION public.contains_2d(public.box2df, public.box2df) TO intenderness_dating_m0dl_user;
          public               postgres    false    956            �           0    0 4   FUNCTION contains_2d(public.box2df, public.geometry)    ACL     k   GRANT ALL ON FUNCTION public.contains_2d(public.box2df, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    952            �           0    0 4   FUNCTION contains_2d(public.geometry, public.box2df)    ACL     k   GRANT ALL ON FUNCTION public.contains_2d(public.geometry, public.box2df) TO intenderness_dating_m0dl_user;
          public               postgres    false    958            �           0    0 X   FUNCTION dropgeometrycolumn(table_name character varying, column_name character varying)    ACL     �   GRANT ALL ON FUNCTION public.dropgeometrycolumn(table_name character varying, column_name character varying) TO intenderness_dating_m0dl_user;
          public               postgres    false    481            �           0    0 w   FUNCTION dropgeometrycolumn(schema_name character varying, table_name character varying, column_name character varying)    ACL     �   GRANT ALL ON FUNCTION public.dropgeometrycolumn(schema_name character varying, table_name character varying, column_name character varying) TO intenderness_dating_m0dl_user;
          public               postgres    false    480            �           0    0 �   FUNCTION dropgeometrycolumn(catalog_name character varying, schema_name character varying, table_name character varying, column_name character varying)    ACL     �   GRANT ALL ON FUNCTION public.dropgeometrycolumn(catalog_name character varying, schema_name character varying, table_name character varying, column_name character varying) TO intenderness_dating_m0dl_user;
          public               postgres    false    479            �           0    0 8   FUNCTION dropgeometrytable(table_name character varying)    ACL     o   GRANT ALL ON FUNCTION public.dropgeometrytable(table_name character varying) TO intenderness_dating_m0dl_user;
          public               postgres    false    484            �           0    0 W   FUNCTION dropgeometrytable(schema_name character varying, table_name character varying)    ACL     �   GRANT ALL ON FUNCTION public.dropgeometrytable(schema_name character varying, table_name character varying) TO intenderness_dating_m0dl_user;
          public               postgres    false    483            �           0    0 w   FUNCTION dropgeometrytable(catalog_name character varying, schema_name character varying, table_name character varying)    ACL     �   GRANT ALL ON FUNCTION public.dropgeometrytable(catalog_name character varying, schema_name character varying, table_name character varying) TO intenderness_dating_m0dl_user;
          public               postgres    false    482            �           0    0 =   FUNCTION equals(geom1 public.geometry, geom2 public.geometry)    ACL     t   GRANT ALL ON FUNCTION public.equals(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    674            �           0    0 K   FUNCTION find_srid(character varying, character varying, character varying)    ACL     �   GRANT ALL ON FUNCTION public.find_srid(character varying, character varying, character varying) TO intenderness_dating_m0dl_user;
          public               postgres    false    488            �           0    0 N   FUNCTION geog_brin_inclusion_add_value(internal, internal, internal, internal)    ACL     �   GRANT ALL ON FUNCTION public.geog_brin_inclusion_add_value(internal, internal, internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    839            �           0    0 :   FUNCTION geography_cmp(public.geography, public.geography)    ACL     q   GRANT ALL ON FUNCTION public.geography_cmp(public.geography, public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    845            �           0    0 C   FUNCTION geography_distance_knn(public.geography, public.geography)    ACL     z   GRANT ALL ON FUNCTION public.geography_distance_knn(public.geography, public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    834            �           0    0 9   FUNCTION geography_eq(public.geography, public.geography)    ACL     p   GRANT ALL ON FUNCTION public.geography_eq(public.geography, public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    844            �           0    0 9   FUNCTION geography_ge(public.geography, public.geography)    ACL     p   GRANT ALL ON FUNCTION public.geography_ge(public.geography, public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    843            �           0    0 *   FUNCTION geography_gist_compress(internal)    ACL     a   GRANT ALL ON FUNCTION public.geography_gist_compress(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    827            �           0    0 G   FUNCTION geography_gist_consistent(internal, public.geography, integer)    ACL     ~   GRANT ALL ON FUNCTION public.geography_gist_consistent(internal, public.geography, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    826            �           0    0 ,   FUNCTION geography_gist_decompress(internal)    ACL     c   GRANT ALL ON FUNCTION public.geography_gist_decompress(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    832            �           0    0 E   FUNCTION geography_gist_distance(internal, public.geography, integer)    ACL     |   GRANT ALL ON FUNCTION public.geography_gist_distance(internal, public.geography, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    835            �           0    0 =   FUNCTION geography_gist_penalty(internal, internal, internal)    ACL     t   GRANT ALL ON FUNCTION public.geography_gist_penalty(internal, internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    828            �           0    0 5   FUNCTION geography_gist_picksplit(internal, internal)    ACL     l   GRANT ALL ON FUNCTION public.geography_gist_picksplit(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    829            �           0    0 B   FUNCTION geography_gist_same(public.box2d, public.box2d, internal)    ACL     y   GRANT ALL ON FUNCTION public.geography_gist_same(public.box2d, public.box2d, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    831            �           0    0 .   FUNCTION geography_gist_union(bytea, internal)    ACL     e   GRANT ALL ON FUNCTION public.geography_gist_union(bytea, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    830            �           0    0 9   FUNCTION geography_gt(public.geography, public.geography)    ACL     p   GRANT ALL ON FUNCTION public.geography_gt(public.geography, public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    842            �           0    0 9   FUNCTION geography_le(public.geography, public.geography)    ACL     p   GRANT ALL ON FUNCTION public.geography_le(public.geography, public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    841            �           0    0 9   FUNCTION geography_lt(public.geography, public.geography)    ACL     p   GRANT ALL ON FUNCTION public.geography_lt(public.geography, public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    840            �           0    0 ?   FUNCTION geography_overlaps(public.geography, public.geography)    ACL     v   GRANT ALL ON FUNCTION public.geography_overlaps(public.geography, public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    833            �           0    0 7   FUNCTION geography_spgist_choose_nd(internal, internal)    ACL     n   GRANT ALL ON FUNCTION public.geography_spgist_choose_nd(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    996            �           0    0 /   FUNCTION geography_spgist_compress_nd(internal)    ACL     f   GRANT ALL ON FUNCTION public.geography_spgist_compress_nd(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    1000            �           0    0 7   FUNCTION geography_spgist_config_nd(internal, internal)    ACL     n   GRANT ALL ON FUNCTION public.geography_spgist_config_nd(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    995            �           0    0 A   FUNCTION geography_spgist_inner_consistent_nd(internal, internal)    ACL     x   GRANT ALL ON FUNCTION public.geography_spgist_inner_consistent_nd(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    998                        0    0 @   FUNCTION geography_spgist_leaf_consistent_nd(internal, internal)    ACL     w   GRANT ALL ON FUNCTION public.geography_spgist_leaf_consistent_nd(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    999                       0    0 :   FUNCTION geography_spgist_picksplit_nd(internal, internal)    ACL     q   GRANT ALL ON FUNCTION public.geography_spgist_picksplit_nd(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    997                       0    0 P   FUNCTION geom2d_brin_inclusion_add_value(internal, internal, internal, internal)    ACL     �   GRANT ALL ON FUNCTION public.geom2d_brin_inclusion_add_value(internal, internal, internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    964                       0    0 P   FUNCTION geom3d_brin_inclusion_add_value(internal, internal, internal, internal)    ACL     �   GRANT ALL ON FUNCTION public.geom3d_brin_inclusion_add_value(internal, internal, internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    965                       0    0 P   FUNCTION geom4d_brin_inclusion_add_value(internal, internal, internal, internal)    ACL     �   GRANT ALL ON FUNCTION public.geom4d_brin_inclusion_add_value(internal, internal, internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    966                       0    0 E   FUNCTION geometry_above(geom1 public.geometry, geom2 public.geometry)    ACL     |   GRANT ALL ON FUNCTION public.geometry_above(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    323                       0    0 E   FUNCTION geometry_below(geom1 public.geometry, geom2 public.geometry)    ACL     |   GRANT ALL ON FUNCTION public.geometry_below(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    318                       0    0 C   FUNCTION geometry_cmp(geom1 public.geometry, geom2 public.geometry)    ACL     z   GRANT ALL ON FUNCTION public.geometry_cmp(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    290                       0    0 L   FUNCTION geometry_contained_3d(geom1 public.geometry, geom2 public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.geometry_contained_3d(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    981            	           0    0 H   FUNCTION geometry_contains(geom1 public.geometry, geom2 public.geometry)    ACL        GRANT ALL ON FUNCTION public.geometry_contains(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    314            
           0    0 K   FUNCTION geometry_contains_3d(geom1 public.geometry, geom2 public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.geometry_contains_3d(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    980                       0    0 ?   FUNCTION geometry_contains_nd(public.geometry, public.geometry)    ACL     v   GRANT ALL ON FUNCTION public.geometry_contains_nd(public.geometry, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    332                       0    0 L   FUNCTION geometry_distance_box(geom1 public.geometry, geom2 public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.geometry_distance_box(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    313                       0    0 Q   FUNCTION geometry_distance_centroid(geom1 public.geometry, geom2 public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.geometry_distance_centroid(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    312                       0    0 H   FUNCTION geometry_distance_centroid_nd(public.geometry, public.geometry)    ACL        GRANT ALL ON FUNCTION public.geometry_distance_centroid_nd(public.geometry, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    335                       0    0 @   FUNCTION geometry_distance_cpa(public.geometry, public.geometry)    ACL     w   GRANT ALL ON FUNCTION public.geometry_distance_cpa(public.geometry, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    336                       0    0 B   FUNCTION geometry_eq(geom1 public.geometry, geom2 public.geometry)    ACL     y   GRANT ALL ON FUNCTION public.geometry_eq(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    288                       0    0 B   FUNCTION geometry_ge(geom1 public.geometry, geom2 public.geometry)    ACL     y   GRANT ALL ON FUNCTION public.geometry_ge(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    287                       0    0 ,   FUNCTION geometry_gist_compress_2d(internal)    ACL     c   GRANT ALL ON FUNCTION public.geometry_gist_compress_2d(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    295                       0    0 ,   FUNCTION geometry_gist_compress_nd(internal)    ACL     c   GRANT ALL ON FUNCTION public.geometry_gist_compress_nd(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    325                       0    0 H   FUNCTION geometry_gist_consistent_2d(internal, public.geometry, integer)    ACL        GRANT ALL ON FUNCTION public.geometry_gist_consistent_2d(internal, public.geometry, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    294                       0    0 H   FUNCTION geometry_gist_consistent_nd(internal, public.geometry, integer)    ACL        GRANT ALL ON FUNCTION public.geometry_gist_consistent_nd(internal, public.geometry, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    324                       0    0 .   FUNCTION geometry_gist_decompress_2d(internal)    ACL     e   GRANT ALL ON FUNCTION public.geometry_gist_decompress_2d(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    300                       0    0 .   FUNCTION geometry_gist_decompress_nd(internal)    ACL     e   GRANT ALL ON FUNCTION public.geometry_gist_decompress_nd(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    330                       0    0 F   FUNCTION geometry_gist_distance_2d(internal, public.geometry, integer)    ACL     }   GRANT ALL ON FUNCTION public.geometry_gist_distance_2d(internal, public.geometry, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    293                       0    0 F   FUNCTION geometry_gist_distance_nd(internal, public.geometry, integer)    ACL     }   GRANT ALL ON FUNCTION public.geometry_gist_distance_nd(internal, public.geometry, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    337                       0    0 ?   FUNCTION geometry_gist_penalty_2d(internal, internal, internal)    ACL     v   GRANT ALL ON FUNCTION public.geometry_gist_penalty_2d(internal, internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    296                       0    0 ?   FUNCTION geometry_gist_penalty_nd(internal, internal, internal)    ACL     v   GRANT ALL ON FUNCTION public.geometry_gist_penalty_nd(internal, internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    326                       0    0 7   FUNCTION geometry_gist_picksplit_2d(internal, internal)    ACL     n   GRANT ALL ON FUNCTION public.geometry_gist_picksplit_2d(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    297                       0    0 7   FUNCTION geometry_gist_picksplit_nd(internal, internal)    ACL     n   GRANT ALL ON FUNCTION public.geometry_gist_picksplit_nd(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    327                       0    0 V   FUNCTION geometry_gist_same_2d(geom1 public.geometry, geom2 public.geometry, internal)    ACL     �   GRANT ALL ON FUNCTION public.geometry_gist_same_2d(geom1 public.geometry, geom2 public.geometry, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    299                       0    0 J   FUNCTION geometry_gist_same_nd(public.geometry, public.geometry, internal)    ACL     �   GRANT ALL ON FUNCTION public.geometry_gist_same_nd(public.geometry, public.geometry, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    329                        0    0 /   FUNCTION geometry_gist_sortsupport_2d(internal)    ACL     f   GRANT ALL ON FUNCTION public.geometry_gist_sortsupport_2d(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    301            !           0    0 0   FUNCTION geometry_gist_union_2d(bytea, internal)    ACL     g   GRANT ALL ON FUNCTION public.geometry_gist_union_2d(bytea, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    298            "           0    0 0   FUNCTION geometry_gist_union_nd(bytea, internal)    ACL     g   GRANT ALL ON FUNCTION public.geometry_gist_union_nd(bytea, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    328            #           0    0 B   FUNCTION geometry_gt(geom1 public.geometry, geom2 public.geometry)    ACL     y   GRANT ALL ON FUNCTION public.geometry_gt(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    286            $           0    0 '   FUNCTION geometry_hash(public.geometry)    ACL     ^   GRANT ALL ON FUNCTION public.geometry_hash(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    292            %           0    0 B   FUNCTION geometry_le(geom1 public.geometry, geom2 public.geometry)    ACL     y   GRANT ALL ON FUNCTION public.geometry_le(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    285            &           0    0 D   FUNCTION geometry_left(geom1 public.geometry, geom2 public.geometry)    ACL     {   GRANT ALL ON FUNCTION public.geometry_left(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    316            '           0    0 B   FUNCTION geometry_lt(geom1 public.geometry, geom2 public.geometry)    ACL     y   GRANT ALL ON FUNCTION public.geometry_lt(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    284            (           0    0 C   FUNCTION geometry_neq(geom1 public.geometry, geom2 public.geometry)    ACL     z   GRANT ALL ON FUNCTION public.geometry_neq(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    289            )           0    0 I   FUNCTION geometry_overabove(geom1 public.geometry, geom2 public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.geometry_overabove(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    322            *           0    0 I   FUNCTION geometry_overbelow(geom1 public.geometry, geom2 public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.geometry_overbelow(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    319            +           0    0 H   FUNCTION geometry_overlaps(geom1 public.geometry, geom2 public.geometry)    ACL        GRANT ALL ON FUNCTION public.geometry_overlaps(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    310            ,           0    0 K   FUNCTION geometry_overlaps_3d(geom1 public.geometry, geom2 public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.geometry_overlaps_3d(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    979            -           0    0 ?   FUNCTION geometry_overlaps_nd(public.geometry, public.geometry)    ACL     v   GRANT ALL ON FUNCTION public.geometry_overlaps_nd(public.geometry, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    331            .           0    0 H   FUNCTION geometry_overleft(geom1 public.geometry, geom2 public.geometry)    ACL        GRANT ALL ON FUNCTION public.geometry_overleft(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    317            /           0    0 I   FUNCTION geometry_overright(geom1 public.geometry, geom2 public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.geometry_overright(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    320            0           0    0 E   FUNCTION geometry_right(geom1 public.geometry, geom2 public.geometry)    ACL     |   GRANT ALL ON FUNCTION public.geometry_right(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    321            1           0    0 D   FUNCTION geometry_same(geom1 public.geometry, geom2 public.geometry)    ACL     {   GRANT ALL ON FUNCTION public.geometry_same(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    311            2           0    0 G   FUNCTION geometry_same_3d(geom1 public.geometry, geom2 public.geometry)    ACL     ~   GRANT ALL ON FUNCTION public.geometry_same_3d(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    982            3           0    0 ;   FUNCTION geometry_same_nd(public.geometry, public.geometry)    ACL     r   GRANT ALL ON FUNCTION public.geometry_same_nd(public.geometry, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    334            4           0    0 '   FUNCTION geometry_sortsupport(internal)    ACL     ^   GRANT ALL ON FUNCTION public.geometry_sortsupport(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    291            5           0    0 6   FUNCTION geometry_spgist_choose_2d(internal, internal)    ACL     m   GRANT ALL ON FUNCTION public.geometry_spgist_choose_2d(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    974            6           0    0 6   FUNCTION geometry_spgist_choose_3d(internal, internal)    ACL     m   GRANT ALL ON FUNCTION public.geometry_spgist_choose_3d(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    984            7           0    0 6   FUNCTION geometry_spgist_choose_nd(internal, internal)    ACL     m   GRANT ALL ON FUNCTION public.geometry_spgist_choose_nd(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    990            8           0    0 .   FUNCTION geometry_spgist_compress_2d(internal)    ACL     e   GRANT ALL ON FUNCTION public.geometry_spgist_compress_2d(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    978            9           0    0 .   FUNCTION geometry_spgist_compress_3d(internal)    ACL     e   GRANT ALL ON FUNCTION public.geometry_spgist_compress_3d(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    988            :           0    0 .   FUNCTION geometry_spgist_compress_nd(internal)    ACL     e   GRANT ALL ON FUNCTION public.geometry_spgist_compress_nd(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    994            ;           0    0 6   FUNCTION geometry_spgist_config_2d(internal, internal)    ACL     m   GRANT ALL ON FUNCTION public.geometry_spgist_config_2d(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    973            <           0    0 6   FUNCTION geometry_spgist_config_3d(internal, internal)    ACL     m   GRANT ALL ON FUNCTION public.geometry_spgist_config_3d(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    983            =           0    0 6   FUNCTION geometry_spgist_config_nd(internal, internal)    ACL     m   GRANT ALL ON FUNCTION public.geometry_spgist_config_nd(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    989            >           0    0 @   FUNCTION geometry_spgist_inner_consistent_2d(internal, internal)    ACL     w   GRANT ALL ON FUNCTION public.geometry_spgist_inner_consistent_2d(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    976            ?           0    0 @   FUNCTION geometry_spgist_inner_consistent_3d(internal, internal)    ACL     w   GRANT ALL ON FUNCTION public.geometry_spgist_inner_consistent_3d(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    986            @           0    0 @   FUNCTION geometry_spgist_inner_consistent_nd(internal, internal)    ACL     w   GRANT ALL ON FUNCTION public.geometry_spgist_inner_consistent_nd(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    992            A           0    0 ?   FUNCTION geometry_spgist_leaf_consistent_2d(internal, internal)    ACL     v   GRANT ALL ON FUNCTION public.geometry_spgist_leaf_consistent_2d(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    977            B           0    0 ?   FUNCTION geometry_spgist_leaf_consistent_3d(internal, internal)    ACL     v   GRANT ALL ON FUNCTION public.geometry_spgist_leaf_consistent_3d(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    987            C           0    0 ?   FUNCTION geometry_spgist_leaf_consistent_nd(internal, internal)    ACL     v   GRANT ALL ON FUNCTION public.geometry_spgist_leaf_consistent_nd(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    993            D           0    0 9   FUNCTION geometry_spgist_picksplit_2d(internal, internal)    ACL     p   GRANT ALL ON FUNCTION public.geometry_spgist_picksplit_2d(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    975            E           0    0 9   FUNCTION geometry_spgist_picksplit_3d(internal, internal)    ACL     p   GRANT ALL ON FUNCTION public.geometry_spgist_picksplit_3d(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    985            F           0    0 9   FUNCTION geometry_spgist_picksplit_nd(internal, internal)    ACL     p   GRANT ALL ON FUNCTION public.geometry_spgist_picksplit_nd(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    991            G           0    0 F   FUNCTION geometry_within(geom1 public.geometry, geom2 public.geometry)    ACL     }   GRANT ALL ON FUNCTION public.geometry_within(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    315            H           0    0 =   FUNCTION geometry_within_nd(public.geometry, public.geometry)    ACL     t   GRANT ALL ON FUNCTION public.geometry_within_nd(public.geometry, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    333            I           0    0 '   FUNCTION geometrytype(public.geography)    ACL     ^   GRANT ALL ON FUNCTION public.geometrytype(public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    882            J           0    0 &   FUNCTION geometrytype(public.geometry)    ACL     ]   GRANT ALL ON FUNCTION public.geometrytype(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    731            K           0    0    FUNCTION geomfromewkb(bytea)    ACL     S   GRANT ALL ON FUNCTION public.geomfromewkb(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    424            L           0    0    FUNCTION geomfromewkt(text)    ACL     R   GRANT ALL ON FUNCTION public.geomfromewkt(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    427            M           0    0 %   FUNCTION get_proj4_from_srid(integer)    ACL     \   GRANT ALL ON FUNCTION public.get_proj4_from_srid(integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    489            N           0    0 G   FUNCTION gserialized_gist_joinsel_2d(internal, oid, internal, smallint)    ACL     ~   GRANT ALL ON FUNCTION public.gserialized_gist_joinsel_2d(internal, oid, internal, smallint) TO intenderness_dating_m0dl_user;
          public               postgres    false    308            O           0    0 G   FUNCTION gserialized_gist_joinsel_nd(internal, oid, internal, smallint)    ACL     ~   GRANT ALL ON FUNCTION public.gserialized_gist_joinsel_nd(internal, oid, internal, smallint) TO intenderness_dating_m0dl_user;
          public               postgres    false    309            P           0    0 B   FUNCTION gserialized_gist_sel_2d(internal, oid, internal, integer)    ACL     y   GRANT ALL ON FUNCTION public.gserialized_gist_sel_2d(internal, oid, internal, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    306            Q           0    0 B   FUNCTION gserialized_gist_sel_nd(internal, oid, internal, integer)    ACL     y   GRANT ALL ON FUNCTION public.gserialized_gist_sel_nd(internal, oid, internal, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    307            R           0    0 6   FUNCTION is_contained_2d(public.box2df, public.box2df)    ACL     m   GRANT ALL ON FUNCTION public.is_contained_2d(public.box2df, public.box2df) TO intenderness_dating_m0dl_user;
          public               postgres    false    957            S           0    0 8   FUNCTION is_contained_2d(public.box2df, public.geometry)    ACL     o   GRANT ALL ON FUNCTION public.is_contained_2d(public.box2df, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    953            T           0    0 8   FUNCTION is_contained_2d(public.geometry, public.box2df)    ACL     o   GRANT ALL ON FUNCTION public.is_contained_2d(public.geometry, public.box2df) TO intenderness_dating_m0dl_user;
          public               postgres    false    959            U           0    0 2   FUNCTION overlaps_2d(public.box2df, public.box2df)    ACL     i   GRANT ALL ON FUNCTION public.overlaps_2d(public.box2df, public.box2df) TO intenderness_dating_m0dl_user;
          public               postgres    false    955            V           0    0 4   FUNCTION overlaps_2d(public.box2df, public.geometry)    ACL     k   GRANT ALL ON FUNCTION public.overlaps_2d(public.box2df, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    954            W           0    0 4   FUNCTION overlaps_2d(public.geometry, public.box2df)    ACL     k   GRANT ALL ON FUNCTION public.overlaps_2d(public.geometry, public.box2df) TO intenderness_dating_m0dl_user;
          public               postgres    false    960            X           0    0 5   FUNCTION overlaps_geog(public.geography, public.gidx)    ACL     l   GRANT ALL ON FUNCTION public.overlaps_geog(public.geography, public.gidx) TO intenderness_dating_m0dl_user;
          public               postgres    false    838            Y           0    0 5   FUNCTION overlaps_geog(public.gidx, public.geography)    ACL     l   GRANT ALL ON FUNCTION public.overlaps_geog(public.gidx, public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    836            Z           0    0 0   FUNCTION overlaps_geog(public.gidx, public.gidx)    ACL     g   GRANT ALL ON FUNCTION public.overlaps_geog(public.gidx, public.gidx) TO intenderness_dating_m0dl_user;
          public               postgres    false    837            [           0    0 2   FUNCTION overlaps_nd(public.geometry, public.gidx)    ACL     i   GRANT ALL ON FUNCTION public.overlaps_nd(public.geometry, public.gidx) TO intenderness_dating_m0dl_user;
          public               postgres    false    963            \           0    0 2   FUNCTION overlaps_nd(public.gidx, public.geometry)    ACL     i   GRANT ALL ON FUNCTION public.overlaps_nd(public.gidx, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    961            ]           0    0 .   FUNCTION overlaps_nd(public.gidx, public.gidx)    ACL     e   GRANT ALL ON FUNCTION public.overlaps_nd(public.gidx, public.gidx) TO intenderness_dating_m0dl_user;
          public               postgres    false    962            ^           0    0 ,   FUNCTION pgis_asflatgeobuf_finalfn(internal)    ACL     c   GRANT ALL ON FUNCTION public.pgis_asflatgeobuf_finalfn(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    715            _           0    0 8   FUNCTION pgis_asflatgeobuf_transfn(internal, anyelement)    ACL     o   GRANT ALL ON FUNCTION public.pgis_asflatgeobuf_transfn(internal, anyelement) TO intenderness_dating_m0dl_user;
          public               postgres    false    712            `           0    0 A   FUNCTION pgis_asflatgeobuf_transfn(internal, anyelement, boolean)    ACL     x   GRANT ALL ON FUNCTION public.pgis_asflatgeobuf_transfn(internal, anyelement, boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    713            a           0    0 G   FUNCTION pgis_asflatgeobuf_transfn(internal, anyelement, boolean, text)    ACL     ~   GRANT ALL ON FUNCTION public.pgis_asflatgeobuf_transfn(internal, anyelement, boolean, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    714            b           0    0 (   FUNCTION pgis_asgeobuf_finalfn(internal)    ACL     _   GRANT ALL ON FUNCTION public.pgis_asgeobuf_finalfn(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    711            c           0    0 4   FUNCTION pgis_asgeobuf_transfn(internal, anyelement)    ACL     k   GRANT ALL ON FUNCTION public.pgis_asgeobuf_transfn(internal, anyelement) TO intenderness_dating_m0dl_user;
          public               postgres    false    709            d           0    0 :   FUNCTION pgis_asgeobuf_transfn(internal, anyelement, text)    ACL     q   GRANT ALL ON FUNCTION public.pgis_asgeobuf_transfn(internal, anyelement, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    710            e           0    0 1   FUNCTION pgis_asmvt_combinefn(internal, internal)    ACL     h   GRANT ALL ON FUNCTION public.pgis_asmvt_combinefn(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    704            f           0    0 /   FUNCTION pgis_asmvt_deserialfn(bytea, internal)    ACL     f   GRANT ALL ON FUNCTION public.pgis_asmvt_deserialfn(bytea, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    706            g           0    0 %   FUNCTION pgis_asmvt_finalfn(internal)    ACL     \   GRANT ALL ON FUNCTION public.pgis_asmvt_finalfn(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    703            h           0    0 &   FUNCTION pgis_asmvt_serialfn(internal)    ACL     ]   GRANT ALL ON FUNCTION public.pgis_asmvt_serialfn(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    705            i           0    0 1   FUNCTION pgis_asmvt_transfn(internal, anyelement)    ACL     h   GRANT ALL ON FUNCTION public.pgis_asmvt_transfn(internal, anyelement) TO intenderness_dating_m0dl_user;
          public               postgres    false    698            j           0    0 7   FUNCTION pgis_asmvt_transfn(internal, anyelement, text)    ACL     n   GRANT ALL ON FUNCTION public.pgis_asmvt_transfn(internal, anyelement, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    699            k           0    0 @   FUNCTION pgis_asmvt_transfn(internal, anyelement, text, integer)    ACL     w   GRANT ALL ON FUNCTION public.pgis_asmvt_transfn(internal, anyelement, text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    700            l           0    0 F   FUNCTION pgis_asmvt_transfn(internal, anyelement, text, integer, text)    ACL     }   GRANT ALL ON FUNCTION public.pgis_asmvt_transfn(internal, anyelement, text, integer, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    701            m           0    0 L   FUNCTION pgis_asmvt_transfn(internal, anyelement, text, integer, text, text)    ACL     �   GRANT ALL ON FUNCTION public.pgis_asmvt_transfn(internal, anyelement, text, integer, text, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    702            n           0    0 ?   FUNCTION pgis_geometry_accum_transfn(internal, public.geometry)    ACL     v   GRANT ALL ON FUNCTION public.pgis_geometry_accum_transfn(internal, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    606            o           0    0 Q   FUNCTION pgis_geometry_accum_transfn(internal, public.geometry, double precision)    ACL     �   GRANT ALL ON FUNCTION public.pgis_geometry_accum_transfn(internal, public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    607            p           0    0 Z   FUNCTION pgis_geometry_accum_transfn(internal, public.geometry, double precision, integer)    ACL     �   GRANT ALL ON FUNCTION public.pgis_geometry_accum_transfn(internal, public.geometry, double precision, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    608            q           0    0 <   FUNCTION pgis_geometry_clusterintersecting_finalfn(internal)    ACL     s   GRANT ALL ON FUNCTION public.pgis_geometry_clusterintersecting_finalfn(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    611            r           0    0 6   FUNCTION pgis_geometry_clusterwithin_finalfn(internal)    ACL     m   GRANT ALL ON FUNCTION public.pgis_geometry_clusterwithin_finalfn(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    612            s           0    0 0   FUNCTION pgis_geometry_collect_finalfn(internal)    ACL     g   GRANT ALL ON FUNCTION public.pgis_geometry_collect_finalfn(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    609            t           0    0 6   FUNCTION pgis_geometry_coverageunion_finalfn(internal)    ACL     m   GRANT ALL ON FUNCTION public.pgis_geometry_coverageunion_finalfn(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    614            u           0    0 1   FUNCTION pgis_geometry_makeline_finalfn(internal)    ACL     h   GRANT ALL ON FUNCTION public.pgis_geometry_makeline_finalfn(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    613            v           0    0 3   FUNCTION pgis_geometry_polygonize_finalfn(internal)    ACL     j   GRANT ALL ON FUNCTION public.pgis_geometry_polygonize_finalfn(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    610            w           0    0 C   FUNCTION pgis_geometry_union_parallel_combinefn(internal, internal)    ACL     z   GRANT ALL ON FUNCTION public.pgis_geometry_union_parallel_combinefn(internal, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    617            x           0    0 A   FUNCTION pgis_geometry_union_parallel_deserialfn(bytea, internal)    ACL     x   GRANT ALL ON FUNCTION public.pgis_geometry_union_parallel_deserialfn(bytea, internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    619            y           0    0 7   FUNCTION pgis_geometry_union_parallel_finalfn(internal)    ACL     n   GRANT ALL ON FUNCTION public.pgis_geometry_union_parallel_finalfn(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    620            z           0    0 8   FUNCTION pgis_geometry_union_parallel_serialfn(internal)    ACL     o   GRANT ALL ON FUNCTION public.pgis_geometry_union_parallel_serialfn(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    618            {           0    0 H   FUNCTION pgis_geometry_union_parallel_transfn(internal, public.geometry)    ACL        GRANT ALL ON FUNCTION public.pgis_geometry_union_parallel_transfn(internal, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    615            |           0    0 Z   FUNCTION pgis_geometry_union_parallel_transfn(internal, public.geometry, double precision)    ACL     �   GRANT ALL ON FUNCTION public.pgis_geometry_union_parallel_transfn(internal, public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    616            }           0    0 6   FUNCTION populate_geometry_columns(use_typmod boolean)    ACL     m   GRANT ALL ON FUNCTION public.populate_geometry_columns(use_typmod boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    474            ~           0    0 C   FUNCTION populate_geometry_columns(tbl_oid oid, use_typmod boolean)    ACL     z   GRANT ALL ON FUNCTION public.populate_geometry_columns(tbl_oid oid, use_typmod boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    475                       0    0 )   FUNCTION postgis_addbbox(public.geometry)    ACL     `   GRANT ALL ON FUNCTION public.postgis_addbbox(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    355            �           0    0    FUNCTION postgis_cache_bbox()    ACL     T   GRANT ALL ON FUNCTION public.postgis_cache_bbox() TO intenderness_dating_m0dl_user;
          public               postgres    false    429            �           0    0 R   FUNCTION postgis_constraint_dims(geomschema text, geomtable text, geomcolumn text)    ACL     �   GRANT ALL ON FUNCTION public.postgis_constraint_dims(geomschema text, geomtable text, geomcolumn text) TO intenderness_dating_m0dl_user;
          public               postgres    false    924            �           0    0 R   FUNCTION postgis_constraint_srid(geomschema text, geomtable text, geomcolumn text)    ACL     �   GRANT ALL ON FUNCTION public.postgis_constraint_srid(geomschema text, geomtable text, geomcolumn text) TO intenderness_dating_m0dl_user;
          public               postgres    false    923            �           0    0 R   FUNCTION postgis_constraint_type(geomschema text, geomtable text, geomcolumn text)    ACL     �   GRANT ALL ON FUNCTION public.postgis_constraint_type(geomschema text, geomtable text, geomcolumn text) TO intenderness_dating_m0dl_user;
          public               postgres    false    925            �           0    0 *   FUNCTION postgis_dropbbox(public.geometry)    ACL     a   GRANT ALL ON FUNCTION public.postgis_dropbbox(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    356            �           0    0 8   FUNCTION postgis_extensions_upgrade(target_version text)    ACL     o   GRANT ALL ON FUNCTION public.postgis_extensions_upgrade(target_version text) TO intenderness_dating_m0dl_user;
          public               postgres    false    521            �           0    0    FUNCTION postgis_full_version()    ACL     V   GRANT ALL ON FUNCTION public.postgis_full_version() TO intenderness_dating_m0dl_user;
          public               postgres    false    522            �           0    0 (   FUNCTION postgis_geos_compiled_version()    ACL     _   GRANT ALL ON FUNCTION public.postgis_geos_compiled_version() TO intenderness_dating_m0dl_user;
          public               postgres    false    513            �           0    0 +   FUNCTION postgis_geos_noop(public.geometry)    ACL     b   GRANT ALL ON FUNCTION public.postgis_geos_noop(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    409            �           0    0    FUNCTION postgis_geos_version()    ACL     V   GRANT ALL ON FUNCTION public.postgis_geos_version() TO intenderness_dating_m0dl_user;
          public               postgres    false    512            �           0    0 )   FUNCTION postgis_getbbox(public.geometry)    ACL     `   GRANT ALL ON FUNCTION public.postgis_getbbox(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    348            �           0    0 )   FUNCTION postgis_hasbbox(public.geometry)    ACL     `   GRANT ALL ON FUNCTION public.postgis_hasbbox(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    357            �           0    0 *   FUNCTION postgis_index_supportfn(internal)    ACL     a   GRANT ALL ON FUNCTION public.postgis_index_supportfn(internal) TO intenderness_dating_m0dl_user;
          public               postgres    false    647            �           0    0 !   FUNCTION postgis_lib_build_date()    ACL     X   GRANT ALL ON FUNCTION public.postgis_lib_build_date() TO intenderness_dating_m0dl_user;
          public               postgres    false    518            �           0    0    FUNCTION postgis_lib_revision()    ACL     V   GRANT ALL ON FUNCTION public.postgis_lib_revision() TO intenderness_dating_m0dl_user;
          public               postgres    false    514            �           0    0    FUNCTION postgis_lib_version()    ACL     U   GRANT ALL ON FUNCTION public.postgis_lib_version() TO intenderness_dating_m0dl_user;
          public               postgres    false    510            �           0    0 "   FUNCTION postgis_libjson_version()    ACL     Y   GRANT ALL ON FUNCTION public.postgis_libjson_version() TO intenderness_dating_m0dl_user;
          public               postgres    false    686            �           0    0 $   FUNCTION postgis_liblwgeom_version()    ACL     [   GRANT ALL ON FUNCTION public.postgis_liblwgeom_version() TO intenderness_dating_m0dl_user;
          public               postgres    false    505            �           0    0 &   FUNCTION postgis_libprotobuf_version()    ACL     ]   GRANT ALL ON FUNCTION public.postgis_libprotobuf_version() TO intenderness_dating_m0dl_user;
          public               postgres    false    708            �           0    0 !   FUNCTION postgis_libxml_version()    ACL     X   GRANT ALL ON FUNCTION public.postgis_libxml_version() TO intenderness_dating_m0dl_user;
          public               postgres    false    516            �           0    0 &   FUNCTION postgis_noop(public.geometry)    ACL     ]   GRANT ALL ON FUNCTION public.postgis_noop(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    408            �           0    0 (   FUNCTION postgis_proj_compiled_version()    ACL     _   GRANT ALL ON FUNCTION public.postgis_proj_compiled_version() TO intenderness_dating_m0dl_user;
          public               postgres    false    507            �           0    0    FUNCTION postgis_proj_version()    ACL     V   GRANT ALL ON FUNCTION public.postgis_proj_version() TO intenderness_dating_m0dl_user;
          public               postgres    false    506            �           0    0 %   FUNCTION postgis_scripts_build_date()    ACL     \   GRANT ALL ON FUNCTION public.postgis_scripts_build_date() TO intenderness_dating_m0dl_user;
          public               postgres    false    517            �           0    0 $   FUNCTION postgis_scripts_installed()    ACL     [   GRANT ALL ON FUNCTION public.postgis_scripts_installed() TO intenderness_dating_m0dl_user;
          public               postgres    false    509            �           0    0 #   FUNCTION postgis_scripts_released()    ACL     Z   GRANT ALL ON FUNCTION public.postgis_scripts_released() TO intenderness_dating_m0dl_user;
          public               postgres    false    511            �           0    0 4   FUNCTION postgis_srs(auth_name text, auth_srid text)    ACL     k   GRANT ALL ON FUNCTION public.postgis_srs(auth_name text, auth_srid text) TO intenderness_dating_m0dl_user;
          public               postgres    false    494            �           0    0    FUNCTION postgis_srs_all()    ACL     Q   GRANT ALL ON FUNCTION public.postgis_srs_all() TO intenderness_dating_m0dl_user;
          public               postgres    false    495            �           0    0 *   FUNCTION postgis_srs_codes(auth_name text)    ACL     a   GRANT ALL ON FUNCTION public.postgis_srs_codes(auth_name text) TO intenderness_dating_m0dl_user;
          public               postgres    false    493            �           0    0 B   FUNCTION postgis_srs_search(bounds public.geometry, authname text)    ACL     y   GRANT ALL ON FUNCTION public.postgis_srs_search(bounds public.geometry, authname text) TO intenderness_dating_m0dl_user;
          public               postgres    false    496            �           0    0    FUNCTION postgis_svn_version()    ACL     U   GRANT ALL ON FUNCTION public.postgis_svn_version() TO intenderness_dating_m0dl_user;
          public               postgres    false    515            �           0    0 N   FUNCTION postgis_transform_geometry(geom public.geometry, text, text, integer)    ACL     �   GRANT ALL ON FUNCTION public.postgis_transform_geometry(geom public.geometry, text, text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    492            �           0    0 s   FUNCTION postgis_transform_pipeline_geometry(geom public.geometry, pipeline text, forward boolean, to_srid integer)    ACL     �   GRANT ALL ON FUNCTION public.postgis_transform_pipeline_geometry(geom public.geometry, pipeline text, forward boolean, to_srid integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    501            �           0    0 e   FUNCTION postgis_type_name(geomname character varying, coord_dimension integer, use_new_name boolean)    ACL     �   GRANT ALL ON FUNCTION public.postgis_type_name(geomname character varying, coord_dimension integer, use_new_name boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    922            �           0    0 %   FUNCTION postgis_typmod_dims(integer)    ACL     \   GRANT ALL ON FUNCTION public.postgis_typmod_dims(integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    821            �           0    0 %   FUNCTION postgis_typmod_srid(integer)    ACL     \   GRANT ALL ON FUNCTION public.postgis_typmod_srid(integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    822            �           0    0 %   FUNCTION postgis_typmod_type(integer)    ACL     \   GRANT ALL ON FUNCTION public.postgis_typmod_type(integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    823            �           0    0    FUNCTION postgis_version()    ACL     Q   GRANT ALL ON FUNCTION public.postgis_version() TO intenderness_dating_m0dl_user;
          public               postgres    false    504            �           0    0     FUNCTION postgis_wagyu_version()    ACL     W   GRANT ALL ON FUNCTION public.postgis_wagyu_version() TO intenderness_dating_m0dl_user;
          public               postgres    false    508            �           0    0 H   FUNCTION st_3dclosestpoint(geom1 public.geometry, geom2 public.geometry)    ACL        GRANT ALL ON FUNCTION public.st_3dclosestpoint(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    928            �           0    0 Z   FUNCTION st_3ddfullywithin(geom1 public.geometry, geom2 public.geometry, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_3ddfullywithin(geom1 public.geometry, geom2 public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    661            �           0    0 D   FUNCTION st_3ddistance(geom1 public.geometry, geom2 public.geometry)    ACL     {   GRANT ALL ON FUNCTION public.st_3ddistance(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    926            �           0    0 U   FUNCTION st_3ddwithin(geom1 public.geometry, geom2 public.geometry, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_3ddwithin(geom1 public.geometry, geom2 public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    660            �           0    0 F   FUNCTION st_3dintersects(geom1 public.geometry, geom2 public.geometry)    ACL     }   GRANT ALL ON FUNCTION public.st_3dintersects(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    662            �           0    0 %   FUNCTION st_3dlength(public.geometry)    ACL     \   GRANT ALL ON FUNCTION public.st_3dlength(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    363            �           0    0 E   FUNCTION st_3dlineinterpolatepoint(public.geometry, double precision)    ACL     |   GRANT ALL ON FUNCTION public.st_3dlineinterpolatepoint(public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    972            �           0    0 G   FUNCTION st_3dlongestline(geom1 public.geometry, geom2 public.geometry)    ACL     ~   GRANT ALL ON FUNCTION public.st_3dlongestline(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    930            �           0    0 C   FUNCTION st_3dmakebox(geom1 public.geometry, geom2 public.geometry)    ACL     z   GRANT ALL ON FUNCTION public.st_3dmakebox(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    434            �           0    0 G   FUNCTION st_3dmaxdistance(geom1 public.geometry, geom2 public.geometry)    ACL     ~   GRANT ALL ON FUNCTION public.st_3dmaxdistance(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    927            �           0    0 (   FUNCTION st_3dperimeter(public.geometry)    ACL     _   GRANT ALL ON FUNCTION public.st_3dperimeter(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    368            �           0    0 H   FUNCTION st_3dshortestline(geom1 public.geometry, geom2 public.geometry)    ACL        GRANT ALL ON FUNCTION public.st_3dshortestline(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    929            �           0    0 K   FUNCTION st_addmeasure(public.geometry, double precision, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_addmeasure(public.geometry, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    551            �           0    0 B   FUNCTION st_addpoint(geom1 public.geometry, geom2 public.geometry)    ACL     y   GRANT ALL ON FUNCTION public.st_addpoint(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    438            �           0    0 K   FUNCTION st_addpoint(geom1 public.geometry, geom2 public.geometry, integer)    ACL     �   GRANT ALL ON FUNCTION public.st_addpoint(geom1 public.geometry, geom2 public.geometry, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    439            �           0    0 �   FUNCTION st_affine(public.geometry, double precision, double precision, double precision, double precision, double precision, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_affine(public.geometry, double precision, double precision, double precision, double precision, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    456            �           0    0 �   FUNCTION st_affine(public.geometry, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision)    ACL     2  GRANT ALL ON FUNCTION public.st_affine(public.geometry, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    455            �           0    0 ?   FUNCTION st_angle(line1 public.geometry, line2 public.geometry)    ACL     v   GRANT ALL ON FUNCTION public.st_angle(line1 public.geometry, line2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    971            �           0    0 e   FUNCTION st_angle(pt1 public.geometry, pt2 public.geometry, pt3 public.geometry, pt4 public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.st_angle(pt1 public.geometry, pt2 public.geometry, pt3 public.geometry, pt4 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    382            �           0    0    FUNCTION st_area(text)    ACL     M   GRANT ALL ON FUNCTION public.st_area(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    866            �           0    0 !   FUNCTION st_area(public.geometry)    ACL     X   GRANT ALL ON FUNCTION public.st_area(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    372            �           0    0 =   FUNCTION st_area(geog public.geography, use_spheroid boolean)    ACL     t   GRANT ALL ON FUNCTION public.st_area(geog public.geography, use_spheroid boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    865            �           0    0 #   FUNCTION st_area2d(public.geometry)    ACL     Z   GRANT ALL ON FUNCTION public.st_area2d(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    371            �           0    0 &   FUNCTION st_asbinary(public.geography)    ACL     ]   GRANT ALL ON FUNCTION public.st_asbinary(public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    877            �           0    0 %   FUNCTION st_asbinary(public.geometry)    ACL     \   GRANT ALL ON FUNCTION public.st_asbinary(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    741            �           0    0 ,   FUNCTION st_asbinary(public.geography, text)    ACL     c   GRANT ALL ON FUNCTION public.st_asbinary(public.geography, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    878            �           0    0 +   FUNCTION st_asbinary(public.geometry, text)    ACL     b   GRANT ALL ON FUNCTION public.st_asbinary(public.geometry, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    740            �           0    0 G   FUNCTION st_asencodedpolyline(geom public.geometry, nprecision integer)    ACL     ~   GRANT ALL ON FUNCTION public.st_asencodedpolyline(geom public.geometry, nprecision integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    688            �           0    0 #   FUNCTION st_asewkb(public.geometry)    ACL     Z   GRANT ALL ON FUNCTION public.st_asewkb(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    419            �           0    0 )   FUNCTION st_asewkb(public.geometry, text)    ACL     `   GRANT ALL ON FUNCTION public.st_asewkb(public.geometry, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    422            �           0    0    FUNCTION st_asewkt(text)    ACL     O   GRANT ALL ON FUNCTION public.st_asewkt(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    881            �           0    0 $   FUNCTION st_asewkt(public.geography)    ACL     [   GRANT ALL ON FUNCTION public.st_asewkt(public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    879            �           0    0 #   FUNCTION st_asewkt(public.geometry)    ACL     Z   GRANT ALL ON FUNCTION public.st_asewkt(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    415            �           0    0 -   FUNCTION st_asewkt(public.geography, integer)    ACL     d   GRANT ALL ON FUNCTION public.st_asewkt(public.geography, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    880            �           0    0 ,   FUNCTION st_asewkt(public.geometry, integer)    ACL     c   GRANT ALL ON FUNCTION public.st_asewkt(public.geometry, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    416            �           0    0    FUNCTION st_asgeojson(text)    ACL     R   GRANT ALL ON FUNCTION public.st_asgeojson(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    854            �           0    0 W   FUNCTION st_asgeojson(geog public.geography, maxdecimaldigits integer, options integer)    ACL     �   GRANT ALL ON FUNCTION public.st_asgeojson(geog public.geography, maxdecimaldigits integer, options integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    853            �           0    0 V   FUNCTION st_asgeojson(geom public.geometry, maxdecimaldigits integer, options integer)    ACL     �   GRANT ALL ON FUNCTION public.st_asgeojson(geom public.geometry, maxdecimaldigits integer, options integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    694            �           0    0 p   FUNCTION st_asgeojson(r record, geom_column text, maxdecimaldigits integer, pretty_bool boolean, id_column text)    ACL     �   GRANT ALL ON FUNCTION public.st_asgeojson(r record, geom_column text, maxdecimaldigits integer, pretty_bool boolean, id_column text) TO intenderness_dating_m0dl_user;
          public               postgres    false    695            �           0    0    FUNCTION st_asgml(text)    ACL     N   GRANT ALL ON FUNCTION public.st_asgml(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    850            �           0    0 R   FUNCTION st_asgml(geom public.geometry, maxdecimaldigits integer, options integer)    ACL     �   GRANT ALL ON FUNCTION public.st_asgml(geom public.geometry, maxdecimaldigits integer, options integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    691            �           0    0 j   FUNCTION st_asgml(geog public.geography, maxdecimaldigits integer, options integer, nprefix text, id text)    ACL     �   GRANT ALL ON FUNCTION public.st_asgml(geog public.geography, maxdecimaldigits integer, options integer, nprefix text, id text) TO intenderness_dating_m0dl_user;
          public               postgres    false    849            �           0    0 {   FUNCTION st_asgml(version integer, geog public.geography, maxdecimaldigits integer, options integer, nprefix text, id text)    ACL     �   GRANT ALL ON FUNCTION public.st_asgml(version integer, geog public.geography, maxdecimaldigits integer, options integer, nprefix text, id text) TO intenderness_dating_m0dl_user;
          public               postgres    false    848            �           0    0 z   FUNCTION st_asgml(version integer, geom public.geometry, maxdecimaldigits integer, options integer, nprefix text, id text)    ACL     �   GRANT ALL ON FUNCTION public.st_asgml(version integer, geom public.geometry, maxdecimaldigits integer, options integer, nprefix text, id text) TO intenderness_dating_m0dl_user;
          public               postgres    false    692            �           0    0 &   FUNCTION st_ashexewkb(public.geometry)    ACL     ]   GRANT ALL ON FUNCTION public.st_ashexewkb(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    420            �           0    0 ,   FUNCTION st_ashexewkb(public.geometry, text)    ACL     c   GRANT ALL ON FUNCTION public.st_ashexewkb(public.geometry, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    421            �           0    0    FUNCTION st_askml(text)    ACL     N   GRANT ALL ON FUNCTION public.st_askml(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    852            �           0    0 P   FUNCTION st_askml(geog public.geography, maxdecimaldigits integer, nprefix text)    ACL     �   GRANT ALL ON FUNCTION public.st_askml(geog public.geography, maxdecimaldigits integer, nprefix text) TO intenderness_dating_m0dl_user;
          public               postgres    false    851            �           0    0 O   FUNCTION st_askml(geom public.geometry, maxdecimaldigits integer, nprefix text)    ACL     �   GRANT ALL ON FUNCTION public.st_askml(geom public.geometry, maxdecimaldigits integer, nprefix text) TO intenderness_dating_m0dl_user;
          public               postgres    false    693            �           0    0 9   FUNCTION st_aslatlontext(geom public.geometry, tmpl text)    ACL     p   GRANT ALL ON FUNCTION public.st_aslatlontext(geom public.geometry, tmpl text) TO intenderness_dating_m0dl_user;
          public               postgres    false    423            �           0    0 7   FUNCTION st_asmarc21(geom public.geometry, format text)    ACL     n   GRANT ALL ON FUNCTION public.st_asmarc21(geom public.geometry, format text) TO intenderness_dating_m0dl_user;
          public               postgres    false    682            �           0    0 s   FUNCTION st_asmvtgeom(geom public.geometry, bounds public.box2d, extent integer, buffer integer, clip_geom boolean)    ACL     �   GRANT ALL ON FUNCTION public.st_asmvtgeom(geom public.geometry, bounds public.box2d, extent integer, buffer integer, clip_geom boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    707            �           0    0    FUNCTION st_assvg(text)    ACL     N   GRANT ALL ON FUNCTION public.st_assvg(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    847            �           0    0 O   FUNCTION st_assvg(geog public.geography, rel integer, maxdecimaldigits integer)    ACL     �   GRANT ALL ON FUNCTION public.st_assvg(geog public.geography, rel integer, maxdecimaldigits integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    846            �           0    0 N   FUNCTION st_assvg(geom public.geometry, rel integer, maxdecimaldigits integer)    ACL     �   GRANT ALL ON FUNCTION public.st_assvg(geom public.geometry, rel integer, maxdecimaldigits integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    689            �           0    0    FUNCTION st_astext(text)    ACL     O   GRANT ALL ON FUNCTION public.st_astext(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    817            �           0    0 $   FUNCTION st_astext(public.geography)    ACL     [   GRANT ALL ON FUNCTION public.st_astext(public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    815            �           0    0 #   FUNCTION st_astext(public.geometry)    ACL     Z   GRANT ALL ON FUNCTION public.st_astext(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    742            �           0    0 -   FUNCTION st_astext(public.geography, integer)    ACL     d   GRANT ALL ON FUNCTION public.st_astext(public.geography, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    816            �           0    0 ,   FUNCTION st_astext(public.geometry, integer)    ACL     c   GRANT ALL ON FUNCTION public.st_astext(public.geometry, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    743            �           0    0 ~   FUNCTION st_astwkb(geom public.geometry, prec integer, prec_z integer, prec_m integer, with_sizes boolean, with_boxes boolean)    ACL     �   GRANT ALL ON FUNCTION public.st_astwkb(geom public.geometry, prec integer, prec_z integer, prec_m integer, with_sizes boolean, with_boxes boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    417            �           0    0 �   FUNCTION st_astwkb(geom public.geometry[], ids bigint[], prec integer, prec_z integer, prec_m integer, with_sizes boolean, with_boxes boolean)    ACL     �   GRANT ALL ON FUNCTION public.st_astwkb(geom public.geometry[], ids bigint[], prec integer, prec_z integer, prec_m integer, with_sizes boolean, with_boxes boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    418            �           0    0 R   FUNCTION st_asx3d(geom public.geometry, maxdecimaldigits integer, options integer)    ACL     �   GRANT ALL ON FUNCTION public.st_asx3d(geom public.geometry, maxdecimaldigits integer, options integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    970            �           0    0 C   FUNCTION st_azimuth(geog1 public.geography, geog2 public.geography)    ACL     z   GRANT ALL ON FUNCTION public.st_azimuth(geog1 public.geography, geog2 public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    871            �           0    0 A   FUNCTION st_azimuth(geom1 public.geometry, geom2 public.geometry)    ACL     x   GRANT ALL ON FUNCTION public.st_azimuth(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    379            �           0    0 *   FUNCTION st_bdmpolyfromtext(text, integer)    ACL     a   GRANT ALL ON FUNCTION public.st_bdmpolyfromtext(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    804            �           0    0 )   FUNCTION st_bdpolyfromtext(text, integer)    ACL     `   GRANT ALL ON FUNCTION public.st_bdpolyfromtext(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    803            �           0    0 %   FUNCTION st_boundary(public.geometry)    ACL     \   GRANT ALL ON FUNCTION public.st_boundary(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    577            �           0    0 @   FUNCTION st_boundingdiagonal(geom public.geometry, fits boolean)    ACL     w   GRANT ALL ON FUNCTION public.st_boundingdiagonal(geom public.geometry, fits boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    402            �           0    0 +   FUNCTION st_box2dfromgeohash(text, integer)    ACL     b   GRANT ALL ON FUNCTION public.st_box2dfromgeohash(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    720            �           0    0 *   FUNCTION st_buffer(text, double precision)    ACL     a   GRANT ALL ON FUNCTION public.st_buffer(text, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    899            �           0    0 6   FUNCTION st_buffer(public.geography, double precision)    ACL     m   GRANT ALL ON FUNCTION public.st_buffer(public.geography, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    896            �           0    0 3   FUNCTION st_buffer(text, double precision, integer)    ACL     j   GRANT ALL ON FUNCTION public.st_buffer(text, double precision, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    900            �           0    0 0   FUNCTION st_buffer(text, double precision, text)    ACL     g   GRANT ALL ON FUNCTION public.st_buffer(text, double precision, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    901            �           0    0 ?   FUNCTION st_buffer(public.geography, double precision, integer)    ACL     v   GRANT ALL ON FUNCTION public.st_buffer(public.geography, double precision, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    897            �           0    0 <   FUNCTION st_buffer(public.geography, double precision, text)    ACL     s   GRANT ALL ON FUNCTION public.st_buffer(public.geography, double precision, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    898            �           0    0 S   FUNCTION st_buffer(geom public.geometry, radius double precision, quadsegs integer)    ACL     �   GRANT ALL ON FUNCTION public.st_buffer(geom public.geometry, radius double precision, quadsegs integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    558            �           0    0 O   FUNCTION st_buffer(geom public.geometry, radius double precision, options text)    ACL     �   GRANT ALL ON FUNCTION public.st_buffer(geom public.geometry, radius double precision, options text) TO intenderness_dating_m0dl_user;
          public               postgres    false    557            �           0    0 &   FUNCTION st_buildarea(public.geometry)    ACL     ]   GRANT ALL ON FUNCTION public.st_buildarea(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    446            �           0    0    FUNCTION st_centroid(text)    ACL     Q   GRANT ALL ON FUNCTION public.st_centroid(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    888            �           0    0 %   FUNCTION st_centroid(public.geometry)    ACL     \   GRANT ALL ON FUNCTION public.st_centroid(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    668            �           0    0 <   FUNCTION st_centroid(public.geography, use_spheroid boolean)    ACL     s   GRANT ALL ON FUNCTION public.st_centroid(public.geography, use_spheroid boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    887            �           0    0 ?   FUNCTION st_chaikinsmoothing(public.geometry, integer, boolean)    ACL     v   GRANT ALL ON FUNCTION public.st_chaikinsmoothing(public.geometry, integer, boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    541            �           0    0 *   FUNCTION st_cleangeometry(public.geometry)    ACL     a   GRANT ALL ON FUNCTION public.st_cleangeometry(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    590            �           0    0 ?   FUNCTION st_clipbybox2d(geom public.geometry, box public.box2d)    ACL     v   GRANT ALL ON FUNCTION public.st_clipbybox2d(geom public.geometry, box public.box2d) TO intenderness_dating_m0dl_user;
          public               postgres    false    585            �           0    0 $   FUNCTION st_closestpoint(text, text)    ACL     [   GRANT ALL ON FUNCTION public.st_closestpoint(text, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    909            �           0    0 F   FUNCTION st_closestpoint(geom1 public.geometry, geom2 public.geometry)    ACL     }   GRANT ALL ON FUNCTION public.st_closestpoint(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    797            �           0    0 R   FUNCTION st_closestpoint(public.geography, public.geography, use_spheroid boolean)    ACL     �   GRANT ALL ON FUNCTION public.st_closestpoint(public.geography, public.geography, use_spheroid boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    908            �           0    0 D   FUNCTION st_closestpointofapproach(public.geometry, public.geometry)    ACL     {   GRANT ALL ON FUNCTION public.st_closestpointofapproach(public.geometry, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    552                        0    0 S   FUNCTION st_clusterdbscan(public.geometry, eps double precision, minpoints integer)    ACL     �   GRANT ALL ON FUNCTION public.st_clusterdbscan(public.geometry, eps double precision, minpoints integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    450                       0    0 2   FUNCTION st_clusterintersecting(public.geometry[])    ACL     i   GRANT ALL ON FUNCTION public.st_clusterintersecting(public.geometry[]) TO intenderness_dating_m0dl_user;
          public               postgres    false    448                       0    0 3   FUNCTION st_clusterintersectingwin(public.geometry)    ACL     j   GRANT ALL ON FUNCTION public.st_clusterintersectingwin(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    452                       0    0 W   FUNCTION st_clusterkmeans(geom public.geometry, k integer, max_radius double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_clusterkmeans(geom public.geometry, k integer, max_radius double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    625                       0    0 >   FUNCTION st_clusterwithin(public.geometry[], double precision)    ACL     u   GRANT ALL ON FUNCTION public.st_clusterwithin(public.geometry[], double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    449                       0    0 H   FUNCTION st_clusterwithinwin(public.geometry, distance double precision)    ACL        GRANT ALL ON FUNCTION public.st_clusterwithinwin(public.geometry, distance double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    451                       0    0 &   FUNCTION st_collect(public.geometry[])    ACL     ]   GRANT ALL ON FUNCTION public.st_collect(public.geometry[]) TO intenderness_dating_m0dl_user;
          public               postgres    false    605                       0    0 A   FUNCTION st_collect(geom1 public.geometry, geom2 public.geometry)    ACL     x   GRANT ALL ON FUNCTION public.st_collect(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    604                       0    0 .   FUNCTION st_collectionextract(public.geometry)    ACL     e   GRANT ALL ON FUNCTION public.st_collectionextract(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    391            	           0    0 7   FUNCTION st_collectionextract(public.geometry, integer)    ACL     n   GRANT ALL ON FUNCTION public.st_collectionextract(public.geometry, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    390            
           0    0 1   FUNCTION st_collectionhomogenize(public.geometry)    ACL     h   GRANT ALL ON FUNCTION public.st_collectionhomogenize(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    392                       0    0 6   FUNCTION st_combinebbox(public.box2d, public.geometry)    ACL     m   GRANT ALL ON FUNCTION public.st_combinebbox(public.box2d, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    603                       0    0 3   FUNCTION st_combinebbox(public.box3d, public.box3d)    ACL     j   GRANT ALL ON FUNCTION public.st_combinebbox(public.box3d, public.box3d) TO intenderness_dating_m0dl_user;
          public               postgres    false    602                       0    0 6   FUNCTION st_combinebbox(public.box3d, public.geometry)    ACL     m   GRANT ALL ON FUNCTION public.st_combinebbox(public.box3d, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    601                       0    0 p   FUNCTION st_concavehull(param_geom public.geometry, param_pctconvex double precision, param_allow_holes boolean)    ACL     �   GRANT ALL ON FUNCTION public.st_concavehull(param_geom public.geometry, param_pctconvex double precision, param_allow_holes boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    968                       0    0 B   FUNCTION st_contains(geom1 public.geometry, geom2 public.geometry)    ACL     y   GRANT ALL ON FUNCTION public.st_contains(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    653                       0    0 J   FUNCTION st_containsproperly(geom1 public.geometry, geom2 public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.st_containsproperly(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    654                       0    0 '   FUNCTION st_convexhull(public.geometry)    ACL     ^   GRANT ALL ON FUNCTION public.st_convexhull(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    565                       0    0 .   FUNCTION st_coorddim(geometry public.geometry)    ACL     e   GRANT ALL ON FUNCTION public.st_coorddim(geometry public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    931                       0    0 R   FUNCTION st_coverageinvalidedges(geom public.geometry, tolerance double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_coverageinvalidedges(geom public.geometry, tolerance double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    624                       0    0 h   FUNCTION st_coveragesimplify(geom public.geometry, tolerance double precision, simplifyboundary boolean)    ACL     �   GRANT ALL ON FUNCTION public.st_coveragesimplify(geom public.geometry, tolerance double precision, simplifyboundary boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    623                       0    0 ,   FUNCTION st_coverageunion(public.geometry[])    ACL     c   GRANT ALL ON FUNCTION public.st_coverageunion(public.geometry[]) TO intenderness_dating_m0dl_user;
          public               postgres    false    622                       0    0 !   FUNCTION st_coveredby(text, text)    ACL     X   GRANT ALL ON FUNCTION public.st_coveredby(text, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    905                       0    0 E   FUNCTION st_coveredby(geog1 public.geography, geog2 public.geography)    ACL     |   GRANT ALL ON FUNCTION public.st_coveredby(geog1 public.geography, geog2 public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    894                       0    0 C   FUNCTION st_coveredby(geom1 public.geometry, geom2 public.geometry)    ACL     z   GRANT ALL ON FUNCTION public.st_coveredby(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    657                       0    0    FUNCTION st_covers(text, text)    ACL     U   GRANT ALL ON FUNCTION public.st_covers(text, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    904                       0    0 B   FUNCTION st_covers(geog1 public.geography, geog2 public.geography)    ACL     y   GRANT ALL ON FUNCTION public.st_covers(geog1 public.geography, geog2 public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    892                       0    0 @   FUNCTION st_covers(geom1 public.geometry, geom2 public.geometry)    ACL     w   GRANT ALL ON FUNCTION public.st_covers(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    656                       0    0 I   FUNCTION st_cpawithin(public.geometry, public.geometry, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_cpawithin(public.geometry, public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    554                       0    0 A   FUNCTION st_crosses(geom1 public.geometry, geom2 public.geometry)    ACL     x   GRANT ALL ON FUNCTION public.st_crosses(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    652                       0    0 7   FUNCTION st_curven(geometry public.geometry, i integer)    ACL     n   GRANT ALL ON FUNCTION public.st_curven(geometry public.geometry, i integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    936                       0    0 c   FUNCTION st_curvetoline(geom public.geometry, tol double precision, toltype integer, flags integer)    ACL     �   GRANT ALL ON FUNCTION public.st_curvetoline(geom public.geometry, tol double precision, toltype integer, flags integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    932                        0    0 \   FUNCTION st_delaunaytriangles(g1 public.geometry, tolerance double precision, flags integer)    ACL     �   GRANT ALL ON FUNCTION public.st_delaunaytriangles(g1 public.geometry, tolerance double precision, flags integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    596            !           0    0 X   FUNCTION st_dfullywithin(geom1 public.geometry, geom2 public.geometry, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_dfullywithin(geom1 public.geometry, geom2 public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    659            "           0    0 _   FUNCTION st_difference(geom1 public.geometry, geom2 public.geometry, gridsize double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_difference(geom1 public.geometry, geom2 public.geometry, gridsize double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    576            #           0    0 &   FUNCTION st_dimension(public.geometry)    ACL     ]   GRANT ALL ON FUNCTION public.st_dimension(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    726            $           0    0 B   FUNCTION st_disjoint(geom1 public.geometry, geom2 public.geometry)    ACL     y   GRANT ALL ON FUNCTION public.st_disjoint(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    629            %           0    0     FUNCTION st_distance(text, text)    ACL     W   GRANT ALL ON FUNCTION public.st_distance(text, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    856            &           0    0 B   FUNCTION st_distance(geom1 public.geometry, geom2 public.geometry)    ACL     y   GRANT ALL ON FUNCTION public.st_distance(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    377            '           0    0 Z   FUNCTION st_distance(geog1 public.geography, geog2 public.geography, use_spheroid boolean)    ACL     �   GRANT ALL ON FUNCTION public.st_distance(geog1 public.geography, geog2 public.geography, use_spheroid boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    855            (           0    0 9   FUNCTION st_distancecpa(public.geometry, public.geometry)    ACL     p   GRANT ALL ON FUNCTION public.st_distancecpa(public.geometry, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    553            )           0    0 H   FUNCTION st_distancesphere(geom1 public.geometry, geom2 public.geometry)    ACL        GRANT ALL ON FUNCTION public.st_distancesphere(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    920            *           0    0 a   FUNCTION st_distancesphere(geom1 public.geometry, geom2 public.geometry, radius double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_distancesphere(geom1 public.geometry, geom2 public.geometry, radius double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    921            +           0    0 J   FUNCTION st_distancespheroid(geom1 public.geometry, geom2 public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.st_distancespheroid(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    376            ,           0    0 [   FUNCTION st_distancespheroid(geom1 public.geometry, geom2 public.geometry, public.spheroid)    ACL     �   GRANT ALL ON FUNCTION public.st_distancespheroid(geom1 public.geometry, geom2 public.geometry, public.spheroid) TO intenderness_dating_m0dl_user;
          public               postgres    false    375            -           0    0 !   FUNCTION st_dump(public.geometry)    ACL     X   GRANT ALL ON FUNCTION public.st_dump(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    470            .           0    0 '   FUNCTION st_dumppoints(public.geometry)    ACL     ^   GRANT ALL ON FUNCTION public.st_dumppoints(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    472            /           0    0 &   FUNCTION st_dumprings(public.geometry)    ACL     ]   GRANT ALL ON FUNCTION public.st_dumprings(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    471            0           0    0 )   FUNCTION st_dumpsegments(public.geometry)    ACL     `   GRANT ALL ON FUNCTION public.st_dumpsegments(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    473            1           0    0 1   FUNCTION st_dwithin(text, text, double precision)    ACL     h   GRANT ALL ON FUNCTION public.st_dwithin(text, text, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    906            2           0    0 S   FUNCTION st_dwithin(geom1 public.geometry, geom2 public.geometry, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_dwithin(geom1 public.geometry, geom2 public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    649            3           0    0 u   FUNCTION st_dwithin(geog1 public.geography, geog2 public.geography, tolerance double precision, use_spheroid boolean)    ACL     �   GRANT ALL ON FUNCTION public.st_dwithin(geog1 public.geography, geog2 public.geography, tolerance double precision, use_spheroid boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    893            4           0    0 %   FUNCTION st_endpoint(public.geometry)    ACL     \   GRANT ALL ON FUNCTION public.st_endpoint(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    737            5           0    0 %   FUNCTION st_envelope(public.geometry)    ACL     \   GRANT ALL ON FUNCTION public.st_envelope(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    401            6           0    0 @   FUNCTION st_equals(geom1 public.geometry, geom2 public.geometry)    ACL     w   GRANT ALL ON FUNCTION public.st_equals(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    664            7           0    0 '   FUNCTION st_estimatedextent(text, text)    ACL     ^   GRANT ALL ON FUNCTION public.st_estimatedextent(text, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    352            8           0    0 -   FUNCTION st_estimatedextent(text, text, text)    ACL     d   GRANT ALL ON FUNCTION public.st_estimatedextent(text, text, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    351            9           0    0 6   FUNCTION st_estimatedextent(text, text, text, boolean)    ACL     m   GRANT ALL ON FUNCTION public.st_estimatedextent(text, text, text, boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    350            :           0    0 2   FUNCTION st_expand(public.box2d, double precision)    ACL     i   GRANT ALL ON FUNCTION public.st_expand(public.box2d, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    346            ;           0    0 2   FUNCTION st_expand(public.box3d, double precision)    ACL     i   GRANT ALL ON FUNCTION public.st_expand(public.box3d, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    397            <           0    0 5   FUNCTION st_expand(public.geometry, double precision)    ACL     l   GRANT ALL ON FUNCTION public.st_expand(public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    399            =           0    0 N   FUNCTION st_expand(box public.box2d, dx double precision, dy double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_expand(box public.box2d, dx double precision, dy double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    347            >           0    0 c   FUNCTION st_expand(box public.box3d, dx double precision, dy double precision, dz double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_expand(box public.box3d, dx double precision, dy double precision, dz double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    398            ?           0    0 |   FUNCTION st_expand(geom public.geometry, dx double precision, dy double precision, dz double precision, dm double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_expand(geom public.geometry, dx double precision, dy double precision, dz double precision, dm double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    400            @           0    0 )   FUNCTION st_exteriorring(public.geometry)    ACL     `   GRANT ALL ON FUNCTION public.st_exteriorring(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    727            A           0    0 S   FUNCTION st_filterbym(public.geometry, double precision, double precision, boolean)    ACL     �   GRANT ALL ON FUNCTION public.st_filterbym(public.geometry, double precision, double precision, boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    540            B           0    0 "   FUNCTION st_findextent(text, text)    ACL     Y   GRANT ALL ON FUNCTION public.st_findextent(text, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    354            C           0    0 (   FUNCTION st_findextent(text, text, text)    ACL     _   GRANT ALL ON FUNCTION public.st_findextent(text, text, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    353            D           0    0 ,   FUNCTION st_flipcoordinates(public.geometry)    ACL     c   GRANT ALL ON FUNCTION public.st_flipcoordinates(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    802            E           0    0 $   FUNCTION st_force2d(public.geometry)    ACL     [   GRANT ALL ON FUNCTION public.st_force2d(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    384            F           0    0 B   FUNCTION st_force3d(geom public.geometry, zvalue double precision)    ACL     y   GRANT ALL ON FUNCTION public.st_force3d(geom public.geometry, zvalue double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    386            G           0    0 C   FUNCTION st_force3dm(geom public.geometry, mvalue double precision)    ACL     z   GRANT ALL ON FUNCTION public.st_force3dm(geom public.geometry, mvalue double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    387            H           0    0 C   FUNCTION st_force3dz(geom public.geometry, zvalue double precision)    ACL     z   GRANT ALL ON FUNCTION public.st_force3dz(geom public.geometry, zvalue double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    385            I           0    0 [   FUNCTION st_force4d(geom public.geometry, zvalue double precision, mvalue double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_force4d(geom public.geometry, zvalue double precision, mvalue double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    388            J           0    0 ,   FUNCTION st_forcecollection(public.geometry)    ACL     c   GRANT ALL ON FUNCTION public.st_forcecollection(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    389            K           0    0 '   FUNCTION st_forcecurve(public.geometry)    ACL     ^   GRANT ALL ON FUNCTION public.st_forcecurve(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    394            L           0    0 ,   FUNCTION st_forcepolygonccw(public.geometry)    ACL     c   GRANT ALL ON FUNCTION public.st_forcepolygonccw(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    406            M           0    0 +   FUNCTION st_forcepolygoncw(public.geometry)    ACL     b   GRANT ALL ON FUNCTION public.st_forcepolygoncw(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    405            N           0    0 %   FUNCTION st_forcerhr(public.geometry)    ACL     \   GRANT ALL ON FUNCTION public.st_forcerhr(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    407            O           0    0 %   FUNCTION st_forcesfs(public.geometry)    ACL     \   GRANT ALL ON FUNCTION public.st_forcesfs(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    395            P           0    0 3   FUNCTION st_forcesfs(public.geometry, version text)    ACL     j   GRANT ALL ON FUNCTION public.st_forcesfs(public.geometry, version text) TO intenderness_dating_m0dl_user;
          public               postgres    false    396            Q           0    0 [   FUNCTION st_frechetdistance(geom1 public.geometry, geom2 public.geometry, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_frechetdistance(geom1 public.geometry, geom2 public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    573            R           0    0 -   FUNCTION st_fromflatgeobuf(anyelement, bytea)    ACL     d   GRANT ALL ON FUNCTION public.st_fromflatgeobuf(anyelement, bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    717            S           0    0 4   FUNCTION st_fromflatgeobuftotable(text, text, bytea)    ACL     k   GRANT ALL ON FUNCTION public.st_fromflatgeobuftotable(text, text, bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    716            T           0    0 A   FUNCTION st_generatepoints(area public.geometry, npoints integer)    ACL     x   GRANT ALL ON FUNCTION public.st_generatepoints(area public.geometry, npoints integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    563            U           0    0 O   FUNCTION st_generatepoints(area public.geometry, npoints integer, seed integer)    ACL     �   GRANT ALL ON FUNCTION public.st_generatepoints(area public.geometry, npoints integer, seed integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    564            V           0    0    FUNCTION st_geogfromtext(text)    ACL     U   GRANT ALL ON FUNCTION public.st_geogfromtext(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    819            W           0    0    FUNCTION st_geogfromwkb(bytea)    ACL     U   GRANT ALL ON FUNCTION public.st_geogfromwkb(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    820            X           0    0 #   FUNCTION st_geographyfromtext(text)    ACL     Z   GRANT ALL ON FUNCTION public.st_geographyfromtext(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    818            Y           0    0 <   FUNCTION st_geohash(geog public.geography, maxchars integer)    ACL     s   GRANT ALL ON FUNCTION public.st_geohash(geog public.geography, maxchars integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    884            Z           0    0 ;   FUNCTION st_geohash(geom public.geometry, maxchars integer)    ACL     r   GRANT ALL ON FUNCTION public.st_geohash(geom public.geometry, maxchars integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    718            [           0    0 "   FUNCTION st_geomcollfromtext(text)    ACL     Y   GRANT ALL ON FUNCTION public.st_geomcollfromtext(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    769            \           0    0 +   FUNCTION st_geomcollfromtext(text, integer)    ACL     b   GRANT ALL ON FUNCTION public.st_geomcollfromtext(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    768            ]           0    0 "   FUNCTION st_geomcollfromwkb(bytea)    ACL     Y   GRANT ALL ON FUNCTION public.st_geomcollfromwkb(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    794            ^           0    0 +   FUNCTION st_geomcollfromwkb(bytea, integer)    ACL     b   GRANT ALL ON FUNCTION public.st_geomcollfromwkb(bytea, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    793            _           0    0 {   FUNCTION st_geometricmedian(g public.geometry, tolerance double precision, max_iter integer, fail_if_not_converged boolean)    ACL     �   GRANT ALL ON FUNCTION public.st_geometricmedian(g public.geometry, tolerance double precision, max_iter integer, fail_if_not_converged boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    669            `           0    0 "   FUNCTION st_geometryfromtext(text)    ACL     Y   GRANT ALL ON FUNCTION public.st_geometryfromtext(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    744            a           0    0 +   FUNCTION st_geometryfromtext(text, integer)    ACL     b   GRANT ALL ON FUNCTION public.st_geometryfromtext(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    745            b           0    0 /   FUNCTION st_geometryn(public.geometry, integer)    ACL     f   GRANT ALL ON FUNCTION public.st_geometryn(public.geometry, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    725            c           0    0 )   FUNCTION st_geometrytype(public.geometry)    ACL     `   GRANT ALL ON FUNCTION public.st_geometrytype(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    732            d           0    0    FUNCTION st_geomfromewkb(bytea)    ACL     V   GRANT ALL ON FUNCTION public.st_geomfromewkb(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    425            e           0    0    FUNCTION st_geomfromewkt(text)    ACL     U   GRANT ALL ON FUNCTION public.st_geomfromewkt(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    428            f           0    0 *   FUNCTION st_geomfromgeohash(text, integer)    ACL     a   GRANT ALL ON FUNCTION public.st_geomfromgeohash(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    722            g           0    0 !   FUNCTION st_geomfromgeojson(json)    ACL     X   GRANT ALL ON FUNCTION public.st_geomfromgeojson(json) TO intenderness_dating_m0dl_user;
          public               postgres    false    684            h           0    0 "   FUNCTION st_geomfromgeojson(jsonb)    ACL     Y   GRANT ALL ON FUNCTION public.st_geomfromgeojson(jsonb) TO intenderness_dating_m0dl_user;
          public               postgres    false    685            i           0    0 !   FUNCTION st_geomfromgeojson(text)    ACL     X   GRANT ALL ON FUNCTION public.st_geomfromgeojson(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    683            j           0    0    FUNCTION st_geomfromgml(text)    ACL     T   GRANT ALL ON FUNCTION public.st_geomfromgml(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    677            k           0    0 &   FUNCTION st_geomfromgml(text, integer)    ACL     ]   GRANT ALL ON FUNCTION public.st_geomfromgml(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    676            l           0    0    FUNCTION st_geomfromkml(text)    ACL     T   GRANT ALL ON FUNCTION public.st_geomfromkml(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    680            m           0    0 *   FUNCTION st_geomfrommarc21(marc21xml text)    ACL     a   GRANT ALL ON FUNCTION public.st_geomfrommarc21(marc21xml text) TO intenderness_dating_m0dl_user;
          public               postgres    false    681            n           0    0    FUNCTION st_geomfromtext(text)    ACL     U   GRANT ALL ON FUNCTION public.st_geomfromtext(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    746            o           0    0 '   FUNCTION st_geomfromtext(text, integer)    ACL     ^   GRANT ALL ON FUNCTION public.st_geomfromtext(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    747            p           0    0    FUNCTION st_geomfromtwkb(bytea)    ACL     V   GRANT ALL ON FUNCTION public.st_geomfromtwkb(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    426            q           0    0    FUNCTION st_geomfromwkb(bytea)    ACL     U   GRANT ALL ON FUNCTION public.st_geomfromwkb(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    770            r           0    0 '   FUNCTION st_geomfromwkb(bytea, integer)    ACL     ^   GRANT ALL ON FUNCTION public.st_geomfromwkb(bytea, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    771            s           0    0    FUNCTION st_gmltosql(text)    ACL     Q   GRANT ALL ON FUNCTION public.st_gmltosql(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    678            t           0    0 #   FUNCTION st_gmltosql(text, integer)    ACL     Z   GRANT ALL ON FUNCTION public.st_gmltosql(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    679            u           0    0 ,   FUNCTION st_hasarc(geometry public.geometry)    ACL     c   GRANT ALL ON FUNCTION public.st_hasarc(geometry public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    933            v           0    0 !   FUNCTION st_hasm(public.geometry)    ACL     X   GRANT ALL ON FUNCTION public.st_hasm(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    414            w           0    0 !   FUNCTION st_hasz(public.geometry)    ACL     X   GRANT ALL ON FUNCTION public.st_hasz(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    413            x           0    0 K   FUNCTION st_hausdorffdistance(geom1 public.geometry, geom2 public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.st_hausdorffdistance(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    571            y           0    0 ]   FUNCTION st_hausdorffdistance(geom1 public.geometry, geom2 public.geometry, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_hausdorffdistance(geom1 public.geometry, geom2 public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    572            z           0    0 b   FUNCTION st_hexagon(size double precision, cell_i integer, cell_j integer, origin public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.st_hexagon(size double precision, cell_i integer, cell_j integer, origin public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    948            {           0    0 ~   FUNCTION st_hexagongrid(size double precision, bounds public.geometry, OUT geom public.geometry, OUT i integer, OUT j integer)    ACL     �   GRANT ALL ON FUNCTION public.st_hexagongrid(size double precision, bounds public.geometry, OUT geom public.geometry, OUT i integer, OUT j integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    950            |           0    0 3   FUNCTION st_interiorringn(public.geometry, integer)    ACL     j   GRANT ALL ON FUNCTION public.st_interiorringn(public.geometry, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    730            }           0    0 I   FUNCTION st_interpolatepoint(line public.geometry, point public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.st_interpolatepoint(line public.geometry, point public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    947            ~           0    0 $   FUNCTION st_intersection(text, text)    ACL     [   GRANT ALL ON FUNCTION public.st_intersection(text, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    903                       0    0 <   FUNCTION st_intersection(public.geography, public.geography)    ACL     s   GRANT ALL ON FUNCTION public.st_intersection(public.geography, public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    902            �           0    0 a   FUNCTION st_intersection(geom1 public.geometry, geom2 public.geometry, gridsize double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_intersection(geom1 public.geometry, geom2 public.geometry, gridsize double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    556            �           0    0 "   FUNCTION st_intersects(text, text)    ACL     Y   GRANT ALL ON FUNCTION public.st_intersects(text, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    907            �           0    0 F   FUNCTION st_intersects(geog1 public.geography, geog2 public.geography)    ACL     }   GRANT ALL ON FUNCTION public.st_intersects(geog1 public.geography, geog2 public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    895            �           0    0 D   FUNCTION st_intersects(geom1 public.geometry, geom2 public.geometry)    ACL     {   GRANT ALL ON FUNCTION public.st_intersects(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    651            �           0    0 Z   FUNCTION st_inversetransformpipeline(geom public.geometry, pipeline text, to_srid integer)    ACL     �   GRANT ALL ON FUNCTION public.st_inversetransformpipeline(geom public.geometry, pipeline text, to_srid integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    503            �           0    0 %   FUNCTION st_isclosed(public.geometry)    ACL     \   GRANT ALL ON FUNCTION public.st_isclosed(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    738            �           0    0 )   FUNCTION st_iscollection(public.geometry)    ACL     `   GRANT ALL ON FUNCTION public.st_iscollection(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    673            �           0    0 $   FUNCTION st_isempty(public.geometry)    ACL     [   GRANT ALL ON FUNCTION public.st_isempty(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    739            �           0    0 )   FUNCTION st_ispolygonccw(public.geometry)    ACL     `   GRANT ALL ON FUNCTION public.st_ispolygonccw(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    374            �           0    0 (   FUNCTION st_ispolygoncw(public.geometry)    ACL     _   GRANT ALL ON FUNCTION public.st_ispolygoncw(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    373            �           0    0 #   FUNCTION st_isring(public.geometry)    ACL     Z   GRANT ALL ON FUNCTION public.st_isring(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    670            �           0    0 %   FUNCTION st_issimple(public.geometry)    ACL     \   GRANT ALL ON FUNCTION public.st_issimple(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    672            �           0    0 $   FUNCTION st_isvalid(public.geometry)    ACL     [   GRANT ALL ON FUNCTION public.st_isvalid(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    665            �           0    0 -   FUNCTION st_isvalid(public.geometry, integer)    ACL     d   GRANT ALL ON FUNCTION public.st_isvalid(public.geometry, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    570            �           0    0 >   FUNCTION st_isvaliddetail(geom public.geometry, flags integer)    ACL     u   GRANT ALL ON FUNCTION public.st_isvaliddetail(geom public.geometry, flags integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    568            �           0    0 *   FUNCTION st_isvalidreason(public.geometry)    ACL     a   GRANT ALL ON FUNCTION public.st_isvalidreason(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    567            �           0    0 3   FUNCTION st_isvalidreason(public.geometry, integer)    ACL     j   GRANT ALL ON FUNCTION public.st_isvalidreason(public.geometry, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    569            �           0    0 .   FUNCTION st_isvalidtrajectory(public.geometry)    ACL     e   GRANT ALL ON FUNCTION public.st_isvalidtrajectory(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    555            �           0    0 �   FUNCTION st_largestemptycircle(geom public.geometry, tolerance double precision, boundary public.geometry, OUT center public.geometry, OUT nearest public.geometry, OUT radius double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_largestemptycircle(geom public.geometry, tolerance double precision, boundary public.geometry, OUT center public.geometry, OUT nearest public.geometry, OUT radius double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    575            �           0    0    FUNCTION st_length(text)    ACL     O   GRANT ALL ON FUNCTION public.st_length(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    868            �           0    0 #   FUNCTION st_length(public.geometry)    ACL     Z   GRANT ALL ON FUNCTION public.st_length(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    365            �           0    0 ?   FUNCTION st_length(geog public.geography, use_spheroid boolean)    ACL     v   GRANT ALL ON FUNCTION public.st_length(geog public.geography, use_spheroid boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    867            �           0    0 %   FUNCTION st_length2d(public.geometry)    ACL     \   GRANT ALL ON FUNCTION public.st_length2d(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    364            �           0    0 >   FUNCTION st_length2dspheroid(public.geometry, public.spheroid)    ACL     u   GRANT ALL ON FUNCTION public.st_length2dspheroid(public.geometry, public.spheroid) TO intenderness_dating_m0dl_user;
          public               postgres    false    367            �           0    0 <   FUNCTION st_lengthspheroid(public.geometry, public.spheroid)    ACL     s   GRANT ALL ON FUNCTION public.st_lengthspheroid(public.geometry, public.spheroid) TO intenderness_dating_m0dl_user;
          public               postgres    false    366            �           0    0 ,   FUNCTION st_letters(letters text, font json)    ACL     c   GRANT ALL ON FUNCTION public.st_letters(letters text, font json) TO intenderness_dating_m0dl_user;
          public               postgres    false    1001            �           0    0 O   FUNCTION st_linecrossingdirection(line1 public.geometry, line2 public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.st_linecrossingdirection(line1 public.geometry, line2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    648            �           0    0 s   FUNCTION st_lineextend(geom public.geometry, distance_forward double precision, distance_backward double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_lineextend(geom public.geometry, distance_forward double precision, distance_backward double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    383            �           0    0 C   FUNCTION st_linefromencodedpolyline(txtin text, nprecision integer)    ACL     z   GRANT ALL ON FUNCTION public.st_linefromencodedpolyline(txtin text, nprecision integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    687            �           0    0 /   FUNCTION st_linefrommultipoint(public.geometry)    ACL     f   GRANT ALL ON FUNCTION public.st_linefrommultipoint(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    436            �           0    0    FUNCTION st_linefromtext(text)    ACL     U   GRANT ALL ON FUNCTION public.st_linefromtext(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    751            �           0    0 '   FUNCTION st_linefromtext(text, integer)    ACL     ^   GRANT ALL ON FUNCTION public.st_linefromtext(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    752            �           0    0    FUNCTION st_linefromwkb(bytea)    ACL     U   GRANT ALL ON FUNCTION public.st_linefromwkb(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    775            �           0    0 '   FUNCTION st_linefromwkb(bytea, integer)    ACL     ^   GRANT ALL ON FUNCTION public.st_linefromwkb(bytea, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    774            �           0    0 8   FUNCTION st_lineinterpolatepoint(text, double precision)    ACL     o   GRANT ALL ON FUNCTION public.st_lineinterpolatepoint(text, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    919            �           0    0 C   FUNCTION st_lineinterpolatepoint(public.geometry, double precision)    ACL     z   GRANT ALL ON FUNCTION public.st_lineinterpolatepoint(public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    547            �           0    0 Z   FUNCTION st_lineinterpolatepoint(public.geography, double precision, use_spheroid boolean)    ACL     �   GRANT ALL ON FUNCTION public.st_lineinterpolatepoint(public.geography, double precision, use_spheroid boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    918            �           0    0 9   FUNCTION st_lineinterpolatepoints(text, double precision)    ACL     p   GRANT ALL ON FUNCTION public.st_lineinterpolatepoints(text, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    917            �           0    0 T   FUNCTION st_lineinterpolatepoints(public.geometry, double precision, repeat boolean)    ACL     �   GRANT ALL ON FUNCTION public.st_lineinterpolatepoints(public.geometry, double precision, repeat boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    548            �           0    0 k   FUNCTION st_lineinterpolatepoints(public.geography, double precision, use_spheroid boolean, repeat boolean)    ACL     �   GRANT ALL ON FUNCTION public.st_lineinterpolatepoints(public.geography, double precision, use_spheroid boolean, repeat boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    916            �           0    0 '   FUNCTION st_linelocatepoint(text, text)    ACL     ^   GRANT ALL ON FUNCTION public.st_linelocatepoint(text, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    915            �           0    0 I   FUNCTION st_linelocatepoint(geom1 public.geometry, geom2 public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.st_linelocatepoint(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    550            �           0    0 U   FUNCTION st_linelocatepoint(public.geography, public.geography, use_spheroid boolean)    ACL     �   GRANT ALL ON FUNCTION public.st_linelocatepoint(public.geography, public.geography, use_spheroid boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    914            �           0    0 &   FUNCTION st_linemerge(public.geometry)    ACL     ]   GRANT ALL ON FUNCTION public.st_linemerge(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    453            �           0    0 /   FUNCTION st_linemerge(public.geometry, boolean)    ACL     f   GRANT ALL ON FUNCTION public.st_linemerge(public.geometry, boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    454            �           0    0 $   FUNCTION st_linestringfromwkb(bytea)    ACL     [   GRANT ALL ON FUNCTION public.st_linestringfromwkb(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    777            �           0    0 -   FUNCTION st_linestringfromwkb(bytea, integer)    ACL     d   GRANT ALL ON FUNCTION public.st_linestringfromwkb(bytea, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    776            �           0    0 C   FUNCTION st_linesubstring(text, double precision, double precision)    ACL     z   GRANT ALL ON FUNCTION public.st_linesubstring(text, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    913            �           0    0 O   FUNCTION st_linesubstring(public.geography, double precision, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_linesubstring(public.geography, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    912            �           0    0 N   FUNCTION st_linesubstring(public.geometry, double precision, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_linesubstring(public.geometry, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    549            �           0    0 1   FUNCTION st_linetocurve(geometry public.geometry)    ACL     h   GRANT ALL ON FUNCTION public.st_linetocurve(geometry public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    934            �           0    0 m   FUNCTION st_locatealong(geometry public.geometry, measure double precision, leftrightoffset double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_locatealong(geometry public.geometry, measure double precision, leftrightoffset double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    945            �           0    0 �   FUNCTION st_locatebetween(geometry public.geometry, frommeasure double precision, tomeasure double precision, leftrightoffset double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_locatebetween(geometry public.geometry, frommeasure double precision, tomeasure double precision, leftrightoffset double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    944            �           0    0 {   FUNCTION st_locatebetweenelevations(geometry public.geometry, fromelevation double precision, toelevation double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_locatebetweenelevations(geometry public.geometry, fromelevation double precision, toelevation double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    946            �           0    0 E   FUNCTION st_longestline(geom1 public.geometry, geom2 public.geometry)    ACL     |   GRANT ALL ON FUNCTION public.st_longestline(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    800            �           0    0    FUNCTION st_m(public.geometry)    ACL     U   GRANT ALL ON FUNCTION public.st_m(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    275            �           0    0 C   FUNCTION st_makebox2d(geom1 public.geometry, geom2 public.geometry)    ACL     z   GRANT ALL ON FUNCTION public.st_makebox2d(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    349            �           0    0 i   FUNCTION st_makeenvelope(double precision, double precision, double precision, double precision, integer)    ACL     �   GRANT ALL ON FUNCTION public.st_makeenvelope(double precision, double precision, double precision, double precision, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    442            �           0    0 '   FUNCTION st_makeline(public.geometry[])    ACL     ^   GRANT ALL ON FUNCTION public.st_makeline(public.geometry[]) TO intenderness_dating_m0dl_user;
          public               postgres    false    435            �           0    0 B   FUNCTION st_makeline(geom1 public.geometry, geom2 public.geometry)    ACL     y   GRANT ALL ON FUNCTION public.st_makeline(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    437            �           0    0 9   FUNCTION st_makepoint(double precision, double precision)    ACL     p   GRANT ALL ON FUNCTION public.st_makepoint(double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    430            �           0    0 K   FUNCTION st_makepoint(double precision, double precision, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_makepoint(double precision, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    431            �           0    0 ]   FUNCTION st_makepoint(double precision, double precision, double precision, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_makepoint(double precision, double precision, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    432            �           0    0 L   FUNCTION st_makepointm(double precision, double precision, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_makepointm(double precision, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    433            �           0    0 (   FUNCTION st_makepolygon(public.geometry)    ACL     _   GRANT ALL ON FUNCTION public.st_makepolygon(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    445            �           0    0 ;   FUNCTION st_makepolygon(public.geometry, public.geometry[])    ACL     r   GRANT ALL ON FUNCTION public.st_makepolygon(public.geometry, public.geometry[]) TO intenderness_dating_m0dl_user;
          public               postgres    false    444            �           0    0 &   FUNCTION st_makevalid(public.geometry)    ACL     ]   GRANT ALL ON FUNCTION public.st_makevalid(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    588            �           0    0 8   FUNCTION st_makevalid(geom public.geometry, params text)    ACL     o   GRANT ALL ON FUNCTION public.st_makevalid(geom public.geometry, params text) TO intenderness_dating_m0dl_user;
          public               postgres    false    589            �           0    0 E   FUNCTION st_maxdistance(geom1 public.geometry, geom2 public.geometry)    ACL     |   GRANT ALL ON FUNCTION public.st_maxdistance(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    796            �           0    0 �   FUNCTION st_maximuminscribedcircle(public.geometry, OUT center public.geometry, OUT nearest public.geometry, OUT radius double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_maximuminscribedcircle(public.geometry, OUT center public.geometry, OUT nearest public.geometry, OUT radius double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    574            �           0    0 $   FUNCTION st_memsize(public.geometry)    ACL     [   GRANT ALL ON FUNCTION public.st_memsize(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    359            �           0    0 V   FUNCTION st_minimumboundingcircle(inputgeom public.geometry, segs_per_quarter integer)    ACL     �   GRANT ALL ON FUNCTION public.st_minimumboundingcircle(inputgeom public.geometry, segs_per_quarter integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    560            �           0    0 k   FUNCTION st_minimumboundingradius(public.geometry, OUT center public.geometry, OUT radius double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_minimumboundingradius(public.geometry, OUT center public.geometry, OUT radius double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    559            �           0    0 -   FUNCTION st_minimumclearance(public.geometry)    ACL     d   GRANT ALL ON FUNCTION public.st_minimumclearance(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    666            �           0    0 1   FUNCTION st_minimumclearanceline(public.geometry)    ACL     h   GRANT ALL ON FUNCTION public.st_minimumclearanceline(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    667            �           0    0    FUNCTION st_mlinefromtext(text)    ACL     V   GRANT ALL ON FUNCTION public.st_mlinefromtext(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    758            �           0    0 (   FUNCTION st_mlinefromtext(text, integer)    ACL     _   GRANT ALL ON FUNCTION public.st_mlinefromtext(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    757            �           0    0    FUNCTION st_mlinefromwkb(bytea)    ACL     V   GRANT ALL ON FUNCTION public.st_mlinefromwkb(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    788            �           0    0 (   FUNCTION st_mlinefromwkb(bytea, integer)    ACL     _   GRANT ALL ON FUNCTION public.st_mlinefromwkb(bytea, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    787            �           0    0     FUNCTION st_mpointfromtext(text)    ACL     W   GRANT ALL ON FUNCTION public.st_mpointfromtext(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    762            �           0    0 )   FUNCTION st_mpointfromtext(text, integer)    ACL     `   GRANT ALL ON FUNCTION public.st_mpointfromtext(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    761            �           0    0     FUNCTION st_mpointfromwkb(bytea)    ACL     W   GRANT ALL ON FUNCTION public.st_mpointfromwkb(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    783            �           0    0 )   FUNCTION st_mpointfromwkb(bytea, integer)    ACL     `   GRANT ALL ON FUNCTION public.st_mpointfromwkb(bytea, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    782            �           0    0    FUNCTION st_mpolyfromtext(text)    ACL     V   GRANT ALL ON FUNCTION public.st_mpolyfromtext(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    765            �           0    0 (   FUNCTION st_mpolyfromtext(text, integer)    ACL     _   GRANT ALL ON FUNCTION public.st_mpolyfromtext(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    764            �           0    0    FUNCTION st_mpolyfromwkb(bytea)    ACL     V   GRANT ALL ON FUNCTION public.st_mpolyfromwkb(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    790            �           0    0 (   FUNCTION st_mpolyfromwkb(bytea, integer)    ACL     _   GRANT ALL ON FUNCTION public.st_mpolyfromwkb(bytea, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    789            �           0    0 "   FUNCTION st_multi(public.geometry)    ACL     Y   GRANT ALL ON FUNCTION public.st_multi(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    393            �           0    0 #   FUNCTION st_multilinefromwkb(bytea)    ACL     Z   GRANT ALL ON FUNCTION public.st_multilinefromwkb(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    786            �           0    0 )   FUNCTION st_multilinestringfromtext(text)    ACL     `   GRANT ALL ON FUNCTION public.st_multilinestringfromtext(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    759            �           0    0 2   FUNCTION st_multilinestringfromtext(text, integer)    ACL     i   GRANT ALL ON FUNCTION public.st_multilinestringfromtext(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    760            �           0    0 $   FUNCTION st_multipointfromtext(text)    ACL     [   GRANT ALL ON FUNCTION public.st_multipointfromtext(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    763            �           0    0 $   FUNCTION st_multipointfromwkb(bytea)    ACL     [   GRANT ALL ON FUNCTION public.st_multipointfromwkb(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    785            �           0    0 -   FUNCTION st_multipointfromwkb(bytea, integer)    ACL     d   GRANT ALL ON FUNCTION public.st_multipointfromwkb(bytea, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    784            �           0    0 #   FUNCTION st_multipolyfromwkb(bytea)    ACL     Z   GRANT ALL ON FUNCTION public.st_multipolyfromwkb(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    792            �           0    0 ,   FUNCTION st_multipolyfromwkb(bytea, integer)    ACL     c   GRANT ALL ON FUNCTION public.st_multipolyfromwkb(bytea, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    791            �           0    0 &   FUNCTION st_multipolygonfromtext(text)    ACL     ]   GRANT ALL ON FUNCTION public.st_multipolygonfromtext(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    767            �           0    0 /   FUNCTION st_multipolygonfromtext(text, integer)    ACL     f   GRANT ALL ON FUNCTION public.st_multipolygonfromtext(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    766            �           0    0 "   FUNCTION st_ndims(public.geometry)    ACL     Y   GRANT ALL ON FUNCTION public.st_ndims(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    412            �           0    0 #   FUNCTION st_node(g public.geometry)    ACL     Z   GRANT ALL ON FUNCTION public.st_node(g public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    595            �           0    0 +   FUNCTION st_normalize(geom public.geometry)    ACL     b   GRANT ALL ON FUNCTION public.st_normalize(geom public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    410            �           0    0 $   FUNCTION st_npoints(public.geometry)    ACL     [   GRANT ALL ON FUNCTION public.st_npoints(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    361            �           0    0 #   FUNCTION st_nrings(public.geometry)    ACL     Z   GRANT ALL ON FUNCTION public.st_nrings(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    362            �           0    0 /   FUNCTION st_numcurves(geometry public.geometry)    ACL     f   GRANT ALL ON FUNCTION public.st_numcurves(geometry public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    935            �           0    0 *   FUNCTION st_numgeometries(public.geometry)    ACL     a   GRANT ALL ON FUNCTION public.st_numgeometries(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    724            �           0    0 ,   FUNCTION st_numinteriorring(public.geometry)    ACL     c   GRANT ALL ON FUNCTION public.st_numinteriorring(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    729            �           0    0 -   FUNCTION st_numinteriorrings(public.geometry)    ACL     d   GRANT ALL ON FUNCTION public.st_numinteriorrings(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    728            �           0    0 '   FUNCTION st_numpatches(public.geometry)    ACL     ^   GRANT ALL ON FUNCTION public.st_numpatches(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    734            �           0    0 &   FUNCTION st_numpoints(public.geometry)    ACL     ]   GRANT ALL ON FUNCTION public.st_numpoints(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    723            �           0    0 U   FUNCTION st_offsetcurve(line public.geometry, distance double precision, params text)    ACL     �   GRANT ALL ON FUNCTION public.st_offsetcurve(line public.geometry, distance double precision, params text) TO intenderness_dating_m0dl_user;
          public               postgres    false    562            �           0    0 H   FUNCTION st_orderingequals(geom1 public.geometry, geom2 public.geometry)    ACL        GRANT ALL ON FUNCTION public.st_orderingequals(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    663            �           0    0 -   FUNCTION st_orientedenvelope(public.geometry)    ACL     d   GRANT ALL ON FUNCTION public.st_orientedenvelope(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    561            �           0    0 B   FUNCTION st_overlaps(geom1 public.geometry, geom2 public.geometry)    ACL     y   GRANT ALL ON FUNCTION public.st_overlaps(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    658            �           0    0 ,   FUNCTION st_patchn(public.geometry, integer)    ACL     c   GRANT ALL ON FUNCTION public.st_patchn(public.geometry, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    735            �           0    0 &   FUNCTION st_perimeter(public.geometry)    ACL     ]   GRANT ALL ON FUNCTION public.st_perimeter(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    370            �           0    0 B   FUNCTION st_perimeter(geog public.geography, use_spheroid boolean)    ACL     y   GRANT ALL ON FUNCTION public.st_perimeter(geog public.geography, use_spheroid boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    872            �           0    0 (   FUNCTION st_perimeter2d(public.geometry)    ACL     _   GRANT ALL ON FUNCTION public.st_perimeter2d(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    369            �           0    0 5   FUNCTION st_point(double precision, double precision)    ACL     l   GRANT ALL ON FUNCTION public.st_point(double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    937            �           0    0 C   FUNCTION st_point(double precision, double precision, srid integer)    ACL     z   GRANT ALL ON FUNCTION public.st_point(double precision, double precision, srid integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    938            �           0    0 +   FUNCTION st_pointfromgeohash(text, integer)    ACL     b   GRANT ALL ON FUNCTION public.st_pointfromgeohash(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    721            �           0    0    FUNCTION st_pointfromtext(text)    ACL     V   GRANT ALL ON FUNCTION public.st_pointfromtext(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    749            �           0    0 (   FUNCTION st_pointfromtext(text, integer)    ACL     _   GRANT ALL ON FUNCTION public.st_pointfromtext(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    750            �           0    0    FUNCTION st_pointfromwkb(bytea)    ACL     V   GRANT ALL ON FUNCTION public.st_pointfromwkb(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    773            �           0    0 (   FUNCTION st_pointfromwkb(bytea, integer)    ACL     _   GRANT ALL ON FUNCTION public.st_pointfromwkb(bytea, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    772            �           0    0 d   FUNCTION st_pointinsidecircle(public.geometry, double precision, double precision, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_pointinsidecircle(public.geometry, double precision, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    378            �           0    0 z   FUNCTION st_pointm(xcoordinate double precision, ycoordinate double precision, mcoordinate double precision, srid integer)    ACL     �   GRANT ALL ON FUNCTION public.st_pointm(xcoordinate double precision, ycoordinate double precision, mcoordinate double precision, srid integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    940            �           0    0 ,   FUNCTION st_pointn(public.geometry, integer)    ACL     c   GRANT ALL ON FUNCTION public.st_pointn(public.geometry, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    733            �           0    0 +   FUNCTION st_pointonsurface(public.geometry)    ACL     b   GRANT ALL ON FUNCTION public.st_pointonsurface(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    671                        0    0 #   FUNCTION st_points(public.geometry)    ACL     Z   GRANT ALL ON FUNCTION public.st_points(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    578                       0    0 z   FUNCTION st_pointz(xcoordinate double precision, ycoordinate double precision, zcoordinate double precision, srid integer)    ACL     �   GRANT ALL ON FUNCTION public.st_pointz(xcoordinate double precision, ycoordinate double precision, zcoordinate double precision, srid integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    939                       0    0 �   FUNCTION st_pointzm(xcoordinate double precision, ycoordinate double precision, zcoordinate double precision, mcoordinate double precision, srid integer)    ACL     �   GRANT ALL ON FUNCTION public.st_pointzm(xcoordinate double precision, ycoordinate double precision, zcoordinate double precision, mcoordinate double precision, srid integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    941                       0    0    FUNCTION st_polyfromtext(text)    ACL     U   GRANT ALL ON FUNCTION public.st_polyfromtext(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    753                       0    0 '   FUNCTION st_polyfromtext(text, integer)    ACL     ^   GRANT ALL ON FUNCTION public.st_polyfromtext(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    754                       0    0    FUNCTION st_polyfromwkb(bytea)    ACL     U   GRANT ALL ON FUNCTION public.st_polyfromwkb(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    779                       0    0 '   FUNCTION st_polyfromwkb(bytea, integer)    ACL     ^   GRANT ALL ON FUNCTION public.st_polyfromwkb(bytea, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    778                       0    0 -   FUNCTION st_polygon(public.geometry, integer)    ACL     d   GRANT ALL ON FUNCTION public.st_polygon(public.geometry, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    942                       0    0 !   FUNCTION st_polygonfromtext(text)    ACL     X   GRANT ALL ON FUNCTION public.st_polygonfromtext(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    756            	           0    0 *   FUNCTION st_polygonfromtext(text, integer)    ACL     a   GRANT ALL ON FUNCTION public.st_polygonfromtext(text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    755            
           0    0 !   FUNCTION st_polygonfromwkb(bytea)    ACL     X   GRANT ALL ON FUNCTION public.st_polygonfromwkb(bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    781                       0    0 *   FUNCTION st_polygonfromwkb(bytea, integer)    ACL     a   GRANT ALL ON FUNCTION public.st_polygonfromwkb(bytea, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    780                       0    0 )   FUNCTION st_polygonize(public.geometry[])    ACL     `   GRANT ALL ON FUNCTION public.st_polygonize(public.geometry[]) TO intenderness_dating_m0dl_user;
          public               postgres    false    447                       0    0 _   FUNCTION st_project(geog public.geography, distance double precision, azimuth double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_project(geog public.geography, distance double precision, azimuth double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    869                       0    0 d   FUNCTION st_project(geog_from public.geography, geog_to public.geography, distance double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_project(geog_from public.geography, geog_to public.geography, distance double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    870                       0    0 _   FUNCTION st_project(geom1 public.geometry, distance double precision, azimuth double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_project(geom1 public.geometry, distance double precision, azimuth double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    380                       0    0 \   FUNCTION st_project(geom1 public.geometry, geom2 public.geometry, distance double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_project(geom1 public.geometry, geom2 public.geometry, distance double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    381                       0    0 r   FUNCTION st_quantizecoordinates(g public.geometry, prec_x integer, prec_y integer, prec_z integer, prec_m integer)    ACL     �   GRANT ALL ON FUNCTION public.st_quantizecoordinates(g public.geometry, prec_x integer, prec_y integer, prec_z integer, prec_m integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    358                       0    0 L   FUNCTION st_reduceprecision(geom public.geometry, gridsize double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_reduceprecision(geom public.geometry, gridsize double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    587                       0    0 @   FUNCTION st_relate(geom1 public.geometry, geom2 public.geometry)    ACL     w   GRANT ALL ON FUNCTION public.st_relate(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    626                       0    0 I   FUNCTION st_relate(geom1 public.geometry, geom2 public.geometry, integer)    ACL     �   GRANT ALL ON FUNCTION public.st_relate(geom1 public.geometry, geom2 public.geometry, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    627                       0    0 F   FUNCTION st_relate(geom1 public.geometry, geom2 public.geometry, text)    ACL     }   GRANT ALL ON FUNCTION public.st_relate(geom1 public.geometry, geom2 public.geometry, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    628                       0    0 #   FUNCTION st_relatematch(text, text)    ACL     Z   GRANT ALL ON FUNCTION public.st_relatematch(text, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    594                       0    0 Q   FUNCTION st_removeirrelevantpointsforview(public.geometry, public.box2d, boolean)    ACL     �   GRANT ALL ON FUNCTION public.st_removeirrelevantpointsforview(public.geometry, public.box2d, boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    1002                       0    0 1   FUNCTION st_removepoint(public.geometry, integer)    ACL     h   GRANT ALL ON FUNCTION public.st_removepoint(public.geometry, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    440                       0    0 R   FUNCTION st_removerepeatedpoints(geom public.geometry, tolerance double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_removerepeatedpoints(geom public.geometry, tolerance double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    584                       0    0 Q   FUNCTION st_removesmallparts(public.geometry, double precision, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_removesmallparts(public.geometry, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    1003                       0    0 $   FUNCTION st_reverse(public.geometry)    ACL     [   GRANT ALL ON FUNCTION public.st_reverse(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    403                       0    0 5   FUNCTION st_rotate(public.geometry, double precision)    ACL     l   GRANT ALL ON FUNCTION public.st_rotate(public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    457                       0    0 F   FUNCTION st_rotate(public.geometry, double precision, public.geometry)    ACL     }   GRANT ALL ON FUNCTION public.st_rotate(public.geometry, double precision, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    459                       0    0 Y   FUNCTION st_rotate(public.geometry, double precision, double precision, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_rotate(public.geometry, double precision, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    458                       0    0 6   FUNCTION st_rotatex(public.geometry, double precision)    ACL     m   GRANT ALL ON FUNCTION public.st_rotatex(public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    461                        0    0 6   FUNCTION st_rotatey(public.geometry, double precision)    ACL     m   GRANT ALL ON FUNCTION public.st_rotatey(public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    462            !           0    0 6   FUNCTION st_rotatez(public.geometry, double precision)    ACL     m   GRANT ALL ON FUNCTION public.st_rotatez(public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    460            "           0    0 3   FUNCTION st_scale(public.geometry, public.geometry)    ACL     j   GRANT ALL ON FUNCTION public.st_scale(public.geometry, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    465            #           0    0 F   FUNCTION st_scale(public.geometry, double precision, double precision)    ACL     }   GRANT ALL ON FUNCTION public.st_scale(public.geometry, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    468            $           0    0 K   FUNCTION st_scale(public.geometry, public.geometry, origin public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.st_scale(public.geometry, public.geometry, origin public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    466            %           0    0 X   FUNCTION st_scale(public.geometry, double precision, double precision, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_scale(public.geometry, double precision, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    467            &           0    0 4   FUNCTION st_scroll(public.geometry, public.geometry)    ACL     k   GRANT ALL ON FUNCTION public.st_scroll(public.geometry, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    404            '           0    0 R   FUNCTION st_segmentize(geog public.geography, max_segment_length double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_segmentize(geog public.geography, max_segment_length double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    874            (           0    0 9   FUNCTION st_segmentize(public.geometry, double precision)    ACL     p   GRANT ALL ON FUNCTION public.st_segmentize(public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    546            )           0    0 H   FUNCTION st_seteffectivearea(public.geometry, double precision, integer)    ACL        GRANT ALL ON FUNCTION public.st_seteffectivearea(public.geometry, double precision, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    539            *           0    0 ?   FUNCTION st_setpoint(public.geometry, integer, public.geometry)    ACL     v   GRANT ALL ON FUNCTION public.st_setpoint(public.geometry, integer, public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    441            +           0    0 8   FUNCTION st_setsrid(geog public.geography, srid integer)    ACL     o   GRANT ALL ON FUNCTION public.st_setsrid(geog public.geography, srid integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    886            ,           0    0 7   FUNCTION st_setsrid(geom public.geometry, srid integer)    ACL     n   GRANT ALL ON FUNCTION public.st_setsrid(geom public.geometry, srid integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    490            -           0    0 E   FUNCTION st_sharedpaths(geom1 public.geometry, geom2 public.geometry)    ACL     |   GRANT ALL ON FUNCTION public.st_sharedpaths(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    592            .           0    0 +   FUNCTION st_shiftlongitude(public.geometry)    ACL     b   GRANT ALL ON FUNCTION public.st_shiftlongitude(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    338            /           0    0 $   FUNCTION st_shortestline(text, text)    ACL     [   GRANT ALL ON FUNCTION public.st_shortestline(text, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    911            0           0    0 F   FUNCTION st_shortestline(geom1 public.geometry, geom2 public.geometry)    ACL     }   GRANT ALL ON FUNCTION public.st_shortestline(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    798            1           0    0 R   FUNCTION st_shortestline(public.geography, public.geography, use_spheroid boolean)    ACL     �   GRANT ALL ON FUNCTION public.st_shortestline(public.geography, public.geography, use_spheroid boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    910            2           0    0 7   FUNCTION st_simplify(public.geometry, double precision)    ACL     n   GRANT ALL ON FUNCTION public.st_simplify(public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    536            3           0    0 @   FUNCTION st_simplify(public.geometry, double precision, boolean)    ACL     w   GRANT ALL ON FUNCTION public.st_simplify(public.geometry, double precision, boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    537            4           0    0 i   FUNCTION st_simplifypolygonhull(geom public.geometry, vertex_fraction double precision, is_outer boolean)    ACL     �   GRANT ALL ON FUNCTION public.st_simplifypolygonhull(geom public.geometry, vertex_fraction double precision, is_outer boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    967            5           0    0 G   FUNCTION st_simplifypreservetopology(public.geometry, double precision)    ACL     ~   GRANT ALL ON FUNCTION public.st_simplifypreservetopology(public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    566            6           0    0 9   FUNCTION st_simplifyvw(public.geometry, double precision)    ACL     p   GRANT ALL ON FUNCTION public.st_simplifyvw(public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    538            7           0    0 P   FUNCTION st_snap(geom1 public.geometry, geom2 public.geometry, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_snap(geom1 public.geometry, geom2 public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    593            8           0    0 9   FUNCTION st_snaptogrid(public.geometry, double precision)    ACL     p   GRANT ALL ON FUNCTION public.st_snaptogrid(public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    544            9           0    0 K   FUNCTION st_snaptogrid(public.geometry, double precision, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_snaptogrid(public.geometry, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    543            :           0    0 o   FUNCTION st_snaptogrid(public.geometry, double precision, double precision, double precision, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_snaptogrid(public.geometry, double precision, double precision, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    542            ;           0    0 �   FUNCTION st_snaptogrid(geom1 public.geometry, geom2 public.geometry, double precision, double precision, double precision, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_snaptogrid(geom1 public.geometry, geom2 public.geometry, double precision, double precision, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    545            <           0    0 ?   FUNCTION st_split(geom1 public.geometry, geom2 public.geometry)    ACL     v   GRANT ALL ON FUNCTION public.st_split(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    591            =           0    0 a   FUNCTION st_square(size double precision, cell_i integer, cell_j integer, origin public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.st_square(size double precision, cell_i integer, cell_j integer, origin public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    949            >           0    0 }   FUNCTION st_squaregrid(size double precision, bounds public.geometry, OUT geom public.geometry, OUT i integer, OUT j integer)    ACL     �   GRANT ALL ON FUNCTION public.st_squaregrid(size double precision, bounds public.geometry, OUT geom public.geometry, OUT i integer, OUT j integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    951            ?           0    0 '   FUNCTION st_srid(geog public.geography)    ACL     ^   GRANT ALL ON FUNCTION public.st_srid(geog public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    885            @           0    0 &   FUNCTION st_srid(geom public.geometry)    ACL     ]   GRANT ALL ON FUNCTION public.st_srid(geom public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    491            A           0    0 '   FUNCTION st_startpoint(public.geometry)    ACL     ^   GRANT ALL ON FUNCTION public.st_startpoint(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    736            B           0    0 [   FUNCTION st_subdivide(geom public.geometry, maxvertices integer, gridsize double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_subdivide(geom public.geometry, maxvertices integer, gridsize double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    586            C           0    0 %   FUNCTION st_summary(public.geography)    ACL     \   GRANT ALL ON FUNCTION public.st_summary(public.geography) TO intenderness_dating_m0dl_user;
          public               postgres    false    883            D           0    0 $   FUNCTION st_summary(public.geometry)    ACL     [   GRANT ALL ON FUNCTION public.st_summary(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    360            E           0    0 =   FUNCTION st_swapordinates(geom public.geometry, ords cstring)    ACL     t   GRANT ALL ON FUNCTION public.st_swapordinates(geom public.geometry, ords cstring) TO intenderness_dating_m0dl_user;
          public               postgres    false    801            F           0    0 b   FUNCTION st_symdifference(geom1 public.geometry, geom2 public.geometry, gridsize double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_symdifference(geom1 public.geometry, geom2 public.geometry, gridsize double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    579            G           0    0 M   FUNCTION st_symmetricdifference(geom1 public.geometry, geom2 public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.st_symmetricdifference(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    580            H           0    0 m   FUNCTION st_tileenvelope(zoom integer, x integer, y integer, bounds public.geometry, margin double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_tileenvelope(zoom integer, x integer, y integer, bounds public.geometry, margin double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    443            I           0    0 A   FUNCTION st_touches(geom1 public.geometry, geom2 public.geometry)    ACL     x   GRANT ALL ON FUNCTION public.st_touches(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    650            J           0    0 /   FUNCTION st_transform(public.geometry, integer)    ACL     f   GRANT ALL ON FUNCTION public.st_transform(public.geometry, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    497            K           0    0 9   FUNCTION st_transform(geom public.geometry, to_proj text)    ACL     p   GRANT ALL ON FUNCTION public.st_transform(geom public.geometry, to_proj text) TO intenderness_dating_m0dl_user;
          public               postgres    false    498            L           0    0 L   FUNCTION st_transform(geom public.geometry, from_proj text, to_srid integer)    ACL     �   GRANT ALL ON FUNCTION public.st_transform(geom public.geometry, from_proj text, to_srid integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    500            M           0    0 I   FUNCTION st_transform(geom public.geometry, from_proj text, to_proj text)    ACL     �   GRANT ALL ON FUNCTION public.st_transform(geom public.geometry, from_proj text, to_proj text) TO intenderness_dating_m0dl_user;
          public               postgres    false    499            N           0    0 S   FUNCTION st_transformpipeline(geom public.geometry, pipeline text, to_srid integer)    ACL     �   GRANT ALL ON FUNCTION public.st_transformpipeline(geom public.geometry, pipeline text, to_srid integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    502            O           0    0 J   FUNCTION st_translate(public.geometry, double precision, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_translate(public.geometry, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    464            P           0    0 \   FUNCTION st_translate(public.geometry, double precision, double precision, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_translate(public.geometry, double precision, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    463            Q           0    0 o   FUNCTION st_transscale(public.geometry, double precision, double precision, double precision, double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_transscale(public.geometry, double precision, double precision, double precision, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    469            R           0    0 2   FUNCTION st_triangulatepolygon(g1 public.geometry)    ACL     i   GRANT ALL ON FUNCTION public.st_triangulatepolygon(g1 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    597            S           0    0 B   FUNCTION st_unaryunion(public.geometry, gridsize double precision)    ACL     y   GRANT ALL ON FUNCTION public.st_unaryunion(public.geometry, gridsize double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    583            T           0    0 $   FUNCTION st_union(public.geometry[])    ACL     [   GRANT ALL ON FUNCTION public.st_union(public.geometry[]) TO intenderness_dating_m0dl_user;
          public               postgres    false    621            U           0    0 ?   FUNCTION st_union(geom1 public.geometry, geom2 public.geometry)    ACL     v   GRANT ALL ON FUNCTION public.st_union(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    581            V           0    0 Z   FUNCTION st_union(geom1 public.geometry, geom2 public.geometry, gridsize double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_union(geom1 public.geometry, geom2 public.geometry, gridsize double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    582            W           0    0 c   FUNCTION st_voronoilines(g1 public.geometry, tolerance double precision, extend_to public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.st_voronoilines(g1 public.geometry, tolerance double precision, extend_to public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    600            X           0    0 f   FUNCTION st_voronoipolygons(g1 public.geometry, tolerance double precision, extend_to public.geometry)    ACL     �   GRANT ALL ON FUNCTION public.st_voronoipolygons(g1 public.geometry, tolerance double precision, extend_to public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    599            Y           0    0 @   FUNCTION st_within(geom1 public.geometry, geom2 public.geometry)    ACL     w   GRANT ALL ON FUNCTION public.st_within(geom1 public.geometry, geom2 public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    655            Z           0    0    FUNCTION st_wkbtosql(wkb bytea)    ACL     V   GRANT ALL ON FUNCTION public.st_wkbtosql(wkb bytea) TO intenderness_dating_m0dl_user;
          public               postgres    false    943            [           0    0    FUNCTION st_wkttosql(text)    ACL     Q   GRANT ALL ON FUNCTION public.st_wkttosql(text) TO intenderness_dating_m0dl_user;
          public               postgres    false    748            \           0    0 U   FUNCTION st_wrapx(geom public.geometry, wrap double precision, move double precision)    ACL     �   GRANT ALL ON FUNCTION public.st_wrapx(geom public.geometry, wrap double precision, move double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    339            ]           0    0    FUNCTION st_x(public.geometry)    ACL     U   GRANT ALL ON FUNCTION public.st_x(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    272            ^           0    0    FUNCTION st_xmax(public.box3d)    ACL     U   GRANT ALL ON FUNCTION public.st_xmax(public.box3d) TO intenderness_dating_m0dl_user;
          public               postgres    false    343            _           0    0    FUNCTION st_xmin(public.box3d)    ACL     U   GRANT ALL ON FUNCTION public.st_xmin(public.box3d) TO intenderness_dating_m0dl_user;
          public               postgres    false    340            `           0    0    FUNCTION st_y(public.geometry)    ACL     U   GRANT ALL ON FUNCTION public.st_y(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    273            a           0    0    FUNCTION st_ymax(public.box3d)    ACL     U   GRANT ALL ON FUNCTION public.st_ymax(public.box3d) TO intenderness_dating_m0dl_user;
          public               postgres    false    344            b           0    0    FUNCTION st_ymin(public.box3d)    ACL     U   GRANT ALL ON FUNCTION public.st_ymin(public.box3d) TO intenderness_dating_m0dl_user;
          public               postgres    false    341            c           0    0    FUNCTION st_z(public.geometry)    ACL     U   GRANT ALL ON FUNCTION public.st_z(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    274            d           0    0    FUNCTION st_zmax(public.box3d)    ACL     U   GRANT ALL ON FUNCTION public.st_zmax(public.box3d) TO intenderness_dating_m0dl_user;
          public               postgres    false    345            e           0    0 #   FUNCTION st_zmflag(public.geometry)    ACL     Z   GRANT ALL ON FUNCTION public.st_zmflag(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    411            f           0    0    FUNCTION st_zmin(public.box3d)    ACL     U   GRANT ALL ON FUNCTION public.st_zmin(public.box3d) TO intenderness_dating_m0dl_user;
          public               postgres    false    342            �           1255    17471     trigger_matching_for_all_users()    FUNCTION     t
  CREATE FUNCTION public.trigger_matching_for_all_users() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  user1 RECORD;
  user2 RECORD;
  distance FLOAT;
  match_score INT;
BEGIN
  FOR user1 IN
    SELECT * FROM users
  LOOP
    FOR user2 IN
      SELECT * FROM users WHERE id != user1.id
    LOOP
      -- Calculate distance (Haversine formula)
      distance := calculate_distance(user1.latitude, user1.longitude, user2.latitude, user2.longitude);
      
      IF distance <= 100 THEN  -- Within max distance (e.g., 100 km)
       
        match_score := (
          -- Relationship Goal Match
          CASE 
              WHEN user1.relationship_goal = user2.relationship_goal THEN 20 
              ELSE 0 
          END +

          -- Values Importance Match
          CASE 
              WHEN user1.values_importance = user2.values_importance THEN 15 
              ELSE 0 
          END +

          -- Attachment Style Match
          CASE 
              WHEN user1.attachment_style = user2.attachment_style THEN 10 
              ELSE 0 
          END +

          -- Communication Style Match
          CASE 
              WHEN user1.communication_style = user2.communication_style THEN 10 
              ELSE 0 
          END +

          -- Conflict Resolution Style Match
          CASE 
              WHEN user1.conflict_resolution = user2.conflict_resolution THEN 10 
              ELSE 0 
          END +

          -- Emotional Intelligence Match
          CASE 
              WHEN user1.emotional_intelligence = user2.emotional_intelligence THEN 10 
              ELSE 0 
          END +

          -- Passions and Intimacy Match
          CASE 
              WHEN user1.passions_and_intimacy = user2.passions_and_intimacy THEN 10 
              ELSE 0 
          END +

          -- Personal Growth Match
          CASE 
              WHEN user1.personal_growth = user2.personal_growth THEN 5 
              ELSE 0 
          END +

          -- Fun & Playfulness Match
          CASE 
              WHEN user1.fun_playfulness = user2.fun_playfulness THEN 5 
              ELSE 0 
          END +

          -- Gender Match: Only man and woman can be matched
          CASE
              WHEN (user1.gender = 'man' AND user2.gender = 'woman') OR 
                   (user1.gender = 'woman' AND user2.gender = 'man') THEN 5
              ELSE 0
          END
        ); 

        -- Save match if score meets threshold
        IF match_score > 30 THEN
          INSERT INTO matches (user1_id, user2_id, match_score, status)
          VALUES (user1.id, user2.id, match_score, 'pending');
        END IF;
      END IF;
    END LOOP;
  END LOOP;
END;
$$;
 7   DROP FUNCTION public.trigger_matching_for_all_users();
       public               intenderness_dating_m0dl_user    false    6            �           1255    17472 $   update_compatibility_scores(integer)    FUNCTION     �  CREATE FUNCTION public.update_compatibility_scores(input_user_id integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  user1 RECORD;  -- This will hold the data for the user whose compatibility is being calculated
  u2 RECORD;     -- This will hold data for each user being compared
  score INT;     -- This will store the compatibility score for the pair of users
BEGIN
  -- Fetch the primary user as a complete record
  SELECT * 
  INTO user1
  FROM user_profile
  WHERE user_profile.user_id = input_user_id;

  -- Check if user1 was successfully assigned
  IF NOT FOUND THEN
    -- If no user is found with that user_id, raise an error
    RAISE EXCEPTION 'User with ID % not found in user_profile table', input_user_id;
  END IF;

  -- Loop through each other user and calculate compatibility
  FOR u2 IN 
    SELECT user_id, relationship_goal, values_importance, communication_style, preferred_activities
    FROM user_profile
    WHERE user_profile.user_id != input_user_id  -- Exclude the current user (user1)
  LOOP
    -- Initialize score for each user pair
    score := 0;
    
    -- Calculate compatibility score based on matching criteria, skipping NULL or empty values
    IF COALESCE(user1.relationship_goal, '') = COALESCE(u2.relationship_goal, '') THEN
      score := score + 20;  -- Add 20 points if the relationship_goal matches
    END IF;

    IF COALESCE(user1.values_importance, 0) = COALESCE(u2.values_importance, 0) THEN
      score := score + 15;  -- Add 15 points if values_importance matches
    END IF;

    IF COALESCE(user1.communication_style, '') = COALESCE(u2.communication_style, '') THEN
      score := score + 10;  -- Add 10 points if communication_style matches
    END IF;

    IF COALESCE(user1.preferred_activities, '') = COALESCE(u2.preferred_activities, '') THEN
      score := score + 10;  -- Add 10 points if preferred_activities matches
    END IF;

    -- Insert compatibility score for this user pair, do nothing if the record already exists
    INSERT INTO compatibility_scores (user1_id, user2_id, score)
    VALUES (input_user_id, u2.user_id, score)
    ON CONFLICT (user1_id, user2_id) 
    DO NOTHING;  -- Do nothing if the record already exists (avoid duplicate entries)
  END LOOP;
END;
$$;
 I   DROP FUNCTION public.update_compatibility_scores(input_user_id integer);
       public               intenderness_dating_m0dl_user    false    6            g           0    0 J   FUNCTION updategeometrysrid(character varying, character varying, integer)    ACL     �   GRANT ALL ON FUNCTION public.updategeometrysrid(character varying, character varying, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    487            h           0    0 ]   FUNCTION updategeometrysrid(character varying, character varying, character varying, integer)    ACL     �   GRANT ALL ON FUNCTION public.updategeometrysrid(character varying, character varying, character varying, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    486            i           0    0 �   FUNCTION updategeometrysrid(catalogn_name character varying, schema_name character varying, table_name character varying, column_name character varying, new_srid_in integer)    ACL     �   GRANT ALL ON FUNCTION public.updategeometrysrid(catalogn_name character varying, schema_name character varying, table_name character varying, column_name character varying, new_srid_in integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    485            j           0    0 %   FUNCTION st_3dextent(public.geometry)    ACL     \   GRANT ALL ON FUNCTION public.st_3dextent(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    1700            k           0    0 $   FUNCTION st_asflatgeobuf(anyelement)    ACL     [   GRANT ALL ON FUNCTION public.st_asflatgeobuf(anyelement) TO intenderness_dating_m0dl_user;
          public               postgres    false    1718            l           0    0 -   FUNCTION st_asflatgeobuf(anyelement, boolean)    ACL     d   GRANT ALL ON FUNCTION public.st_asflatgeobuf(anyelement, boolean) TO intenderness_dating_m0dl_user;
          public               postgres    false    1719            m           0    0 3   FUNCTION st_asflatgeobuf(anyelement, boolean, text)    ACL     j   GRANT ALL ON FUNCTION public.st_asflatgeobuf(anyelement, boolean, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    1720            n           0    0     FUNCTION st_asgeobuf(anyelement)    ACL     W   GRANT ALL ON FUNCTION public.st_asgeobuf(anyelement) TO intenderness_dating_m0dl_user;
          public               postgres    false    1716            o           0    0 &   FUNCTION st_asgeobuf(anyelement, text)    ACL     ]   GRANT ALL ON FUNCTION public.st_asgeobuf(anyelement, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    1717            p           0    0    FUNCTION st_asmvt(anyelement)    ACL     T   GRANT ALL ON FUNCTION public.st_asmvt(anyelement) TO intenderness_dating_m0dl_user;
          public               postgres    false    1711            q           0    0 #   FUNCTION st_asmvt(anyelement, text)    ACL     Z   GRANT ALL ON FUNCTION public.st_asmvt(anyelement, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    1712            r           0    0 ,   FUNCTION st_asmvt(anyelement, text, integer)    ACL     c   GRANT ALL ON FUNCTION public.st_asmvt(anyelement, text, integer) TO intenderness_dating_m0dl_user;
          public               postgres    false    1713            s           0    0 2   FUNCTION st_asmvt(anyelement, text, integer, text)    ACL     i   GRANT ALL ON FUNCTION public.st_asmvt(anyelement, text, integer, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    1714            t           0    0 8   FUNCTION st_asmvt(anyelement, text, integer, text, text)    ACL     o   GRANT ALL ON FUNCTION public.st_asmvt(anyelement, text, integer, text, text) TO intenderness_dating_m0dl_user;
          public               postgres    false    1715            u           0    0 0   FUNCTION st_clusterintersecting(public.geometry)    ACL     g   GRANT ALL ON FUNCTION public.st_clusterintersecting(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    1706            v           0    0 <   FUNCTION st_clusterwithin(public.geometry, double precision)    ACL     s   GRANT ALL ON FUNCTION public.st_clusterwithin(public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    1707            w           0    0 $   FUNCTION st_collect(public.geometry)    ACL     [   GRANT ALL ON FUNCTION public.st_collect(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    1705            x           0    0 *   FUNCTION st_coverageunion(public.geometry)    ACL     a   GRANT ALL ON FUNCTION public.st_coverageunion(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    1710            y           0    0 #   FUNCTION st_extent(public.geometry)    ACL     Z   GRANT ALL ON FUNCTION public.st_extent(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    1699            z           0    0 %   FUNCTION st_makeline(public.geometry)    ACL     \   GRANT ALL ON FUNCTION public.st_makeline(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    1709            {           0    0 '   FUNCTION st_memcollect(public.geometry)    ACL     ^   GRANT ALL ON FUNCTION public.st_memcollect(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    1701            |           0    0 %   FUNCTION st_memunion(public.geometry)    ACL     \   GRANT ALL ON FUNCTION public.st_memunion(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    1702            }           0    0 '   FUNCTION st_polygonize(public.geometry)    ACL     ^   GRANT ALL ON FUNCTION public.st_polygonize(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    1708            ~           0    0 "   FUNCTION st_union(public.geometry)    ACL     Y   GRANT ALL ON FUNCTION public.st_union(public.geometry) TO intenderness_dating_m0dl_user;
          public               postgres    false    1703                       0    0 4   FUNCTION st_union(public.geometry, double precision)    ACL     k   GRANT ALL ON FUNCTION public.st_union(public.geometry, double precision) TO intenderness_dating_m0dl_user;
          public               postgres    false    1704            �            1259    17596    chat_messages    TABLE     �  CREATE TABLE public.chat_messages (
    message_id character varying(255) NOT NULL,
    chat_id character varying(255),
    sender_id character varying(255),
    sender_name character varying(255),
    receiver_id character varying(255),
    receiver_name character varying(255),
    message text,
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    message_type character varying(50),
    status character varying(50),
    is_system boolean DEFAULT false
);
 !   DROP TABLE public.chat_messages;
       public         heap r       intenderness_dating_m0dl_user    false    6            �            1259    17603    chat_participants    TABLE     �   CREATE TABLE public.chat_participants (
    chat_id character varying(255) NOT NULL,
    user_id character varying(255) NOT NULL,
    user_name character varying(255)
);
 %   DROP TABLE public.chat_participants;
       public         heap r       intenderness_dating_m0dl_user    false    6            �            1259    17608    chats    TABLE     �   CREATE TABLE public.chats (
    chat_id character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    last_message text,
    last_message_at timestamp without time zone
);
    DROP TABLE public.chats;
       public         heap r       intenderness_dating_m0dl_user    false    6            �            1259    17625    communities    TABLE     |  CREATE TABLE public.communities (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    created_by integer NOT NULL,
    is_premium boolean DEFAULT false,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    profile_picture character varying(255)
);
    DROP TABLE public.communities;
       public         heap r       intenderness_dating_m0dl_user    false    6            �            1259    17624    communities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.communities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.communities_id_seq;
       public               intenderness_dating_m0dl_user    false    6    235            �           0    0    communities_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.communities_id_seq OWNED BY public.communities.id;
          public               intenderness_dating_m0dl_user    false    234            �            1259    17703    community_members    TABLE       CREATE TABLE public.community_members (
    id integer NOT NULL,
    community_id integer NOT NULL,
    user_id integer NOT NULL,
    role character varying(50) DEFAULT 'member'::character varying,
    joined_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 %   DROP TABLE public.community_members;
       public         heap r       intenderness_dating_m0dl_user    false    6            �            1259    17702    community_members_id_seq    SEQUENCE     �   CREATE SEQUENCE public.community_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.community_members_id_seq;
       public               intenderness_dating_m0dl_user    false    243    6            �           0    0    community_members_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.community_members_id_seq OWNED BY public.community_members.id;
          public               intenderness_dating_m0dl_user    false    242            �            1259    17473    compatibility_scores    TABLE     �   CREATE TABLE public.compatibility_scores (
    id integer NOT NULL,
    user1_id integer,
    user2_id integer,
    score integer,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);
 (   DROP TABLE public.compatibility_scores;
       public         heap r       intenderness_dating_m0dl_user    false    6            �            1259    17478    compatibility_scores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.compatibility_scores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.compatibility_scores_id_seq;
       public               intenderness_dating_m0dl_user    false    221    6            �           0    0    compatibility_scores_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.compatibility_scores_id_seq OWNED BY public.compatibility_scores.id;
          public               intenderness_dating_m0dl_user    false    222            �            1259    17664    forum_posts    TABLE     $  CREATE TABLE public.forum_posts (
    id integer NOT NULL,
    forum_id integer NOT NULL,
    content text NOT NULL,
    created_by integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.forum_posts;
       public         heap r       intenderness_dating_m0dl_user    false    6            �            1259    17663    forum_posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.forum_posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.forum_posts_id_seq;
       public               intenderness_dating_m0dl_user    false    6    239            �           0    0    forum_posts_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.forum_posts_id_seq OWNED BY public.forum_posts.id;
          public               intenderness_dating_m0dl_user    false    238            �            1259    17685    forum_reactions    TABLE     �   CREATE TABLE public.forum_reactions (
    id integer NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL,
    reaction_type character varying(50) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 #   DROP TABLE public.forum_reactions;
       public         heap r       intenderness_dating_m0dl_user    false    6            �            1259    17684    forum_reactions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.forum_reactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.forum_reactions_id_seq;
       public               intenderness_dating_m0dl_user    false    6    241            �           0    0    forum_reactions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.forum_reactions_id_seq OWNED BY public.forum_reactions.id;
          public               intenderness_dating_m0dl_user    false    240            �            1259    17643    forums    TABLE     q  CREATE TABLE public.forums (
    id integer NOT NULL,
    community_id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text,
    created_by integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    profile_picture character varying(255)
);
    DROP TABLE public.forums;
       public         heap r       intenderness_dating_m0dl_user    false    6            �            1259    17642    forums_id_seq    SEQUENCE     �   CREATE SEQUENCE public.forums_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.forums_id_seq;
       public               intenderness_dating_m0dl_user    false    6    237            �           0    0    forums_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.forums_id_seq OWNED BY public.forums.id;
          public               intenderness_dating_m0dl_user    false    236            �            1259    17479    friend_requests    TABLE     �  CREATE TABLE public.friend_requests (
    request_id integer NOT NULL,
    requester_id integer NOT NULL,
    receiver_id integer NOT NULL,
    status character varying(20) NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    CONSTRAINT friend_requests_status_check CHECK (((status)::text = ANY (ARRAY[('rejected'::character varying)::text, ('liked'::character varying)::text])))
);
 #   DROP TABLE public.friend_requests;
       public         heap r       intenderness_dating_m0dl_user    false    6            �            1259    17485    friend_requests_request_id_seq    SEQUENCE     �   CREATE SEQUENCE public.friend_requests_request_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.friend_requests_request_id_seq;
       public               intenderness_dating_m0dl_user    false    6    223            �           0    0    friend_requests_request_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.friend_requests_request_id_seq OWNED BY public.friend_requests.request_id;
          public               intenderness_dating_m0dl_user    false    224            �            1259    17486    friends    TABLE     �   CREATE TABLE public.friends (
    user1_id integer NOT NULL,
    user2_id integer NOT NULL,
    created_at timestamp without time zone DEFAULT now()
);
    DROP TABLE public.friends;
       public         heap r       intenderness_dating_m0dl_user    false    6            �            1259    17490    otps    TABLE     �   CREATE TABLE public.otps (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    otp character varying(10) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    expiresat timestamp without time zone
);
    DROP TABLE public.otps;
       public         heap r       intenderness_dating_m0dl_user    false    6            �            1259    17494    otps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.otps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.otps_id_seq;
       public               intenderness_dating_m0dl_user    false    6    226            �           0    0    otps_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.otps_id_seq OWNED BY public.otps.id;
          public               intenderness_dating_m0dl_user    false    227            �            1259    17495    user_profile    TABLE     y  CREATE TABLE public.user_profile (
    user_id integer NOT NULL,
    relationship_goal character varying(50),
    communication_style character varying(50),
    lifestyle character varying(50),
    interests text[],
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    age integer,
    gender character varying(10),
    profile_picture character varying(255),
    other_images text[],
    about_me text,
    languages text[],
    religion character varying(100),
    education character varying(100),
    verified boolean,
    family_plans character varying(255)
);
     DROP TABLE public.user_profile;
       public         heap r       intenderness_dating_m0dl_user    false    6            �            1259    17507    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password_hash character varying(255) NOT NULL,
    registration_date timestamp without time zone DEFAULT now(),
    status character varying(20) DEFAULT 'waitlisted'::character varying,
    login_status character varying(20) DEFAULT 'offline'::character varying,
    last_active timestamp without time zone,
    waitlist_end_date timestamp without time zone DEFAULT (now() + '3 days'::interval),
    referral_code character varying(255),
    referrer_id integer,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    name character varying(255),
    location_address character varying(255),
    location_longitude double precision,
    location_latitude double precision,
    roles integer[] DEFAULT '{2001}'::integer[],
    location_geom public.geography(Point,4326),
    reset_token character varying(255)
);
    DROP TABLE public.users;
       public         heap r       intenderness_dating_m0dl_user    false    2    2    6    6    2    6    2    6    2    6    2    6    2    6    2    6    6            �            1259    17519    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               intenderness_dating_m0dl_user    false    229    6            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               intenderness_dating_m0dl_user    false    230            t           2604    17628    communities id    DEFAULT     p   ALTER TABLE ONLY public.communities ALTER COLUMN id SET DEFAULT nextval('public.communities_id_seq'::regclass);
 =   ALTER TABLE public.communities ALTER COLUMN id DROP DEFAULT;
       public               intenderness_dating_m0dl_user    false    235    234    235            �           2604    17706    community_members id    DEFAULT     |   ALTER TABLE ONLY public.community_members ALTER COLUMN id SET DEFAULT nextval('public.community_members_id_seq'::regclass);
 C   ALTER TABLE public.community_members ALTER COLUMN id DROP DEFAULT;
       public               intenderness_dating_m0dl_user    false    243    242    243            ^           2604    17614    compatibility_scores id    DEFAULT     �   ALTER TABLE ONLY public.compatibility_scores ALTER COLUMN id SET DEFAULT nextval('public.compatibility_scores_id_seq'::regclass);
 F   ALTER TABLE public.compatibility_scores ALTER COLUMN id DROP DEFAULT;
       public               intenderness_dating_m0dl_user    false    222    221            {           2604    17667    forum_posts id    DEFAULT     p   ALTER TABLE ONLY public.forum_posts ALTER COLUMN id SET DEFAULT nextval('public.forum_posts_id_seq'::regclass);
 =   ALTER TABLE public.forum_posts ALTER COLUMN id DROP DEFAULT;
       public               intenderness_dating_m0dl_user    false    239    238    239            ~           2604    17688    forum_reactions id    DEFAULT     x   ALTER TABLE ONLY public.forum_reactions ALTER COLUMN id SET DEFAULT nextval('public.forum_reactions_id_seq'::regclass);
 A   ALTER TABLE public.forum_reactions ALTER COLUMN id DROP DEFAULT;
       public               intenderness_dating_m0dl_user    false    241    240    241            x           2604    17646 	   forums id    DEFAULT     f   ALTER TABLE ONLY public.forums ALTER COLUMN id SET DEFAULT nextval('public.forums_id_seq'::regclass);
 8   ALTER TABLE public.forums ALTER COLUMN id DROP DEFAULT;
       public               intenderness_dating_m0dl_user    false    237    236    237            a           2604    17615    friend_requests request_id    DEFAULT     �   ALTER TABLE ONLY public.friend_requests ALTER COLUMN request_id SET DEFAULT nextval('public.friend_requests_request_id_seq'::regclass);
 I   ALTER TABLE public.friend_requests ALTER COLUMN request_id DROP DEFAULT;
       public               intenderness_dating_m0dl_user    false    224    223            e           2604    17616    otps id    DEFAULT     b   ALTER TABLE ONLY public.otps ALTER COLUMN id SET DEFAULT nextval('public.otps_id_seq'::regclass);
 6   ALTER TABLE public.otps ALTER COLUMN id DROP DEFAULT;
       public               intenderness_dating_m0dl_user    false    227    226            i           2604    17617    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               intenderness_dating_m0dl_user    false    230    229            _          0    17596    chat_messages 
   TABLE DATA           �   COPY public.chat_messages (message_id, chat_id, sender_id, sender_name, receiver_id, receiver_name, message, "timestamp", message_type, status, is_system) FROM stdin;
    public               intenderness_dating_m0dl_user    false    231   vD      `          0    17603    chat_participants 
   TABLE DATA           H   COPY public.chat_participants (chat_id, user_id, user_name) FROM stdin;
    public               intenderness_dating_m0dl_user    false    232   E      a          0    17608    chats 
   TABLE DATA           S   COPY public.chats (chat_id, created_at, last_message, last_message_at) FROM stdin;
    public               intenderness_dating_m0dl_user    false    233   ]E      c          0    17625    communities 
   TABLE DATA           }   COPY public.communities (id, name, description, created_by, is_premium, created_at, updated_at, profile_picture) FROM stdin;
    public               intenderness_dating_m0dl_user    false    235   �E      k          0    17703    community_members 
   TABLE DATA           W   COPY public.community_members (id, community_id, user_id, role, joined_at) FROM stdin;
    public               intenderness_dating_m0dl_user    false    243   �F      U          0    17473    compatibility_scores 
   TABLE DATA           e   COPY public.compatibility_scores (id, user1_id, user2_id, score, created_at, updated_at) FROM stdin;
    public               intenderness_dating_m0dl_user    false    221   &G      g          0    17664    forum_posts 
   TABLE DATA           `   COPY public.forum_posts (id, forum_id, content, created_by, created_at, updated_at) FROM stdin;
    public               intenderness_dating_m0dl_user    false    239   �H      i          0    17685    forum_reactions 
   TABLE DATA           Z   COPY public.forum_reactions (id, post_id, user_id, reaction_type, created_at) FROM stdin;
    public               intenderness_dating_m0dl_user    false    241   �I      e          0    17643    forums 
   TABLE DATA           w   COPY public.forums (id, community_id, title, content, created_by, created_at, updated_at, profile_picture) FROM stdin;
    public               intenderness_dating_m0dl_user    false    237   J      W          0    17479    friend_requests 
   TABLE DATA           p   COPY public.friend_requests (request_id, requester_id, receiver_id, status, created_at, updated_at) FROM stdin;
    public               intenderness_dating_m0dl_user    false    223   TK      Y          0    17486    friends 
   TABLE DATA           A   COPY public.friends (user1_id, user2_id, created_at) FROM stdin;
    public               intenderness_dating_m0dl_user    false    225   :L      Z          0    17490    otps 
   TABLE DATA           E   COPY public.otps (id, email, otp, created_at, expiresat) FROM stdin;
    public               intenderness_dating_m0dl_user    false    226   wL      ]          0    16720    spatial_ref_sys 
   TABLE DATA           X   COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public               postgres    false    217   (M      \          0    17495    user_profile 
   TABLE DATA           �   COPY public.user_profile (user_id, relationship_goal, communication_style, lifestyle, interests, created_at, updated_at, age, gender, profile_picture, other_images, about_me, languages, religion, education, verified, family_plans) FROM stdin;
    public               intenderness_dating_m0dl_user    false    228   EM      ]          0    17507    users 
   TABLE DATA             COPY public.users (id, email, password_hash, registration_date, status, login_status, last_active, waitlist_end_date, referral_code, referrer_id, created_at, updated_at, name, location_address, location_longitude, location_latitude, roles, location_geom, reset_token) FROM stdin;
    public               intenderness_dating_m0dl_user    false    229   �Q      �           0    0    communities_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.communities_id_seq', 2, true);
          public               intenderness_dating_m0dl_user    false    234            �           0    0    community_members_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.community_members_id_seq', 1, true);
          public               intenderness_dating_m0dl_user    false    242            �           0    0    compatibility_scores_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.compatibility_scores_id_seq', 364, true);
          public               intenderness_dating_m0dl_user    false    222            �           0    0    forum_posts_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.forum_posts_id_seq', 12, true);
          public               intenderness_dating_m0dl_user    false    238            �           0    0    forum_reactions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.forum_reactions_id_seq', 1, false);
          public               intenderness_dating_m0dl_user    false    240            �           0    0    forums_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.forums_id_seq', 2, true);
          public               intenderness_dating_m0dl_user    false    236            �           0    0    friend_requests_request_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.friend_requests_request_id_seq', 80, true);
          public               intenderness_dating_m0dl_user    false    224            �           0    0    otps_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.otps_id_seq', 5, true);
          public               intenderness_dating_m0dl_user    false    227            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 46, true);
          public               intenderness_dating_m0dl_user    false    230            �           2606    17619     chat_messages chat_messages_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.chat_messages
    ADD CONSTRAINT chat_messages_pkey PRIMARY KEY (message_id);
 J   ALTER TABLE ONLY public.chat_messages DROP CONSTRAINT chat_messages_pkey;
       public                 intenderness_dating_m0dl_user    false    231            �           2606    17621 (   chat_participants chat_participants_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.chat_participants
    ADD CONSTRAINT chat_participants_pkey PRIMARY KEY (chat_id, user_id);
 R   ALTER TABLE ONLY public.chat_participants DROP CONSTRAINT chat_participants_pkey;
       public                 intenderness_dating_m0dl_user    false    232    232            �           2606    17635    communities communities_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.communities
    ADD CONSTRAINT communities_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.communities DROP CONSTRAINT communities_pkey;
       public                 intenderness_dating_m0dl_user    false    235            �           2606    17710 (   community_members community_members_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.community_members
    ADD CONSTRAINT community_members_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.community_members DROP CONSTRAINT community_members_pkey;
       public                 intenderness_dating_m0dl_user    false    243            �           2606    17525 .   compatibility_scores compatibility_scores_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.compatibility_scores
    ADD CONSTRAINT compatibility_scores_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.compatibility_scores DROP CONSTRAINT compatibility_scores_pkey;
       public                 intenderness_dating_m0dl_user    false    221            �           2606    17527 ?   compatibility_scores compatibility_scores_user1_id_user2_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.compatibility_scores
    ADD CONSTRAINT compatibility_scores_user1_id_user2_id_key UNIQUE (user1_id, user2_id);
 i   ALTER TABLE ONLY public.compatibility_scores DROP CONSTRAINT compatibility_scores_user1_id_user2_id_key;
       public                 intenderness_dating_m0dl_user    false    221    221            �           2606    17673    forum_posts forum_posts_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.forum_posts
    ADD CONSTRAINT forum_posts_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.forum_posts DROP CONSTRAINT forum_posts_pkey;
       public                 intenderness_dating_m0dl_user    false    239            �           2606    17691 $   forum_reactions forum_reactions_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.forum_reactions
    ADD CONSTRAINT forum_reactions_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.forum_reactions DROP CONSTRAINT forum_reactions_pkey;
       public                 intenderness_dating_m0dl_user    false    241            �           2606    17652    forums forums_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.forums
    ADD CONSTRAINT forums_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.forums DROP CONSTRAINT forums_pkey;
       public                 intenderness_dating_m0dl_user    false    237            �           2606    17529 $   friend_requests friend_requests_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.friend_requests
    ADD CONSTRAINT friend_requests_pkey PRIMARY KEY (request_id);
 N   ALTER TABLE ONLY public.friend_requests DROP CONSTRAINT friend_requests_pkey;
       public                 intenderness_dating_m0dl_user    false    223            �           2606    17531 <   friend_requests friend_requests_requester_id_receiver_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.friend_requests
    ADD CONSTRAINT friend_requests_requester_id_receiver_id_key UNIQUE (requester_id, receiver_id);
 f   ALTER TABLE ONLY public.friend_requests DROP CONSTRAINT friend_requests_requester_id_receiver_id_key;
       public                 intenderness_dating_m0dl_user    false    223    223            �           2606    17533    friends friends_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.friends
    ADD CONSTRAINT friends_pkey PRIMARY KEY (user1_id, user2_id);
 >   ALTER TABLE ONLY public.friends DROP CONSTRAINT friends_pkey;
       public                 intenderness_dating_m0dl_user    false    225    225            �           2606    17623    chats last_message_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.chats
    ADD CONSTRAINT last_message_pkey PRIMARY KEY (chat_id);
 A   ALTER TABLE ONLY public.chats DROP CONSTRAINT last_message_pkey;
       public                 intenderness_dating_m0dl_user    false    233            �           2606    17535    otps otps_email_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.otps
    ADD CONSTRAINT otps_email_key UNIQUE (email);
 =   ALTER TABLE ONLY public.otps DROP CONSTRAINT otps_email_key;
       public                 intenderness_dating_m0dl_user    false    226            �           2606    17537    otps otps_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.otps
    ADD CONSTRAINT otps_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.otps DROP CONSTRAINT otps_pkey;
       public                 intenderness_dating_m0dl_user    false    226            �           2606    17539    friends unique_friendship 
   CONSTRAINT     b   ALTER TABLE ONLY public.friends
    ADD CONSTRAINT unique_friendship UNIQUE (user1_id, user2_id);
 C   ALTER TABLE ONLY public.friends DROP CONSTRAINT unique_friendship;
       public                 intenderness_dating_m0dl_user    false    225    225            �           2606    17541 )   friend_requests unique_friendship_request 
   CONSTRAINT     y   ALTER TABLE ONLY public.friend_requests
    ADD CONSTRAINT unique_friendship_request UNIQUE (requester_id, receiver_id);
 S   ALTER TABLE ONLY public.friend_requests DROP CONSTRAINT unique_friendship_request;
       public                 intenderness_dating_m0dl_user    false    223    223            �           2606    17543    user_profile user_profile_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT user_profile_pkey PRIMARY KEY (user_id);
 H   ALTER TABLE ONLY public.user_profile DROP CONSTRAINT user_profile_pkey;
       public                 intenderness_dating_m0dl_user    false    228            �           2606    17545    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public                 intenderness_dating_m0dl_user    false    229            �           2606    17547    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 intenderness_dating_m0dl_user    false    229            �           1259    17548    idx_user1_user2    INDEX     ^   CREATE INDEX idx_user1_user2 ON public.compatibility_scores USING btree (user1_id, user2_id);
 #   DROP INDEX public.idx_user1_user2;
       public                 intenderness_dating_m0dl_user    false    221    221            �           2606    17636 '   communities communities_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.communities
    ADD CONSTRAINT communities_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.users(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.communities DROP CONSTRAINT communities_created_by_fkey;
       public               intenderness_dating_m0dl_user    false    235    229    4255            �           2606    17711 5   community_members community_members_community_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.community_members
    ADD CONSTRAINT community_members_community_id_fkey FOREIGN KEY (community_id) REFERENCES public.communities(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.community_members DROP CONSTRAINT community_members_community_id_fkey;
       public               intenderness_dating_m0dl_user    false    235    243    4263            �           2606    17716 0   community_members community_members_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.community_members
    ADD CONSTRAINT community_members_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.community_members DROP CONSTRAINT community_members_user_id_fkey;
       public               intenderness_dating_m0dl_user    false    229    243    4255            �           2606    17549 7   compatibility_scores compatibility_scores_user1_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.compatibility_scores
    ADD CONSTRAINT compatibility_scores_user1_id_fkey FOREIGN KEY (user1_id) REFERENCES public.users(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.compatibility_scores DROP CONSTRAINT compatibility_scores_user1_id_fkey;
       public               intenderness_dating_m0dl_user    false    229    221    4255            �           2606    17554 7   compatibility_scores compatibility_scores_user2_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.compatibility_scores
    ADD CONSTRAINT compatibility_scores_user2_id_fkey FOREIGN KEY (user2_id) REFERENCES public.users(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.compatibility_scores DROP CONSTRAINT compatibility_scores_user2_id_fkey;
       public               intenderness_dating_m0dl_user    false    4255    221    229            �           2606    17559    friend_requests fk_receiver    FK CONSTRAINT     �   ALTER TABLE ONLY public.friend_requests
    ADD CONSTRAINT fk_receiver FOREIGN KEY (receiver_id) REFERENCES public.users(id) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.friend_requests DROP CONSTRAINT fk_receiver;
       public               intenderness_dating_m0dl_user    false    4255    223    229            �           2606    17564    friend_requests fk_requester    FK CONSTRAINT     �   ALTER TABLE ONLY public.friend_requests
    ADD CONSTRAINT fk_requester FOREIGN KEY (requester_id) REFERENCES public.users(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.friend_requests DROP CONSTRAINT fk_requester;
       public               intenderness_dating_m0dl_user    false    229    4255    223            �           2606    17679 '   forum_posts forum_posts_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.forum_posts
    ADD CONSTRAINT forum_posts_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.users(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.forum_posts DROP CONSTRAINT forum_posts_created_by_fkey;
       public               intenderness_dating_m0dl_user    false    239    229    4255            �           2606    17674 %   forum_posts forum_posts_forum_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.forum_posts
    ADD CONSTRAINT forum_posts_forum_id_fkey FOREIGN KEY (forum_id) REFERENCES public.forums(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.forum_posts DROP CONSTRAINT forum_posts_forum_id_fkey;
       public               intenderness_dating_m0dl_user    false    239    4265    237            �           2606    17692 ,   forum_reactions forum_reactions_post_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.forum_reactions
    ADD CONSTRAINT forum_reactions_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.forum_posts(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.forum_reactions DROP CONSTRAINT forum_reactions_post_id_fkey;
       public               intenderness_dating_m0dl_user    false    239    241    4267            �           2606    17697 ,   forum_reactions forum_reactions_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.forum_reactions
    ADD CONSTRAINT forum_reactions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.forum_reactions DROP CONSTRAINT forum_reactions_user_id_fkey;
       public               intenderness_dating_m0dl_user    false    241    229    4255            �           2606    17653    forums forums_community_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.forums
    ADD CONSTRAINT forums_community_id_fkey FOREIGN KEY (community_id) REFERENCES public.communities(id) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.forums DROP CONSTRAINT forums_community_id_fkey;
       public               intenderness_dating_m0dl_user    false    237    235    4263            �           2606    17658    forums forums_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.forums
    ADD CONSTRAINT forums_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.users(id) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.forums DROP CONSTRAINT forums_created_by_fkey;
       public               intenderness_dating_m0dl_user    false    4255    229    237            �           2606    17569    friends friends_user1_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.friends
    ADD CONSTRAINT friends_user1_id_fkey FOREIGN KEY (user1_id) REFERENCES public.users(id) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.friends DROP CONSTRAINT friends_user1_id_fkey;
       public               intenderness_dating_m0dl_user    false    225    229    4255            �           2606    17574    friends friends_user2_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.friends
    ADD CONSTRAINT friends_user2_id_fkey FOREIGN KEY (user2_id) REFERENCES public.users(id) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.friends DROP CONSTRAINT friends_user2_id_fkey;
       public               intenderness_dating_m0dl_user    false    229    225    4255            �           2606    17579 &   user_profile user_profile_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT user_profile_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.user_profile DROP CONSTRAINT user_profile_user_id_fkey;
       public               intenderness_dating_m0dl_user    false    4255    229    228            �           2606    17584    users users_referrer_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_referrer_id_fkey FOREIGN KEY (referrer_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.users DROP CONSTRAINT users_referrer_id_fkey;
       public               intenderness_dating_m0dl_user    false    4255    229    229            �           826    16391     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     d   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO intenderness_dating_m0dl_user;
                        postgres    false            �           826    16393    DEFAULT PRIVILEGES FOR TYPES    DEFAULT ACL     `   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO intenderness_dating_m0dl_user;
                        postgres    false            �           826    16392     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     d   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO intenderness_dating_m0dl_user;
                        postgres    false            �           826    16390    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO intenderness_dating_m0dl_user;
                        postgres    false            _   �   x�mͽ�0����Up4�~�ڮ.��&M��t@�^C0��I�3̏z���ud�ֵ��[+�Ф�٧RZp�rN�km9O@��F�1Tȑ9�Վ� %-�4��a���]�?���#��:u���k���11���Z)�\N8>      `   :   x�K�H,�7476134547551�46��H�+�L-)I�JƔ��t���I������� YpJ      a   O   x�K�H,�7476134547551�4202�54�5�T04�26�25�351�4����T�HL�BWcneh�gdhD\1z\\\ `�o      c     x����n�0Ek�
7)��£L���4�2����m��}}}H�I�J��ꌮ�\m����A��[�8�K��m�CU�F*Q�F��,��u��i��,��/�M�b����/��/��V�ϩ��~	��@,��GY���
Y��I�Hp~Pɖ��a���k��س�|�n*>L]����U=���̠	#�Z����F�N~>���	�G�hտ���x�dRg�u��I���_�_�i�˲(+��L������`?�]@�e���=����~Fx�q��      k   4   x�3�4��LL����4202�54�54W04�24�26�3�034������� �7�      U   �  x�}��q�0F��*�@<�		�r���~8��f���'t� I��ᇐ���ɲ8��E�1g����t�<����ɾizuW3-P3��à��N6
��{�1j
�=i,�`Kş��Kh�_�!.�a�U�x�+���o�t�i�@���B���g����}#\�s!���D�)��r9���~C��K����I�h,�^uN�������&���[�`
���Q�� h��S�� ��D��7.�1�?�q��!^��'�����j���q�\�
ӻe��/��t��0`3o;1��_3:�T 4�PB�
��Ȃ>+�,
E�>l�@��w�D0x��0�s!�#[Ql�Ep��QS�����P!.�J7\��5�^���j��UZ �      g   +  x�}�=j1F�S(��i�ׅN�6U��ǰ����wH��9BdL��*=}�I�p��A��0�7�ad�"^QT蓡D�œWA������y- ����vF��
��� \���^St��
)A�69O��-��}{P�q:��3T�aI���h���]*:y���1!k��V�2���M{T������%$и�@3����c׿��<��&�I\4�(KIj��o�����#� a�=����ڥB�%��"r���#U��bB)uG������zaaLe��2Y_A�����      i      x������ � �      e   0  x�}�[k�0��g�yٞjbR�*����9����Ԥ�N��Z��'e�>��p8���;���VHh?S%%Ϭ3o���Z��%5`"��j V�@�@�;�'����#�qB��Џn����$in`V�#��f�B�Pչ8$*�st�KEjpD�8��(D���;��\ &v�9�Xu�����}�u���!�e[���`�4�W���ss)�6���Op�C��h��?��Lw��̳[���XjEv!^`���Зd���)[�I��>�D:~�қn���jy��}���dY}��������=      W   �   x�}�9n�@�z���	�˜�]�"K��]��d՟x��Σ�������#��Nv�\K���.������X�bO��r3����ai�=���L�6�^,�'��$&���C�2�FGH���[B���r�ԍd�-�KS�]��"P$g�!}�8da_D�{6r���� �+I�%%�3�i����s{�=u
�D�0��+����9�`|      Y   -   x���46�4202�54�5�T04�26�25�35�046����� ~�      Z   �   x�U�M
�0��9�H��LtV=H7b�H�u�޾Z
V�����H�NÐ_�[��<�e�tc����c₀�#z�%F�dA@���$ը���f=�Iӱ��/�I+���c]"��qP9���c���<�?�9�X��d�D�tO�Öt �`�58�>��?      ]      x������ � �      \   e  x��V�N�8}_���&��[�:b8���@��H�$n�6�S�i�>N���t�A�����vg���Z;��v�(Q�s�!I))�,0��XG4�e��$��2�v"IfX{��(&4鞧L���"���S$K��9�&��A: ���V?t�����[�6��,GT�u�������Đ��z���S�}'G���2���~C��߀�I�u������n��&\v_�Ĝ�R��h׿?t˜�ݘM��t;��Q\߁��A�LP ���B�3��i��N,��a��1����c�+SQԋ�E�ߧ��%�WCqo|����G�BޖT�������B��e�M��4��1��"_�Q���"i\O�Y�iC ^��ZBo#:)��;\v/\��u��k�����U�+���� V�����o�o�t����%�2EM#�g�.�Y�K��t U�! &��ֺ:/GnG�"X瓂�vv9Fu"�gc�ӊ�]��S3f���Zo�npW��s�i�@�m��R\��U^��>�	�������*��v�� v�K�Uł�-�n�hP�k��㾨6V$�Dck|4�h�����2���=�B"�����$��{P���+5� vm%5����ԿF�c������#��y%�)C<
f�n�y����<�#��\�D��L	�;N8n|u���z��,�n���G�o{t���'a3��.墧�~�еMki=|��+�!�1A&�E��Ι�A���
�>�5�^�J\)*�����G6�>�_�:�P�h�NƜ��H�0υq&��~�x�g��F65�-l4"���&���=Xۓ����]y=?���ʱ�g�1�.���a���?~����7���d�&��SW�JW(���F����Y��@���^���˂p"�h��8#I}�kp�D����v�}�^���2� �q{�Yg3I���<���p��R@|�/��r%=�(��v��Z�d�w���|�g��r	ʛ���5腖Z�5x�u�{���F�*�2�����(�H=��&U|��/��iDý�E5�8�^N'��cy�.�	���\[N�wpe%ۢ��'��`k�ugu�{4ɈH�#�W�>����ÿ̭��� >9�      ]   �  x����v�����Sh��#��jF��Āמh�@H��u��vv|��zu5��WU3���`���<Mu�]��6��,�_�������DZ�j��t��L���C�>����ز3/:ޱ�LI��^v��Aa�0����q�2��1b~��A��/ai�ί ���p��L.�Jm����8�U�18�#}�1;�э��i��a��c� E�o�Z���	B�����j�����)�]R�0T�;�*(��� �#��ik/�4�.1��wG�׵���p�+���Nnu'�R�U-�뽃\�A}�x��}~��*�]�Ll˦�V���~PRP��oz;UZ�dJ�����mɩ0��>��U���̄��r��s��a�#P���:0�D���0�W>$ x��������P�\\�N0�י�pQ��*�,p$\�H�+��B�`��uh�� [^�~WoV�ϳv8��3>�ƫ�֚j�s�G�v����V�]���c��s>�D%��[�o�HU/Rg��s�[T*��^����>��'3���^G��1��ܼ�;7f/N2��'�8O���u������{��B*�jJ�*{l+ȕ�	�p�+��1�����'{b��v��4�����5�d";W���|�l5$�KG���*�N�Vj�~�ۧTd��ڏE/<C��̶0������T��y=l�������l��y�{�gPd�0�#��s ꧩ����G�b��̦�)���[U\�*�u�M0C��lb+���1(��a�ǹ~Jt������������]G��k���A뙘m�Vܟ*g޷�R�@��3�t�C��Cû߽A�&�e��HYL�ӕ�@�>���a@<;#�K~u��(���觧����{��	��e���0����:������||_�Y��e���Y���ti1x�XA��8Y3[
���(�$���x(��� �t4�I��������:1��-�'m�:��B��@�G����tx���i�Eޯ����~�[2�,����<oJ�[U����)h
S�w >(����8����-4$�٣ߪ�� ZڥB�x��q����qX�Z��^mG�Y�6�B��	v��'�3?�X���b��h�+KJ��n�A5���O{�]Ų�I?�ae�-���M�auj4z�mI��6:J�e���^��7���,��5��GGڹ�G��O�V7��62�z^M/��WK��I��b4�]��z!T#���o��,�3�����������^��PF'6�ٜ�6���#�Yi,23�nk��P/�����z���P�v��;�������*���r����ͺ��?it��p�i��,B�ߦ�0��.sf)�c�̀���*�[|���@j��m����2*ì��5���Rw��9��Sqܘ�,�aҘ�4�#Em�)N���1��(����k���*����N�jØX�N &���"�-g{d�s����/:�a�eu�~�~���A�މߝ�Y��zT�n[��8�ݽ���|�cl!��:9U�� �=uk���Px-^]o��qF7ͣ#Pr0��Qg����f�k��i�vs�̂f���(x�HO�~q�z�ﷆ��Mx�1J�΢��_��4G��������W*�����:,��{~r4k ��a��κ1�Fg�й1+qe�� d���A%��f��?֗/_�Y��g     