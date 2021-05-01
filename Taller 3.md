* a) Listar las peliculas del año 2000.
  * **σ** movies.year=2000 movies


* b) Mostrar el nombre y apellido de los directores de la base que tienen peliculas fechadas en el año 2000.
  *  movies_2000 = σ movies.year=2000 movies
  * directors_id_2000 = π movies_directors.director_id (movies_2000 ⨝ movies.id = movies_directors.movie_id movies_directors)
  * directors_2000 = directors_id_2000 ⨝ movies_directors.director_id=directors.id directors
  * π directors.first_name,directors.last_name directors_2000


* c) Mostrar los nombres de las peliculas filmadas por Woody Allen.
  * id_woody_allen = π directors.id (σ directors.first_name='Woody' ∧ directors.last_name='Allen' directors)
  * id_woody_allen_movies = π movies_directors.movie_id (movies_directors ⨝ movies_directors.director_id=directors.id  id_woody_allen)
  * π name (movies ⨝ id=movies_directors.movie_id id_woody_allen_movies)


* d) Mostrar los nombres de las peliculas en que Hitler figura como actor.
  * hitler = σ last_name='Hitler' actors
  * hitler_roles = roles ⨝actor_id=actors.id hitler
  * π movies.name (movies ⨝movies.id=roles.movie_id hitler_roles)


* e) ¿Algun director abarca todo los generos?
  * (π directors_genres.director_id,directors_genres.genre directors_genres) ÷ (π directors_genres.genre directors_genres)
    * No 


* f ) Mostrar el nombre y apellido de los directores que abarcaron (al menos) los mismos
generos que Polanski. ¿Y que Scorsese? ¿Y que Tarantino?
  * polanski = σ directors.last_name='Polanski' directors
  * polanski_genres = π directors_genres.genre (directors_genres ⨝ director_id=directors.id polanski)
  * all_directors_genres = π directors_genres.director_id,directors_genres.genre directors_genres
  * π directors.first_name, directors.last_name (directors ⨝ id=directors_genres.director_id (all_directors_genres ÷ polanski_genres))


* g) Mostrar el año de la ultima pelicula.
  * π year movies - π m.year ((ρ m movies) ⨝ m.year<movies.year movies)

* h) Listar las peliculas del ultimo año.
  * last_year = π year movies - π m.year ((ρ m movies) ⨝ m.year<movies.year movies)
  * (ρ LL last_year) ⨝ year=movies.year movies


* i) Listar las peliculas del director Hitchcock en las que actuo Carroll.
  * hitchcock = σ last_name='Hitchcock' directors
  * hitchcock_movies = ρ HM (π movies.id,movies.name (movies ⨝ movies.id=movies_directors.movie_id (movies_directors ⨝ director_id=directors.id hitchcock)))
  * hitchcock_carroll_movies = (roles ⨝ movie_id=HM.id hitchcock_movies) ⨝ roles.actor_id=actors.id (σ actors.last_name='Carroll' actors)
  * π HM.name,actors.last_name hitchcock_carroll_movies


* j) Listar las peliculas del director Hitchcock en las que NO actuo Carroll.
  * hitchcock = σ last_name='Hitchcock' directors
  * hitchcock_movies = ρ HM (π movies.id,movies.name (movies ⨝ movies.id=movies_directors.movie_id (movies_directors ⨝ director_id=directors.id hitchcock)))
  * hitchcock_carroll_movies = (roles ⨝ movie_id=HM.id hitchcock_movies) ⨝ roles.actor_id=actors.id (σ actors.last_name='Carroll' actors)
  * hitchcock_movies - (π HM.id,HM.name hitchcock_carroll_movies)

* k) Listar los actores que participan de al menos 3 pelıculas.
