import 'package:flutter/widgets.dart';
import '../../login/view/login_page.dart';
import '../../pages/product.dart';
import '../bloc/app_bloc.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [MyProductPage.page()];

    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
