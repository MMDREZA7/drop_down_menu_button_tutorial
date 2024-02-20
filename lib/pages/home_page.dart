import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropDownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drop Down Menu"),
      ),
      body: Center(
        child: DropdownButton(
          icon: const Icon(Icons.menu),
          underline: Container(
            width: 2,
            color: Colors.white,
          ),
          value: dropDownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropDownValue = newValue!;
            });
          },
          items: [
            DropdownMenuItem(
              value: 'One',
              child: TextButton(
                child: Text(
                  'One',
                  style: TextStyle(),
                ),
                onPressed: () {},
              ),
            ),
            DropdownMenuItem(
              value: 'Two',
              child: Text('Two'),
            ),
            DropdownMenuItem(
              value: 'Three',
              child: Text('Three'),
            ),
          ],
        ),
      ),
    );
  }
}
