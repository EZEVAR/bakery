import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore db = FirebaseFirestore.instance;

Future<List<Map<String, dynamic>>> getProducts() async {
  List<Map<String, dynamic>> productos = [];
  CollectionReference collectionReferenceProductos = db.collection("productos");

  QuerySnapshot queryProductos = await collectionReferenceProductos.get();

  for (var documento in queryProductos.docs) {
    final data = documento.data() as Map<String, dynamic>;
    productos.add(data);
  }

  return productos;
}
