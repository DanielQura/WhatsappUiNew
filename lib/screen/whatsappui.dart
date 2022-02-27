import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screen/calls.dart';
import 'package:whatsapp_clone/screen/camera.dart';
import 'package:whatsapp_clone/screen/chats.dart';
import 'package:whatsapp_clone/screen/status.dart';

class WhatsAppUI extends StatefulWidget {
  const WhatsAppUI({Key? key}) : super(key: key);

  @override
  _WhatsAppUIState createState() => _WhatsAppUIState();
}

class _WhatsAppUIState extends State<WhatsAppUI> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          backgroundColor: const Color(0xff075e54),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
          bottom: const TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs:[
               Tab(
                icon:  Icon(
                  Icons.camera_alt,
                ),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [Camera(), Chats(), Status(), Calls()]),
      ),
    );
  }
}
