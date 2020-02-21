import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';
import 'package:pyco_test/view/tinder_card/card_view.dart';
import 'package:pyco_test/provider_setup.dart';
import 'package:flutter/cupertino.dart';

void main() {
  _setupLogging();
  runApp(MultiProvider(
    providers: providers,
    child: MyApp(),
  ));
}
void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CardView(),
    );
  }
}