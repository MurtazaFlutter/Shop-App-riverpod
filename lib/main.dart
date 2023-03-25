import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/providers/cart.dart';
import 'features/homepage/views/home.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => CartNotifier())],
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(),
            appBarTheme: const AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle(
              statusBarBrightness: Brightness.light,
              systemNavigationBarColor: Color(0xff06AB8D),
              statusBarColor: Color(0xff06AB8D),
            ))),
        debugShowCheckedModeBanner: false,
        title: 'Massar Shop app',
        home: const Home());
  }
}
