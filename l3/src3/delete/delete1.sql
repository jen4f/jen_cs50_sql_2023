-- Raise a foreign key constraint error
DELETE FROM "artists" WHERE "name" = 'Unidentified artist';

-- Delete the artist's affiliation with their work, using hard-coded id
DELETE FROM "created" WHERE "artist_id" = 3;

-- Delete the artist's affiliation with their work, using subquery
DELETE FROM "created" WHERE "artist_id" = (
    SELECT "id" FROM "artists" WHERE "name" = 'Unidentified artist'
);

-- Delete the artist themselves
DELETE FROM "artists" WHERE "name" = 'Unidentified artist';
