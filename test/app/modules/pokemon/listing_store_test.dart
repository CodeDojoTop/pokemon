import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon_dojo/app/modules/pokemon/listing_store.dart';
 
void main() {
  late ListingStore store;

  setUpAll(() {
    store = ListingStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}