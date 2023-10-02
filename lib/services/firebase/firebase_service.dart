import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("Some error occured");
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("Some error occured");
    }
    return null;
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
