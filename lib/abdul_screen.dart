import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:projek_29_april2/login_screen.dart';
import 'package:get/get.dart';

class AbdulScreen extends StatefulWidget {
  const AbdulScreen({super.key});

  @override
  State<AbdulScreen> createState() => _AbdulScreenState();
}

class _AbdulScreenState extends State<AbdulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(195, 7, 42, 97),
        title: Text("abdul profil"),
      ),
      body: Center(child: Column(
        children: [
          Text("230103043"),
          Text("sayangan,bentakan,baki,skh"),
          ElevatedButton(
            onPressed: () {
              final box = GetStorage();
              box.remove('username');
              
            Get.to(() => MyWidget());
          }, child: Text("logout"))
        ],
      )),
      backgroundColor: Colors.white10);
  }
}