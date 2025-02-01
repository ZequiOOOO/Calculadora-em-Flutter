import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleWidget extends StatefulWidget {
  final String resultado; 
  final TextEditingController controller; 

  const AnimatedDefaultTextStyleWidget({super.key, required this.resultado, required this.controller,});

  @override
  _AnimatedDefaultTextStyleWidgetState createState() =>
      _AnimatedDefaultTextStyleWidgetState();
}

class _AnimatedDefaultTextStyleWidgetState
    extends State<AnimatedDefaultTextStyleWidget> {
  var _color = const Color.fromARGB(255, 8, 214, 8);
  var _fontSize = 50.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedDefaultTextStyle(
          duration: const Duration(seconds: 8),
          style: TextStyle(color: _color, fontSize: _fontSize),
          child: Text(
            "Resultado: ${widget.resultado}",
          ),
        ),
       
      ],
    );
  }
}
