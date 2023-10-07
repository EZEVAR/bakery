import 'package:bakery/features/list_products/cubit/product_list_cubit.dart';
import 'package:bakery/services/database/firetore_service.dart';

import 'package:flutter/material.dart';
import '/app/app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListPage extends StatelessWidget {
  static const name = 'listaproducto';
  // ignore: use_key_in_widget_constructors
  const ProductListPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final user = context.select((AppBloc bloc) => bloc.state.user);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 236, 228, 235), 
        title: Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, 
          children: [
            const Text(
              "Lista de Ofertas!",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "Hola: ${user.email ?? ''}",
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black, 
              ),
            ),
          ],
        ),
      ),
      body: FutureBuilder(
        future: getProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text("Error: ${snapshot.error}");
          } else if (snapshot.hasData) {
            final data = snapshot.data as List<Map<String, dynamic>>;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final nombre = data[index]["nombre"];
                final descripcion = data[index]["descripcion"];
                final precio = data[index]["precio"];
                if (nombre != null) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Nombre:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            nombre.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Descripción:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            descripcion.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Precio:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            precio.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                } else {
                  return const Text("Sin Ofertas");
                }
              },
            );
          } else {
            return const Text("Sin Info");
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _openDialog(context),
      ),
    );
  }

  _openDialog(BuildContext context) {
    String name = '';
    String descripcion = '';
    double precio = 0.0;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Complete los campos'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Nombre'),
                onChanged: (value) {
                  name = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Descripción'),
                onChanged: (value) {
                  descripcion = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Precio'),
                onChanged: (value) {
                  precio = double.parse(value);
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: const Text('Guardar'),
              onPressed: () {
                context
                    .read<ProductListCubit>()
                    .addProduct(name, descripcion, precio);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
