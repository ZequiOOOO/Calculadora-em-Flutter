import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class  inputWidget extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final void Function() vezes; 
  final void Function() dividir;
  final void Function() mais;
  final void Function() menos;

  const inputWidget({super.key, required this.title, required this.vezes, required this.dividir, required this.mais, required this.menos, required this.controller});
  

  @override
  Widget build(BuildContext context){
  return
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
            );

            }
}  
  