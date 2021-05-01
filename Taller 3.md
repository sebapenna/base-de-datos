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


* h) Listar las peliculas del ultimo año.


* i) Listar las peliculas del director Hitchcock en las que actuo Carroll.


* j) Listar las peliculas del director Hitchcock en las que NO actuo Carroll.


* k) Listar los actores que participan de al menos 3 pelıculas.
