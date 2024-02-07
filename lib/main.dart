import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  static void setLocale(BuildContext context, Locale newLocale) {
    _MainAppState state = context.findAncestorStateOfType<_MainAppState>()!;
    state.setLocale(newLocale);
  }

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Locale? _locale;
  setLocale(Locale locale) {
    if (mounted) {
      setState(() {
        _locale = locale;
      });
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: "Tic Tac Toe",
        theme: ThemeData(
          fontFamily: 'Poppins',
          textTheme: TextTheme(
            bodyLarge: TextStyle(),
            bodyMedium: TextStyle(),
          ).apply(bodyColor: Colors.white, displayColor: Colors.white),
          appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.light,
          ),
        ),
      ),
    );
  }
}

@override
State<StatefulWidget> createState() {
  throw UnimplementedError();
}
