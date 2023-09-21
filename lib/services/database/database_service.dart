import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addUsuario(String name, String lastname, String email,
      String password, String phone) async {
    await _db.collection('usuarios').add({
      'name': name,
      'lastname': lastname,
      'email': email,
      'password': password,
      'phone': phone,
    });
  }

  // Future<List<Product>> getProducts() async {
  //   QuerySnapshot<Map<String, dynamic>> productosSnapshot =
  //       await _db.collection('productos').get();

  //   final List<Product> listaProductos = productosSnapshot.docs.map((doc) {
  //     return Product.fromDocumentSnapshot(doc);
  //   }).toList();
  //   return listaProductos;
  // }

  // Stream<List<Product>> getProductsStream() {
  //   Stream<QuerySnapshot<Map<String, dynamic>>> productosStream =
  //       _db.collection('productos').snapshots();

  //   // final List<Product> listaProductos = productosSnapshot.docs.map((doc) {
  //   //   return Product.fromDocumentSnapshot(doc);
  //   // }).toList();
  //   // return listaProductos;
  //   return productosStream.map((snapshot) {
  //     return snapshot.docs
  //         .map((doc) => Product.fromDocumentSnapshot(doc))
  //         .toList();
  //   });
  // }

  // Future<void> saveDummyData() async {
  //   final usuario = [];

  //   for (var usuario in usuarios) {
  //     await _db.collection('usuarios').add(usuario);
  //   }
  // }
}
