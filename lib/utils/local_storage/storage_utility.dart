import 'dart:html';

import 'package:get_storage/get_storage.dart';

class AStoreAppLocalStorage {
  static final AStoreAppLocalStorage _instance =
      AStoreAppLocalStorage._internal();

  factory AStoreAppLocalStorage() => _instance;
  AStoreAppLocalStorage._internal();
  final _storage = GetStorage();

  ///generic function to save data
  Future<void> saveData<A>(String key, A value) async {
    await _storage.write(key, value);
  }

  ///generic function to get data
  A? getData<A>(String key) {
    return _storage.read(key);
  }

  ///generic function to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  ///generic function to clear all data
  Future<void> clearAllData() async {
    await _storage.erase();
  }
}
