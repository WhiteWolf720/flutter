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
                'https://www.bbva.mx/content/dam/public-web/mexico/images/Tarjeta_digital_oro_contactless.png.img.320.1620688389682.png',
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
                      Icons.account_circle_outlined
                    ),
                    labelText: 'Nombre',
                    hintText: 'Josue Hernandez'
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
                    labelText: 'Numero de tarjeta',
                    hintText: '7263-2536-7637-9827'
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
                        labelText: 'Expiracion',
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
                          Icons.numbers
                        ),
                        labelText: 'CVV',
                        hintText: '123'
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
                child: const Text("Pagar"),
                onPressed: (){}
              )
            ]
          )
        ),
      )
    );
  }
}