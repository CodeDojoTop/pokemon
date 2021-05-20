import 'package:pokemon_dojo/app/common/rest_client.dart';
import 'package:pokemon_dojo/app/modules/pokemon/pokemon_model.dart';

class ListingRepository {
  ListingRepository(this.client);

  late final RestClient client;

  Future<List<Pokemon>> getPokemons() async {
    final response = await client.get('https://pokeapi.co/api/v2/pokemon');
    return (response['results'] as List)
        .map<Pokemon>((e) => Pokemon.fromJson(e))
        .toList();
  }
}
