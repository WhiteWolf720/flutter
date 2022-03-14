import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MyStateFulWidget extends StatefulWidget {
  MyStateFulWidget({Key? key}) : super(key: key);

  @override
  State<MyStateFulWidget> createState() => _MyStateFulWidgetState();
}

class _MyStateFulWidgetState extends State<MyStateFulWidget> {
  late TextEditingController _controller;

  bool chick = false;
  bool chicks = false;

var maskFormatter = new MaskTextInputFormatter(
  mask: '####-####-####', 
  filter: { "#": RegExp(r'[0-9]') },
  type: MaskAutoCompletionType.lazy
);

  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }
  
  @override
  void dispose(){
    //TODO implement  dispose
    super.dispose();
    _controller.dispose();
  }

 @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      body: Center
      (
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>
            [
              TextField
              (
                keyboardType: TextInputType.emailAddress,
                autofocus: true,
                controller: _controller,
                decoration: const InputDecoration
                (
                  labelText: 'Correo',
                  hintText: 'Introduce tu correo',
                  prefixIcon: Icon
                  (
                    Icons.contact_mail
                  )
                ),
                onSubmitted: (String value) async
                {
                  await showDialog<void>
                  (
                    context: context,
                    builder: (BuildContext context)
                    {
                      return AlertDialog
                      (
                        title: Text('Prueba de dialogo'),
                        content: Text('Ha escrito "$value" de longitud ${value.length}'),
                        actions: <Widget>
                        [
                          TextButton
                          (
                            onPressed: ()=> Navigator.pop(context),
                            child: Text('OK')
                          )
                        ],
                      );
                    }
                  );
                },
              ),
              TextField
              (
                obscureText: true,
                decoration: const InputDecoration
                (
                  prefixIcon: Icon
                  (
                    Icons.lock
                  ),
                  labelText: 'Contraseña'
                )
              ),
              const SizedBox(height: 20.0),
              TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [
                  maskFormatter,
                  FilteringTextInputFormatter.allow(
                    RegExp('[0-9 -]')
                  ),
                  LengthLimitingTextInputFormatter(16),
                ],
                decoration: const InputDecoration
                (
                  prefixIcon: Icon
                  (
                    Icons.credit_card
                  ),
                  labelText: 'Tarjeta',
                  hintText: '1234-1234-1234-1234'
                )
              ),
              const SizedBox(height: 20.0),
              Text("Es para mi? 👉👈"),
              CheckboxListTile( title: const Text("Chi"), value: chick, onChanged: (bool? value){
                setState(() {
                  chick = value!;
                });
              }
              ),
              CheckboxListTile( title: const Text("Ño"), value: chicks, onChanged: (bool? value){
                setState(() {
                  chicks = value!;
                });
              }
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                ),
                child: const Text('Comprar NFT 🥵'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => MyStateFulWidget(),
                  );
                  Navigator.push(context, route);
                })
            ]
          ),
        )
      ),
    );
  }
}