-- Create a table to track buying and selling of items from collections
CREATE TABLE "transactions" (
    "id" INTEGER,
    "title" TEXT,
    "action" TEXT,
    PRIMARY KEY("id")
);

-- Create a trigger to log selling items from collections
CREATE TRIGGER "sell" 
BEFORE DELETE ON "collections"
BEGIN
    INSERT INTO "transactions" ("title", "action")
    VALUES (OLD."title", 'sold');
END;

-- List existing triggers
.schema

-- Delete from collections
DELETE FROM "collections" WHERE "title" = 'Profusion of flowers';

-- Create a trigger to log buying items
CREATE TRIGGER "buy" 
AFTER INSERT ON "collections"
BEGIN
    INSERT INTO "transactions" ("title", "action")
    VALUES (NEW."title", 'bought');
END;

-- Add item to collections
INSERT INTO "collections" ("title", "accession_number", "acquired")
VALUES ('Profusion of flowers', '56.257', '1956-04-12');