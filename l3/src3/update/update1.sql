-- Clean data from a CSV of votes for favorite artwork

-- Count votes
SELECT "title", COUNT("title") FROM "votes" GROUP BY "title";

-- Remove trailing whitespace
UPDATE "votes" SET "title" = trim("title");

-- Force to uppercase
UPDATE "votes" SET "title" = upper("title");

-- Manually update the titles of "Farmers working at dawn"
UPDATE "votes" SET "title" = 'FARMERS WORKING AT DAWN'
WHERE "title" = 'FARMERS WORKING';

UPDATE "votes" SET "title" = 'FARMERS WORKING AT DAWN'
WHERE "title" = 'FAMERS WORKING AT DAWN';

-- Fix misspellings of "Farmers working at dawn"
UPDATE "votes" SET "title" = 'FARMERS WORKING AT DAWN'
WHERE "title" LIKE 'Fa%';

-- Fix misspellings of "Imaginative landscape"
UPDATE "votes" SET "title" = 'IMAGINATIVE LANDSCAPE'
WHERE "title" LIKE 'Imag%';

-- Fix misspellings of "Profusion of flowers"
UPDATE "votes" SET "title" = 'PROFUSION OF FLOWERS'
WHERE "title" LIKE 'Profusion %';
