import 'package:app_carrinho_compras/providers/carrinho_provider.dart';
import 'package:flutter/material.dart';
import 'package:app_carrinho_compras/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CarrinhoProvider()),
      ],
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blueGrey,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
