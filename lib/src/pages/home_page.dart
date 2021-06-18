import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes App'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return ListView();
  }
}
