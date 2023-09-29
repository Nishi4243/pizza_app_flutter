import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_diegoveloper_challenges/pizza_order/main_pizza_order.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: MainPizzaOrderApp(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void _onPressed(BuildContext context, Widget child) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => child),
    );
  }

  @override
  Widget build(BuildContext context) {
    const separator = SizedBox(height: 20);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Youtube Diegoveloper Challenges'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(40.0),
        children: <Widget>[
          separator,
          MaterialButton(
            color: Colors.blue,
            child: Text('Pizza Order'),
            onPressed: () => _onPressed(
              context,
              MainPizzaOrderApp(),
            ),
          ),
          separator,
        ],
      ),
    );
  }
}
