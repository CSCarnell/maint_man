import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Suggestions extends StatelessWidget {
  const Suggestions({Key? key}) : super(key: key);

  static const String _title = 'Suggestions/Corrections Submission';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_title),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      body: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _urlController = TextEditingController();

  @override
  void dispose() {
    _urlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText:
                'If we are a soup sandwich let us know so we can get squared away. ',
              ),
              maxLines: 6,
              textInputAction: TextInputAction.newline,
              validator: (String? questionValue) {
                if (questionValue == null || questionValue.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              controller: _urlController,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if

                  if (_formKey.currentState!.validate()) {
                    submitQuestion(_urlController.text);
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Submission Received, Thank you!'),
                      ),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void submitQuestion(String? question) {
  var url = Uri.parse(
      'https://soldierkitbag-default-rtdb.firebaseio.com/suggestions.json');
  http.post(url, body: json.encode(question));
}
