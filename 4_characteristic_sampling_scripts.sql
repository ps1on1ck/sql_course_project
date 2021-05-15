-- Movies by genres
SELECT
 movie_id as id,
 (SELECT title FROM movies WHERE movies.id = genres_movies.movie_id) as title,
 (SELECT genre FROM genres WHERE genres.id = genres_movies.genre_id) AS genre
 FROM genres_movies;
 
-- Movies by actors
SELECT
 movie_id as id,
 (SELECT title FROM movies WHERE movies.id = actors_movies.movie_id) as title,
 (SELECT CONCAT(first_name, ' ', last_name) FROM actors WHERE actors.id = actors_movies.actor_id) as actor
 FROM actors_movies;