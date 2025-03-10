import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  const AddProduct(
      {super.key,
      required this.fun1,
      required this.fun2,
      required this.fun3,
      required this.fun5,
      required this.fun4,
      required this.fun6,
      required this.addFun});
  final Function(String) fun1;
  final Function(String) fun2;
  final Function(String) fun3;
  final Function(String) fun4;
  final Function(String) fun5;
  final Function(String) fun6;
  final Function() addFun;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Product'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            onChanged: fun1,
            decoration: const InputDecoration(hintText: 'Enter Product ID'),
          ),
          TextField(
            onChanged: fun2,
            decoration: const InputDecoration(hintText: 'Enter category ID'),
          ),
          TextField(
            onChanged: fun3,
            decoration: const InputDecoration(hintText: 'Enter Product Name'),
          ),
          TextField(
            onChanged: fun4,
            decoration:
                const InputDecoration(hintText: 'Enter Product ImageURL'),
          ),
          TextField(
            onChanged: fun5,
            decoration: const InputDecoration(hintText: 'Enter Product Price'),
          ),
          TextField(
            onChanged: fun6,
            decoration:
                const InputDecoration(hintText: 'Enter Product Quantity'),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: addFun,
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
