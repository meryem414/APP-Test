import 'package:flutter/material.dart';

import '../Widget/app_data.dart';

class DetailItemAnimal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String idItem = ModalRoute.of(context)!.settings.arguments == null
        ? "NULL"
        : ModalRoute.of(context)!.settings.arguments as String;
    //List<Listoftypeanimal>
    final rechrcheItem = listitemCategorie
        .firstWhere((constructeur) => constructeur.id == idItem);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(''),
      ),
      body:
          // Center(child: Text('Hi'))
// backgroundColor: Colors.blue[50],
          Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(rechrcheItem.image),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Container(
              width: double.infinity,
              // color: Colors.red,
              child: Text(
                rechrcheItem.Prix,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              width: double.infinity,
              // color: Colors.red,
              child: Text(
                rechrcheItem.Title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 6),
            child: Container(
              width: double.infinity,
              // color: Colors.red,
              child: Column(children: [
                Container(
                  width: double.infinity,
                  child: Text(
                    'Description',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 243, 141, 45)),
                  ),
                ),
                Text(
                  rechrcheItem.Description,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 17, 17, 17)),
                ),
              ]),
            ),
          ),

          // Expanded(
          // child: Container(
          //   child: ListView.builder(
          //     itemCount: rechrcheItem.nouriture.length,
          //     itemBuilder: (context, index) => Card(
          //       child: Text(
          //         rechrcheItem.nouriture[index],
          //         style: TextStyle(fontSize: 24),
          //       ),
          //     ),
          //   ),
          //   height: 100,
          //   color: Colors.black,
          // ),
          // ),
          Expanded(
            flex: 3,
            child: Container(
              height: 50,
              // color: Colors.blue,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: () => Navigator.of(context).pop(idItem),
      ),
    );
  }
}
