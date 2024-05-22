import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Page'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  controller: usernameController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  maxLines: null,
                  decoration: const InputDecoration(
                    labelText: 'Enter your username',
                  ),
                ),
                const SizedBox(height: 32),
                TextFormField(
                  controller: passwordController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.green,
                          width: 2,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      )),
                ),
                const SizedBox(height: 32),
                DropdownButtonFormField<String>(
                  value: 'USA',
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a country';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Select your country',
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'USA',
                      child: Text('USA'),
                    ),
                    DropdownMenuItem(
                      value: 'Canada',
                      child: Text('Canada'),
                    ),
                    DropdownMenuItem(
                      value: 'Mexico',
                      child: Text('Mexico'),
                    ),
                  ],
                  onChanged: (String? value) {
                    print('Selected country: $value');
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    var formValid = formKey.currentState?.validate() ?? false;
                    var message = 'Form is valid';
                    if (formValid) {
                      message =
                          'Form is válido and username is ${usernameController.text} and password is ${passwordController.text}';
                    }
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(message)));
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
