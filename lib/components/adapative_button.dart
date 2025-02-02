import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdapativeButton extends StatelessWidget {
  final String label;
  final Function() onPressed;

  AdapativeButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(label),
            onPressed: null,
            color: Colors.purple,
            padding: EdgeInsets.symmetric(horizontal: 20),
          )
        : ElevatedButton(
            onPressed: onPressed,
            child: Text(
              label,
              style: TextStyle(color: Colors.purple),
            ),
          );
  }
}
