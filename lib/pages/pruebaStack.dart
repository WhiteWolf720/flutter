import 'package:flutter/material.dart';

class PruebaStack extends StatelessWidget {
  const PruebaStack({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Stack'),
      ),
      body: Center(
        child: SizedBox(
          width: 300.0,
          height: 300.0,
          child: Center(
            child: Stack(
              children: <Widget>[
                Container(
                  width: 300.0,
                  height: 300.0,
                  color: Colors.red,
                  padding: const EdgeInsets.all(15.0),
                  alignment: Alignment.topRight,
                  child: Text('Uno', 
                    style: TextStyle(
                      color: Colors.white),
                    )
                ),
                Container(
                  width: 250.0,
                  height: 250.0,
                  color: Colors.orange,
                  padding: const EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: Text('Dos', 
                    style: TextStyle(
                      color: Colors.white),
                    )
                ),
                Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.green,
                  padding: const EdgeInsets.all(15.0),
                  alignment: Alignment.topRight,
                  child: Text('Tres', 
                    style: TextStyle(
                      color: Colors.white),
                    )
                ),
                Container(
                  width: 150.0,
                  height: 150.0,
                  color: Colors.blue,
                  padding: const EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: 
                    NetworkImage('https://ih1.redbubble.net/image.1558722819.4560/bg,f8f8f8-flat,750x,075,f-pad,750x1000,f8f8f8.jpg'
                      )
                    ),
                  ),
                  child: Text('Cuatro', 
                    style: TextStyle(
                      color: Colors.white),
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}