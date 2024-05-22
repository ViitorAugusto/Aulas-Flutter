import 'package:flutter/material.dart';

class DialogCustom extends Dialog {
  DialogCustom(BuildContext context, {super.key})
      : super(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: SizedBox(
              width: 300.0,
              height: 300.0,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Custom Dialog'),
                  ),
                  const SizedBox(height: 20.0),
                  const Text('This is a custom dialog'),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Close'),
                  ),
                ],
              )),
        );
}
