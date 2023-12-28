// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_null_comparison
import 'package:flutter/material.dart';

import 'package:mynewapp/screen/edit_screen.dart';

class DynamicListWidget extends StatefulWidget {
  final List<String> items;

  const DynamicListWidget({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  State<DynamicListWidget> createState() => _DynamicListWidgetState();
}

class _DynamicListWidgetState extends State<DynamicListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List of items"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount:
            widget.items.length, // Use the items from the widget property
        itemBuilder: (context, index) {
          Color titleColor =
              index % 2 == 0 ? Colors.lightBlue.shade50 : Colors.indigo.shade50;
          return Container(
            color: titleColor,
            child: ListTile(
              leading: const Icon(Icons.list),
              title: Text(
                widget.items[index],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () async {
                        String editedItem = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditSecreen(
                              index: index,
                              currentItems: widget.items[index],
                            ),
                          ),
                        );
                        if (editedItem != null) {
                          setState(() {
                            widget.items[index] = editedItem;
                          });
                        }
                      },
                      icon: const Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          widget.items.removeAt(index);
                        });
                      },
                      icon: const Icon(Icons.delete)),
                ],
              ), // Display item at the index
            ),
          );
        },
      ),
    );
  }
}
