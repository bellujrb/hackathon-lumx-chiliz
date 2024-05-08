import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontend/pages/home_page.dart';

class AppModule extends Module {

  @override
  List<Bind> get binds => [

  ];

  @override
  List<ChildRoute> get routes => [
    ChildRoute('/', child: (context, args) => const HomePage()),
  ];
}