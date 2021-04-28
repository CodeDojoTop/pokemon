import 'package:mobx/mobx.dart';

part 'listing_store.g.dart';

class ListingStore = _ListingStoreBase with _$ListingStore;

abstract class _ListingStoreBase with Store {
  @observable
  int value = 0;


  @action
  void increment() {
    value++;
  }
}
