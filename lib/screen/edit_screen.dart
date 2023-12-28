// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class EditSecreen extends StatefulWidget {
  final int index;
  final String currentItems;
  const EditSecreen({
    Key? key,
    required this.index,
    required this.currentItems,
  }) : super(key: key);

  @override
  State<EditSecreen> createState() => _EditSecreenState();
}

class _EditSecreenState extends State<EditSecreen> {
  TextEditingController _editController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _editController = TextEditingController(text: widget.currentItems);
  }

  @override
  void dispose() {
    _editController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Secreen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _editController,
              decoration: const InputDecoration(hintText: "Edit items here"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, _editController.text);
                },
                child: const Text("Save changes"))
          ],
        ),
      ),
    );
  }
}
