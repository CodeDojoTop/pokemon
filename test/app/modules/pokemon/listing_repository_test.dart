import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon_dojo/app/common/rest_client.dart';
import 'package:pokemon_dojo/app/modules/pokemon/listing_repository.dart';

void main() {
  late final ListingRepository listingRepository;

  setUp(() {
    listingRepository = ListingRepository(RestClient());
  });

  test('Should return an pokemons list', () {
    final pokemonsList = listingRepository.getPokemons();
  });
}
