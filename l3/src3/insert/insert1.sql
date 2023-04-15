-- Add a set of new items to the collections
-- Imaginative landscape: https://collections.mfa.org/objects/318/imaginative-landscape?ctx=792f664e-1945-4e0e-9c34-1de7d932bf36&idx=14
-- Peonies and butterfly: https://collections.mfa.org/objects/8532/peonies-and-butterfly?ctx=26ebba4c-6b5c-4234-8e01-60eba690cd70&idx=65

-- Typically, doing one bulk INSERT tends to be faster than many individual INSERTs
INSERT INTO "collections" ("title", "accession_number", "acquired") 
VALUES 
('Imaginative landscape', '56.496', NULL),
('Peonies and butterfly', '06.1899', '1906-01-01');