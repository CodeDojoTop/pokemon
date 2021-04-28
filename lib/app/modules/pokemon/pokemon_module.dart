import 'package:pokemon_dojo/app/common/rest_client.dart';
import 'package:pokemon_dojo/app/modules/pokemon/listing_repository.dart';
import 'package:pokemon_dojo/app/modules/pokemon/listing_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PokemonModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ListingRepository(i.get<RestClient>())),
    Bind.lazySingleton((i) => ListingStore()),
  ];

  @override
  final List<ModularRoute> routes = [];
}
