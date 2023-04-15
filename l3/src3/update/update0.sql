-- Update authorship (incorrectly)
UPDATE "created" SET "artist_id" = (
    SELECT "id" FROM "artists"
    WHERE "name" = 'Li Yin'
);

-- Update authorship (correctly) for a piece with a previously unknown authorship
UPDATE "created" SET "artist_id" = (
    SELECT "id" FROM "artists"
    WHERE "name" = 'Li Yin'
)
WHERE "collection_id" = (
    SELECT "id" FROM "collections"
    WHERE "title" = 'Farmers working at dawn'
);