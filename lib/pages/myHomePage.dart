import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:primeira_aplicacao_flutter/widgets/input_widget.dart';
import 'package:primeira_aplicacao_flutter/widgets/AnimatedDefaultTextStyle.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  double resultado = 0;
  double valor1 = 0;
  double valor2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Digite os valores:'),
            inputWidget(title: "Valor 1", controller: controller1),
            inputWidget(title: "Valor 2", controller: controller2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                    onPressed: vezes, icon: Icon(FontAwesomeIcons.xmark)),
                IconButton(
                    onPressed: dividir, icon: Icon(FontAwesomeIcons.divide)),
                IconButton(
                    onPressed: mais, icon: Icon(FontAwesomeIcons.plus)),
                IconButton(
                    onPressed: menos, icon: Icon(FontAwesomeIcons.minus)),
              ],
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: const Color.fromARGB(255, 0, 0, 0), 
                  width: 5, 
                ),
              ),
              child: AnimatedDefaultTextStyle(
                duration: const Duration(seconds: 8),
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  backgroundColor: const Color.fromARGB(255, 153, 241, 38),
                  color: resultado >= 0
                      ? const Color.fromARGB(255, 30, 70, 32)
                      : const Color.fromARGB(255, 104, 63, 1),
                ),
                child: Text(
                  "Resultado : ${resultado.toString()}",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget botaoWidget({required Text text, required void Function() method}) {
    return TextButton(onPressed: method, child: text);
  }

  void resultadoCalculado() {
    valor1 = double.tryParse(controller1.text) ?? 0;
    valor2 = double.tryParse(controller2.text) ?? 0;

    setState(() {
      resultado = valor1 + valor2;
    });
  }

  void dividir() {
    valor1 = double.tryParse(controller1.text) ?? 1;
    valor2 = double.tryParse(controller2.text) ?? 1;

    setState(() {
      if (valor2 != 0) {
        resultado = valor1 / valor2;
      } else {
        resultado = 0;
      }
    });
  }

  void vezes() {
    valor1 = double.tryParse(controller1.text) ?? 0;
    valor2 = double.tryParse(controller2.text) ?? 0;

    setState(() {
      resultado = valor1 * valor2;
    });
  }

  void menos() {
    valor1 = double.tryParse(controller1.text) ?? 0;
    valor2 = double.tryParse(controller2.text) ?? 0;

    setState(() {
      resultado = valor1 - valor2;
    });
  }

  void mais() {
    valor1 = double.tryParse(controller1.text) ?? 0;
    valor2 = double.tryParse(controller2.text) ?? 0;

    setState(() {
      resultado = valor1 + valor2;
    });
  }
}
