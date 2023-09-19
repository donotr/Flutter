import 'package:flutter/material.dart';
import 'package:si_no_app/presentacion/widgets/chat/message_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/chat/otro_message_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/256/147/147144.png"),
          ),
        ),
        title: const Text("Juanito Perez"),
        centerTitle: false,
      ),
      body: _ChartView(),
    );
  }
}

class _ChartView extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index){ 
              return (index % 2 == 0 ) 
              ? const OtroMessage() 
              : MyMessageBubble();
              },
              )),
              //caja de texto de mensajes
        const MessageFieldBox()
        ],)
      ),
      );
  }
}