CREATE TABLE characters (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
    link TEXT NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP 
);

INSERT INTO characters (name, link)
VALUES ('Moby Dick', 'https://en.wikipedia.org/wiki/Moby-Dick'), ('Fudgie the Whale', 'https://en.wikipedia.org/wiki/Fudgie_the_Whale'), ('Lyngbakr', 'https://en.wikipedia.org/wiki/Lyngbakr');
