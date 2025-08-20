import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          title: const Text('Flutter Lab Aug 20'),
        ),
        body: const FirstScreen(),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.greenAccent,
            foregroundColor: Colors.orange,
          ),
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const NewScreen()),
          ),
          child: const Text(
            'Move to next screen',
            style: TextStyle(color: Colors.white), // Removed duplicate style
          ),
        ),
      ),
    );
  }
}

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  TextEditingController textEditingController = TextEditingController();

  // Removed duplicate @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter UI '),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              child: const Text(
                'UI is changed',
                style: TextStyle(color: Colors.black), // Removed duplicate style
              ),
            ),
          ),
        ),
      ),
    );
  }
}
