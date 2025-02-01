import 'package:flutter/material.dart';

class  inputWidget extends StatelessWidget {
  final String title;
  final TextEditingController controller;

  const inputWidget({super.key, required this.title, required this.controller});

  @override
  Widget build(BuildContext context) {
    
   
    return Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                label: Text(title),
                border: OutlineInputBorder()
              ),
            ),
         );

  }
}  
  
  
  
  