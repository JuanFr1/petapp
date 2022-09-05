//Ventana donde muestra el detalle individual de cada cupon

import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

import '../model/cupon.dart';

class cuponDetail extends StatelessWidget {
  final Cupon? cupon;

  cuponDetail({
    Key? key,
    this.cupon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
        title: Text('AQUÍ ESTÁ SU CUPON!!'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('¡Raspa para copiar el código!'),
          Text(cupon!.cuponLocal!),
          Text(cupon!.cuponBeneficio!),
          Text('Válido hasta: ' + cupon!.cuponFecha!),
          Scratcher(
              brushSize: 70,
              color: Color.fromARGB(255, 0, 0, 0),
              child: Container(
                width: 200,
                height: 200,
                color: Color.fromARGB(255, 181, 83, 194),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      cupon!.cuponCodigo!,
                      style: TextStyle(
                          fontSize: 40,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 3
                            ..color = Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ],
                ),
                //Padding(padding: EdgeInsets.only(left: 8, right: 8), child: Text(cupon.codigo.toString())),
              ))
        ],
      ),
    );
  }
}
