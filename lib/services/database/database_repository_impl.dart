import 'package:bakery/services/database/database_service.dart';

class DatabaseRepositoryImpl implements DatabaseRepository {
  DatabaseService service = DatabaseService();

  @override
  Future<void> addUsuario(String name, String lastname, String email,
      String password, String phone) {
    return service.addUsuario(name, lastname, email, password, phone);
  }

  // @override
  // Future<List<Product>> getProducts() {
  //   return service.getProducts();
  // }

  // @override
  // Stream<List<Product>> getProductsStream() {
  //   return service.getProductsStream();
  // }

  // @override
  // Future<void> saveDummyData() {
  //   return service.saveDummyData();
  // }
}

abstract class DatabaseRepository {
  Future<void> addUsuario(String name, String lastname, String email,
      String password, String phone);
  // Future<List<Product>> getProducts();
  // Stream<List<Product>> getProductsStream();
  // Future<void> saveDummyData();
}
