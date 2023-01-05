import 'package:smart_pa_news/src/commons/managers/shared_preferences_managers.dart';

class MockSharedPref implements SharedPrefIntarface {
  @override
  Future<bool?> readBool(String key) {
    return Future.value(false);
  }

  @override
  Future<bool?> writeBool(String key, bool value) {
    return Future.value(false);
  }

  @override
  Future<Map<String, dynamic>?> readObject(String key) {
    return Future.value({});
  }

  @override
  Future<bool> writeObject(String key, Map<String, dynamic> value) {
    // TODO: implement writeObject
    throw UnimplementedError();
  }

  @override
  Future<bool> remove(String key) {
    // TODO: implement remove
    throw UnimplementedError();
  }
}
