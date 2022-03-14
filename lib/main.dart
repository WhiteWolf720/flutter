
import 'package:flutter/material.dart';
import 'package:prueba/pages/cardScreen.dart';

import 'pages/dataPage.dart';
import 'pages/formScreen.dart';
import 'pages/pruebaStack.dart';
import 'pages/secondScreen.dart';
import 'pages/stackDatos.dart';
import 'pages/thirdScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter demo',
    initialRoute: '/',
    routes: {
      '/'       : (context) => const HomePage(),
      '/second' : (context) => const SecondPage(),
      '/datos'  : (context) => const DataPage(),
      '/third'  : (context) => const ThirdPage(),
      '/stack'  : (context) => const PruebaStack(),
      '/stackDatos' : (context) => const StackDatos(),
      '/formScreen' : (context) => MyStateFulWidget(),
      '/cardScreen' : (context) => CardScreen()
    }
    //home: HomePage(),
    )
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text('Pagina inicial'),
        elevation: 20.0,
        shadowColor: Colors.purple[400],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: () => {})
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20.0),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 15))),
                child: const Text('Segunda pantalla'),
                onPressed: () {
                  /*
                  final route = MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  );
                  */
                  Navigator.pushNamed(context, '/datos');
                }),
            SizedBox(height: 10.0),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                ),
                child: const Text('Datos'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const DataPage(),
                  );
                  Navigator.push(context, route);
                }),
                SizedBox(height: 10.0),
                ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                ),
                child: const Text('Chayanne'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const ThirdPage(),
                  );
                  Navigator.push(context, route);
                }),
                SizedBox(height: 10.0),
                ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                ),
                child: const Text('Stack'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const PruebaStack(),
                  );
                  Navigator.push(context, route);
                }),
                SizedBox(height: 10.0),
                ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                ),
                child: const Text('StackDatos'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const StackDatos(),
                  );
                  Navigator.push(context, route);
                }),
                SizedBox(height: 10.0),
                ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                ),
                child: const Text('FormScreen'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => MyStateFulWidget(),
                  );
                  Navigator.push(context, route);
                }),
                ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                ),
                child: const Text('Pagar'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => CardScreen(),
                  );
                  Navigator.push(context, route);
                })
          ],
        ),
      ),
    );
  }
}