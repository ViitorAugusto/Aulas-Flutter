import 'package:count_bloc/components/text_input_fleeky.dart';
import 'package:flutter/material.dart';

class LoginPageFleekt extends StatelessWidget {
  final testEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  LoginPageFleekt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextInputFleeky(
                  label: 'Username',
                  controller: testEC,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),

                TextInputFleeky(
                  label: 'Password',
                  controller: testEC,
                  obscureText: true,
                ),

                const SizedBox(height: 16),
                ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                      print(testEC.text);
                    },
                    child: const Text('Login')),
                // Adicione outros widgets aqui se necessário
              ],
            ),
          ),
        ),
      ),
    );
  }
}
