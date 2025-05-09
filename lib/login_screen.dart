import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:projek_29_april2/home_screen.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login"),),
      body: Column(
        children: [
          TextField(
            controller: usernameController,
            decoration: const InputDecoration(
                labelText: 'User Name',
                hintText: 'User Name',
                prefixIcon: Icon(Icons.email),
              ),
          ),  
          TextField(
            controller: passwordController,
            decoration: const InputDecoration(
              labelText: 'Password',
              hintText: 'Password',
              prefixIcon: Icon(Icons.email),
            ),
          ),
          SizedBox(height: 24),
          ElevatedButton(
            onPressed: (){
              final box = GetStorage();
              box.write("username", usernameController.text);
              Get.to (() => HomeScreen());
            },
            child: Text("login"),
          )
        ],
      ),
    );
  }
}