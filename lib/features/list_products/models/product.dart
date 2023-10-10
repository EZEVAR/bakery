import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String nombre;
  final String descripcion;
  final double precio;

  Product({
    required this.nombre,
    required this.descripcion,
    required this.precio,
  });

  factory Product.fromDocumentSnapshot(
      DocumentSnapshot<Map<String, dynamic>> doc) {
    return Product(
      nombre: doc.data()!['nombre'] ?? '',
      descripcion: doc.data()!['descripcion'] ?? '',
      precio: (doc.data()!['precio'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nombre': nombre,
      'descripcion': descripcion,
      'precio': precio,
    };
  }
}
