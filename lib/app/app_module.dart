import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_dojo/app/common/rest_client.dart';

import 'modules/home/home_module.dart';
import 'modules/pokemon/listing_store.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RestClient()),
    Bind.lazySingleton((i) => ListingStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];
}
