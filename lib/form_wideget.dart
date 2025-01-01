import 'package:flutter/material.dart';

class SomeWidgets extends StatefulWidget {
  const SomeWidgets({Key? key}) : super(key: key);

  @override
  _SomeWidgetsState createState() => _SomeWidgetsState();
}

class _SomeWidgetsState extends State<SomeWidgets> {
  // Create a GlobalKey for the Form widget
  final _formKey = GlobalKey<FormState>();

  // TextEditingController to control the text input
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Form Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,  // Assign the form key
          child: Column(
            children: [
              // TextFormField to input text
              TextFormField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: 'Enter something',
                  border: OutlineInputBorder(),
                ),
                // Validate input (basic validation)
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              // Submit button
              ElevatedButton(
                onPressed: () {
                  // Check if the form is valid
                  if (_formKey.currentState?.validate() ?? false) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
