-- -- Supprimer la table utilisateurs si elle existe
-- DROP TABLE IF EXISTS users CASCADE;
-- CREATE TABLE IF NOT EXISTS users (
--     id_user SERIAL PRIMARY KEY,
--     username VARCHAR(50) NOT NULL,
--     email VARCHAR(150) UNIQUE NOT NULL,
--     password VARCHAR(255) NOT NULL
-- );

-- -- Supprimer la table category si elle existe
-- DROP TABLE IF EXISTS category CASCADE;
-- CREATE TABLE IF NOT EXISTS category (
--     id_category SERIAL PRIMARY KEY,
--     name_category VARCHAR(50) NOT NULL
-- );

-- -- Supprimer la table Games si elle existe
-- DROP TABLE IF EXISTS Games CASCADE;
-- CREATE TABLE IF NOT EXISTS Games (
--     id_game SERIAL PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     description TEXT,
--     id_category INT,
--     game_path VARCHAR(255),
--     image_path VARCHAR(255),
--     FOREIGN KEY (id_category) REFERENCES category(id_category) ON DELETE CASCADE
-- );

-- -- Supprimer la table avis si elle existe
-- DROP TABLE IF EXISTS review CASCADE;
-- CREATE TABLE IF NOT EXISTS review (
--     id_review SERIAL PRIMARY KEY,
--     id_user INT,
--     id_game INT,
--     note INT CHECK (note BETWEEN 1 AND 5),
--     comment TEXT,
--     FOREIGN KEY (id_user) REFERENCES users(id_user) ON DELETE CASCADE,
--     FOREIGN KEY (id_game) REFERENCES Games(id_game) ON DELETE CASCADE
-- );

-- -- Supprimer la table subscription si elle existe
-- DROP TABLE IF EXISTS subscription CASCADE;
-- CREATE TABLE IF NOT EXISTS subscription (
--     id_subscription SERIAL PRIMARY KEY,
--     name_sub VARCHAR(50) NOT NULL,
--     price DECIMAL(10,2) NOT NULL,   
--     time INT NOT NULL, -- in days
--     id_game INT,
--     FOREIGN KEY (id_game) REFERENCES Games(id_game) ON DELETE CASCADE
-- );


-- INSERT INTO category (name_category) VALUES
-- ('Action'),
-- ('Adventure'),
-- ('Puzzle');
-- INSERT INTO Games (name, description, id_category, image_path, game_path)
-- VALUES 
-- ('Motus', 'A fun game', 1, '/images/motus1.png', '/games/motus'),
-- ('Quiz', 'An adventure game', 2, '/images/quiz1.jpg', '/games/quiz'),
-- ('Memory Game', 'An adventure game', 2, '/images/cardmemory3.png', '/games/memory')

-- ALTER TABLE users ADD COLUMN profile_picture VARCHAR(255);