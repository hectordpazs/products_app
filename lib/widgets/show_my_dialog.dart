import 'package:flutter/material.dart';
 
dynamic showMyDialog(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.grey[100],
        title: Text('Seleccione una imagen o tome una fotografía'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.camera_alt, size: 50, color: Colors.indigo),
                      Text('Cámara')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.storage, size: 50, color: Colors.indigo),
                      Text('Galería')
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cámara',
                style: TextStyle(fontSize: 17, color: Colors.indigo)),
            onPressed: () {
              Navigator.of(context).pop(1);
            },
          ),
          TextButton(
            child: const Text('Galería',
                style: TextStyle(fontSize: 17, color: Colors.indigo)),
            onPressed: () {
              Navigator.of(context).pop(2);
            },
          ),
          TextButton(
            child: Icon(Icons.close_rounded, color: Colors.red, size: 40),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}