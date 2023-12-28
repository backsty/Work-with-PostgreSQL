CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Bands (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre_Band (
	Genre_id INTEGER UNIQUE REFERENCES Genre(id),
	Band_id INTEGER UNIQUE REFERENCES Bands(id),
	CONSTRAINT pk_Genre_Band PRIMARY KEY (Genre_id, Band_id)
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) UNIQUE NOT NULL,
	date_release INTEGER CHECK (release_date_album > 1900)
);

CREATE TABLE IF NOT EXISTS Band_Album (
	Album_id INTEGER REFERENCES Album(id),
	Band_id INTEGER REFERENCES Bands(id),
	CONSTRAINT pk_Band_Album PRIMARY KEY (Album_id, Band_id)
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	duration INTEGER NOT NULL,
	Album_id INTEGER REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) UNIQUE NOT NULL,
	date_release_col INTEGER check(date_release_col>1900)
);

CREATE TABLE IF NOT EXISTS Track_Collection (
	Track_id INTEGER REFERENCES Track(id),
	Collection_id INTEGER REFERENCES Collection(id),
	CONSTRAINT pk_Track_Collection PRIMARY KEY (Track_id, Collection_id)
);
