import 'package:flutter/material.dart';

class UnnecessaryThisWidget extends StatelessWidget {
  UnnecessaryThisWidget();
  String name = 'UnnecessaryThisWidget';

  void ChangeName(String name) {
    this.name = name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        // title: Text(this.name),
      ),
    );
  }
}
