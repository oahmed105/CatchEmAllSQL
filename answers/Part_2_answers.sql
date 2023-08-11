--What is each pokemon's primary type?
select p.name pokemon, t.name type
from pokemon.pokemons p
join pokemon.types t on t.id = p.primary_type;
--What is Rufflet's secondary type?
select p.name pokemon, t.name secondary_type
from pokemon.pokemons p
join pokemon.types t on t.id = p.secondary_type
where p.name = 'Rufflet';
--What are the names of the pokemon that belong to the trainer with trainerID 303?
select pt.trainerID trainer, p.name pokemon
from pokemon_trainer pt
join pokemons p on pt.pokemon_id = p.id
where pt.trainerID = 303;
--How many pokemon have a secondary type Poison
select count(secondary_type) st_count
from pokemons p
join types t on t.id = p.secondary_type
where t.name = 'Poison';
--What are all the primary types and how many pokemon have that type?
select t.name, count(primary_type) pt_count
from types t
join pokemons p on t.id = p.primary_type
group by p.primary_type;
--How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
select count(pokemon_id) p_count
from pokemon_trainer
where pokelevel >= 100;
--How many pokemon only belong to one trainer and no other?

