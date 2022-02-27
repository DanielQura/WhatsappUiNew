import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chatmodel.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff075e54),
          onPressed: () {},
          child: const Icon(Icons.chat),
        ),
        body: ListView.builder(
            itemCount: dummayData.length,
            itemBuilder: (context, index) {
              return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(dummayData[index].image),
                  ),
                  title: Text(dummayData[index].name),
                  subtitle: Text(dummayData[index].message),
                  trailing: Text(dummayData[index].time));
            }));
  }
}
