import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();
    final textController = TextEditingController();

    final outlineInputBorder=UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius:BorderRadius.circular(40)
    );

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
          filled:true,
          suffixIcon: IconButton(
            icon: const Icon(Icons.send_outlined),
            onPressed: (){
              final textValue = textController.value.text;
              print('button: $textValue');
              textController.clear();
            },
            ),
      );
    


    return TextFormField(
      onTapOutside:(event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
decoration:inputDecoration,
onFieldSubmitted: (value){
  //funcion normal
  print('Submit value $value');
},
  //funcion lambda: onChanged: ((value) => print('changed: $value'))
  );
  }
}