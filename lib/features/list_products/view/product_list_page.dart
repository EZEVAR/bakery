import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../app/bloc/app_bloc.dart';
import '../../../services/database/database_service.dart';
import '../cubit/product_list_cubit.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  static const name = 'listaproducto';
  static Page<void> page() =>
      const MaterialPage<void>(child: ProductListPage());

  @override
  Widget build(BuildContext context) {
    final user = context.select((AppBloc bloc) => bloc.state.user);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              DatabaseService databaseService = DatabaseService();
              await databaseService.saveDummyData();
            },
            icon: const Icon(Icons.data_saver_on),
          ),
        ],
      ),
      body: BlocBuilder<ProductListCubit, ProductListState>(
        bloc: BlocProvider.of<ProductListCubit>(context)..getProducts(),
        builder: (context, state) {
          return (state.loading)
              ? const CircularProgressIndicator()
              : Center(
                  child: ListView.builder(
                      itemCount: state.productList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(state.productList[index].nombre),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(state.productList[index].descripcion),
                              Text('\$${state.productList[index].precio}'),
                            ],
                          ),
                        );
                      }),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _openDialog(context),
      ),
    );
  }

  _openDialog(
    BuildContext context,
  ) {
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
                  decoration: const InputDecoration(labelText: 'descripcion'),
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
        });
  }
}
