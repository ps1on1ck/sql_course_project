-- Index for actors
CREATE INDEX actors_first_name_last_name_idx ON actors(first_name, last_name);

-- Index for genres
CREATE INDEX genres_genre_idx ON genres(genre);

-- Indexes for movies
CREATE INDEX movies_title_idx ON movies(title);
CREATE INDEX movies_title_short_desription_idx ON movies(title, short_desription);

-- Index for profiles
CREATE INDEX profiles_first_name_last_name_idx ON profiles(first_name, last_name);

-- Index for users
CREATE INDEX users_email_uq ON users(email);
