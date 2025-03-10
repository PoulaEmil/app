import 'package:flutter/material.dart';

class AddCategory extends StatelessWidget {
  const AddCategory(
      {super.key, this.onChange, this.onChange1, this.onChange2, this.onTap});
  final Function()? onTap;
  final Function(String)? onChange;
  final Function(String)? onChange1;
  final Function(String)? onChange2;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Category'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            onChanged: onChange,
            decoration: const InputDecoration(hintText: 'Enter category ID'),
          ),
          TextField(
            onChanged: onChange1,
            decoration: const InputDecoration(hintText: 'Enter category name'),
          ),
          TextField(
            onChanged: onChange2,
            decoration:
                const InputDecoration(hintText: 'Enter category ImageURL'),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: onTap,
          child: const Text('Add'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the modal
          },
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
