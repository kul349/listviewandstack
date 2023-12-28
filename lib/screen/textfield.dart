import 'package:flutter/material.dart';
import 'package:mynewapp/screen/listview.dart';

class PersonDetails extends StatefulWidget {
  const PersonDetails({Key? key}) : super(key: key);

  @override
  State<PersonDetails> createState() => _PersonDetailsState();
}

class _PersonDetailsState extends State<PersonDetails> {
  List<String> items = [];
  final TextEditingController _addItemsController = TextEditingController();

  @override
  void dispose() {
    _addItemsController.dispose();
    super.dispose();
  }

  void addItems() {
    setState(() {
      String newItems = _addItemsController.text.trim();
      if (newItems.isNotEmpty) {
        items.add(newItems);
        _addItemsController.clear(); // Clear the text field after adding
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Wrap with Scaffold
      appBar: AppBar(
        title: const Text('add Items'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _addItemsController,
              decoration: const InputDecoration(hintText: "Add Items"),
            ),
            ElevatedButton(
              onPressed: () {
                addItems();
              },
              child: const Text("Add Items"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DynamicListWidget(items: items),
                  ),
                );
              },
              child: const Text("View Items"),
            ),
          ],
        ),
      ),
    );
  }
}
