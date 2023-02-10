import 'package:flutter/material.dart';

class Page2Screen extends StatelessWidget {
  const Page2Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            color: Colors.blue,
            onPressed: () {},
            child:
                const Text('Set User', style: TextStyle(color: Colors.white)),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {},
            child:
                const Text('Change Age', style: TextStyle(color: Colors.white)),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {},
            child: const Text('Add Profesion',
                style: TextStyle(color: Colors.white)),
          ),
        ],
      )),
    );
  }
}
