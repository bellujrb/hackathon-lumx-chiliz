import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontend/pages/home_page.dart';
import 'package:frontend/pages/login_page.dart';
import 'package:frontend/pages/pre-sale_page.dart';
import 'package:frontend/pages/result_page.dart';
import 'package:frontend/pages/token_page.dart';
import 'package:frontend/pages/token_verified_page.dart';

class AppModule extends Module {

  @override
  List<Bind> get binds => [

  ];

  @override
  List<ChildRoute> get routes => [
    ChildRoute('/', child: (context, args) => const HomePage()),
    ChildRoute('/login', child: ((context, args) => const LoginPage())),
    ChildRoute('/token', child: (context, args) => const TokenPage()),
    ChildRoute('/tokenverify', child: (context, args) => const TokenVerifiedPage()),
    ChildRoute('/pre-sale', child: (context, args) => const PreSalePage()),
    ChildRoute('/result', child: (context, args) => const ResultPage())
  ];
}