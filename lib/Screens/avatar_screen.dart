import 'package:flutter/material.dart';
class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatares'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              child: Text('IA'),
              backgroundColor: Colors.indigo,
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCQGE6YeX95kSHWLVal4y1QllDy20IK7AdAQ&usqp=CAU'),
          maxRadius: 100,
        ),
      ),
    );
  }

}