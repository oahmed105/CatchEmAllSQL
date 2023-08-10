--What are all the types of pokemon that a pokemon can have?
select name from types;
--What is the name of the pokemon with id 45?
select * from pokemons where id = 45;
--How many pokemon are there?
select count(*) count from pokemons;
--How many types are there?
select count(*) count from types;
--How many pokemon have a secondary type?
select count(*) st_count from pokemons where secondary_type is not NULL;