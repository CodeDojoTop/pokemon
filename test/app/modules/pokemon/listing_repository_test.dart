import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokemon_dojo/app/common/rest_client.dart';
import 'package:pokemon_dojo/app/modules/pokemon/listing_repository.dart';
import 'package:pokemon_dojo/app/modules/pokemon/pokemon_model.dart';

class MockRestClient extends Mock implements RestClient {}

void main() {
  late ListingRepository listingRepository;
  late final MockRestClient restClient = MockRestClient();

  setUp(() {
    when(() => restClient.get('https://pokeapi.co/api/v2/pokemon'))
        .thenAnswer((invocation) => jsonDecode(apiResponse));

    listingRepository = ListingRepository(restClient);
  });

  test('Should return a pokemons list', () async {
    final pokemonsList = await listingRepository.getPokemons();
    expect(pokemonsList, isA<List<Pokemon>>());
  });

  test('Should return a not empty pokemons list', () async {
    final pokemonsList = await listingRepository.getPokemons();
    expect(pokemonsList.isNotEmpty, equals(true));
  });

  test('Should return the first pokemon with name bulbasaur', () async {
    final pokemonsList = await listingRepository.getPokemons();
    expect(pokemonsList.first.name, equals('bulbasaur'));
  });
}

final String apiResponse = r'''
{
  "count": 1118,
  "next": "https://pokeapi.co/api/v2/pokemon?offset=20&limit=20",
  "previous": null,
  "results": [
    {
      "name": "bulbasaur",
      "url": "https://pokeapi.co/api/v2/pokemon/1/"
    },
    {
      "name": "ivysaur",
      "url": "https://pokeapi.co/api/v2/pokemon/2/"
    },
    {
      "name": "venusaur",
      "url": "https://pokeapi.co/api/v2/pokemon/3/"
    },
    {
      "name": "charmander",
      "url": "https://pokeapi.co/api/v2/pokemon/4/"
    },
    {
      "name": "charmeleon",
      "url": "https://pokeapi.co/api/v2/pokemon/5/"
    },
    {
      "name": "charizard",
      "url": "https://pokeapi.co/api/v2/pokemon/6/"
    },
    {
      "name": "squirtle",
      "url": "https://pokeapi.co/api/v2/pokemon/7/"
    },
    {
      "name": "wartortle",
      "url": "https://pokeapi.co/api/v2/pokemon/8/"
    },
    {
      "name": "blastoise",
      "url": "https://pokeapi.co/api/v2/pokemon/9/"
    },
    {
      "name": "caterpie",
      "url": "https://pokeapi.co/api/v2/pokemon/10/"
    },
    {
      "name": "metapod",
      "url": "https://pokeapi.co/api/v2/pokemon/11/"
    },
    {
      "name": "butterfree",
      "url": "https://pokeapi.co/api/v2/pokemon/12/"
    },
    {
      "name": "weedle",
      "url": "https://pokeapi.co/api/v2/pokemon/13/"
    },
    {
      "name": "kakuna",
      "url": "https://pokeapi.co/api/v2/pokemon/14/"
    },
    {
      "name": "beedrill",
      "url": "https://pokeapi.co/api/v2/pokemon/15/"
    },
    {
      "name": "pidgey",
      "url": "https://pokeapi.co/api/v2/pokemon/16/"
    },
    {
      "name": "pidgeotto",
      "url": "https://pokeapi.co/api/v2/pokemon/17/"
    },
    {
      "name": "pidgeot",
      "url": "https://pokeapi.co/api/v2/pokemon/18/"
    },
    {
      "name": "rattata",
      "url": "https://pokeapi.co/api/v2/pokemon/19/"
    },
    {
      "name": "raticate",
      "url": "https://pokeapi.co/api/v2/pokemon/20/"
    }
  ]
}
''';
