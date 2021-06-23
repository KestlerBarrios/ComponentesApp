import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearImagen(),
            _crearSlider(),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de Imagen',
        value: _valorSlider,
        min: 10.0,
        max: 400.0,
        onChanged: (valor) => setState(() => _valorSlider = valor));
  }

  Widget _crearImagen() {
    return Expanded(
      child: Image(
        image: NetworkImage(
            'https://img.europapress.es/fotoweb/fotonoticia_20200404154752_1200.jpg'),
        width: _valorSlider,
        fit: BoxFit.contain,
      ),
    );
  }
}
