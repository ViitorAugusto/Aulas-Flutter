import 'package:flutter/material.dart';
import 'package:primeiro_app/pages/dialogs/dialogs_custom.dart';

class DailogsPage extends StatelessWidget {
  const DailogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Alert Dialog'),
                      content: const Text('This is an alert dialog'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Show Dialog'),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return DialogCustom(context);
                      });
                },
                child: const Text('Dialog Custom')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          title: const Text('Simple Show Dialog'),
                          children: [
                            SimpleDialogOption(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Option 1'),
                            ),
                            SimpleDialogOption(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Option 2'),
                            ),
                            SimpleDialogOption(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Option 3'),
                            ),
                          ],
                        );
                      });
                },
                child: const Text('Show Simple Dialog')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Alert Dialog'),
                          content: const Text('This is an alert dialog'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Close'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Confirm'),
                            ),
                          ],
                        );
                      });
                },
                child: const Text('Alert Dialog')),
            ElevatedButton(
                onPressed: () {
                  showTimePicker(
                      context: context, initialTime: TimeOfDay.now());
                },
                child: const Text('Show Time Picker')),
            ElevatedButton(
                onPressed: () {
                  showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2024),
                      lastDate: DateTime(2025));
                },
                child: const Text('Show Date Picker')),
          ],
        ),
      ),
    );
  }
}
