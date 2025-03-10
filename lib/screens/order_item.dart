import 'package:flutter/material.dart';

class OrderItemScreen extends StatelessWidget {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();
  final TextEditingController _controller5 = TextEditingController();

  OrderItemScreen({super.key});

  void _submit() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: const Text(
            '             Enter all fields to Order',
            textAlign: TextAlign.end,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _controller1,
                decoration: InputDecoration(
                  labelText: 'Enter Your name',
                  labelStyle:
                      const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0), width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                ),
              ),
              const SizedBox(height: 35),
              TextField(
                controller: _controller2,
                decoration: InputDecoration(
                  labelText: 'Enter Your Phone Number',
                  labelStyle:
                      const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0), width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                ),
              ),
              const SizedBox(height: 35),
              TextField(
                controller: _controller3,
                decoration: InputDecoration(
                  labelText: 'Enter Your E-mail Address',
                  labelStyle:
                      const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0), width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                ),
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // First text field (editable)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        controller: _controller4,
                        decoration: InputDecoration(
                          labelText: 'Enter the Quantity',
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 0, 0, 0), width: 2),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 14),
                        ),
                      ),
                    ),
                  ),
                  // Second text field (disabled)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        controller: _controller5,
                        enabled: false, // Make this field unwritable (disabled)
                        decoration: InputDecoration(
                          labelText: 'Total price',
                          labelStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Colors.blueAccent, width: 2),
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 14),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                color: const Color.fromARGB(255, 228, 228, 228),
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                          "Before you submit, this is not the final step, One of our team will contact you to get a deposite and finish arrangement and shipment"),
                      Text(
                        'Wish you all the best Fanella Team',
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: _submit,
                child: const Text('Submit'),
              ),
            ],
          ),
        ));
  }
}
