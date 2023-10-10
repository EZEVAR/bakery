import 'package:bakery/services/database/database_service.dart';

import '../../features/list_products/models/product.dart';

class DatabaseRepositoryImpl implements DatabaseRepository {
  DatabaseService service = DatabaseService();

  @override
  Future<void> addUsuario(
      String name, String lastname, String email, String phone) {
    return service.addUsuario(name, lastname, email, phone);
  }

  @override
  Future<void> addProduct(String nombre, String descripcion, double precio) {
    return service.addProduct(nombre, descripcion, precio);
  }

  @override
  Future<List<Product>> getProducts() {
    return service.getProducts();
  }

  @override
  Stream<List<Product>> getProductsStream() {
    return service.getProductsStream();
  }

  @override
  Future<void> saveDummyData() {
    return service.saveDummyData();
  }
}

abstract class DatabaseRepository {
  Future<void> addUsuario(
    String name,
    String lastname,
    String phone,
    String email,
  );
  Future<void> addProduct(String nombre, String descripcion, double precio);
  Future<List<Product>> getProducts();
  Stream<List<Product>> getProductsStream();
  Future<void> saveDummyData();
}
