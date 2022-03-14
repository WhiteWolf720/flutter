import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
class CardScreen extends StatefulWidget
{
  CardScreen({Key? key}): super(key:key);
  @override
  State<CardScreen> createState()=>_CardScreen();
}
class _CardScreen extends State<CardScreen>
{
  late TextEditingController _controller;
  var tarjeta = MaskTextInputFormatter(mask: '####-####-####-####', filter: { "#": RegExp(r'[0-9]') }, type: MaskAutoCompletionType.lazy);
  var expiracion = MaskTextInputFormatter(mask: '##/##', filter: { "#": RegExp(r'[0-9]') }, type: MaskAutoCompletionType.lazy);
  var codigo = MaskTextInputFormatter(mask: '###', filter: { "#": RegExp(r'[0-9]') }, type: MaskAutoCompletionType.lazy);
  @override
  void initState()
  {
    super.initState();
    _controller=TextEditingController();
  }
  @override
  void dispose()
  {
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
        child: Form
        (
          child:Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>
            [
              Image.network
              (
                'https://i.ibb.co/MkRb1fY/Banorte-TDC-Oro-Visa-2020.png',
              ),
              Container
              (
                padding: const EdgeInsets.symmetric
                (
                  horizontal: 20.0
                ),
                margin: const EdgeInsets.symmetric
                (
                  horizontal: 20.0
                ),
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all
                  (
                    color: Colors.grey
                  )
                ),
                child: const TextField
                (
                  decoration: InputDecoration
                  (
                    prefixIcon: Icon
                    (
                      Icons.person_outline
                    ),
                    labelText: 'Nombre',
                    hintText: 'Diego Osornio Yáñez'
                  )
                ),
              ),
              const SizedBox
              (
                height:30.0,
              ),
              Container
              (
                padding: const EdgeInsets.symmetric
                (
                  horizontal: 20.0
                ),
                margin: const EdgeInsets.symmetric
                (
                  horizontal: 20.0
                ),
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all
                  (
                    color: Colors.grey
                  )
                ),
                child: TextField
                (
                  keyboardType: TextInputType.number,
                  inputFormatters:
                  [
                    tarjeta
                  ],
                  decoration: const InputDecoration
                  (
                    prefixIcon: Icon
                    (
                      Icons.credit_card
                    ),
                    labelText: 'Número de tarjeta',
                    hintText: '1234-1234-1234-1234'
                  )
                ),
              ),
              const SizedBox
              (
                height:30.0,
              ),
              Wrap
              (
                alignment: WrapAlignment.start,
                spacing: 50.0,
                direction: Axis.horizontal,
                children: <Widget>
                [
                  Container
                  (
                    width: 250.0,
                    decoration: BoxDecoration
                    (
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all
                      (
                        color: Colors.grey
                      )
                    ),
                    child: TextField
                    (
                      keyboardType: TextInputType.number,
                      inputFormatters:
                      [
                        expiracion
                      ],
                      decoration: const InputDecoration
                      (
                        prefixIcon: Icon
                        (
                          Icons.date_range_outlined
                        ),
                        labelText: 'Expiración',
                        hintText: '20/12'
                      )
                    ),
                  ),
                  Container
                  (
                    width: 250.0,
                    decoration: BoxDecoration
                    (
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all
                      (
                        color: Colors.grey
                      )
                    ),
                    child: TextField
                    (
                      keyboardType: TextInputType.number,
                      inputFormatters:
                      [
                        codigo
                      ],
                      decoration: const InputDecoration
                      (
                        prefixIcon: Icon
                        (
                          Icons.shield
                        ),
                        labelText: 'CVV',
                        hintText: '777'
                      )
                    ),
                  )
                ],
              ),
              const SizedBox
              (
                height:30.0,
              ),
              ElevatedButton
              (
                child: const Text("Pagar - Es para mi? 👉👈"),
                onPressed: (){}
              )
            ]
          )
        ),
      )
    );
  }
}