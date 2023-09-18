import 'package:flutter/material.dart';
class OtroMessage extends StatelessWidget {
  const OtroMessage({super.key});

  @override
  Widget build(BuildContext context) {

    final colorsitos = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration:BoxDecoration(
            color: colorsitos.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical:10),
            child: Text("Sint ullamco amet incididunt id qui velit.",style: TextStyle(color: Colors.white),),
          )
        ),
        const SizedBox(height: 10,)

      ],);
  }
}