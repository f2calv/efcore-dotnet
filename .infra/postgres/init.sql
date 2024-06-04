CREATE DATABASE efcore_dotnet;
CREATE USER efcore_user WITH ENCRYPTED PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE efcore_dotnet TO efcore_user;
\c efcore_dotnet
GRANT ALL ON SCHEMA public TO efcore_user;

-- Table: public.house

-- DROP TABLE IF EXISTS public.house;

CREATE TABLE IF NOT EXISTS public.house
(
    house_id integer NOT NULL DEFAULT nextval('house_house_id_seq'::regclass),
    house_name character varying(100) COLLATE pg_catalog."default" NOT NULL DEFAULT ''::character varying,
    CONSTRAINT house_pkey PRIMARY KEY (house_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.house
    OWNER to efcore_user;

COMMENT ON TABLE public.house
    IS 'this is a table to represent houses';

COMMENT ON COLUMN public.house.house_name
    IS 'this is the house name';

insert into house (house_name) values ('snuggle zone');
insert into house (house_name) values ('some other snuggle zone');


-- Table: public.room

-- DROP TABLE IF EXISTS public.room;

CREATE TABLE IF NOT EXISTS public.room
(
    room_id integer NOT NULL DEFAULT nextval('room_room_id_seq'::regclass),
    room_name character varying COLLATE pg_catalog."default" NOT NULL,
    some_string character varying(80) COLLATE pg_catalog."default" NOT NULL DEFAULT ''::character varying,
    CONSTRAINT room_pkey PRIMARY KEY (room_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.room
    OWNER to efcore_user;

COMMENT ON COLUMN public.room.room_id
    IS 'this is the room id';

COMMENT ON COLUMN public.room.room_name
    IS 'this is the room name';

insert into public.room (room_name, some_string) values ('number 10', 'downing street');
insert into public.room (room_name, some_string) values ('number 12', 'downing street');



