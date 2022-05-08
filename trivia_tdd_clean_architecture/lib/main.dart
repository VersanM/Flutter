import 'package:flutter/material.dart';
import 'package:trivia_tdd_clean_architecture/features/number_trivia/presentation/pages/number_trivia_page.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Trivia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.lightBlue.shade800,
      secondaryHeaderColor: Colors.lightBlue.shade500 ),
      home: NumberTriviaPage(),
    );
  }

}