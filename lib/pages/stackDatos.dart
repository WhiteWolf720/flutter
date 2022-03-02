import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackDatos extends StatelessWidget {
  const StackDatos({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos Stack'),
      ),
      body: stackSinPos(context),
    );
  }

  Widget stackSinPos(BuildContext context){

    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFFF50057), Color(0xFFF50057)],
    ).createShader(new Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

    return Center(
      child: SizedBox(
        width: 300.0,
        height: 300.0,
        child: Center(
          child: Stack(
            children: <Widget>[
              Container(
                width: 300.0,
                height: 300.0,
                //color: Colors.white,
              ),
              Positioned(
                top: 30.0,
                left: 30.0,
                child: Container(
                  width: 250.0,
                  height: 250.0,
                  //color: Colors.pink,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://i.ibb.co/KX9rwtZ/Stand.png"),
                  ),
                )
              )
              ),
              Positioned(
                top: 75.0,
                left: 30.0,
                child: Container(
                  width: 250.0,
                  height: 250.0,
                  child: Align(
                          //alignment: Alignment.bottomCenter,
                          child: Text(
                            'Diego Osornio Yáñez',
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                            foreground: new Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 1.5
                            ..shader = linearGradient
                            //..color = Colors.red.shade400,
                            ),
                            //textAlign: TextAlign.center,                          
                          ),
                        ),
                ),
              ),
              Positioned(
                top: 220.0,
                left: 95.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.purple[900]),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 15))),
                    child: const Text('Regresar'),
                    onPressed: () => Navigator.pop(context),
                ))
            ],
          ),
        ),
      )
    );
  }
}