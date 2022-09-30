import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/App_Drawer.dart';

class FilterCategorie extends StatefulWidget {
  @override
  State<FilterCategorie> createState() => _FilterCategorieState();
}

class _FilterCategorieState extends State<FilterCategorie> {
  var _pourVente = false;
  var _pourDemande = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('filter'),
      ),
      drawer: DrawerScreen(),
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Expanded(
            child: ListView(
          children: [
            FilterSwitchList(
              'Vente',
              'Type dannonce',
              _pourDemande,
              (newvalue) => setState(() {
                _pourDemande = newvalue;
              }),
            ),
            FilterSwitchList(
              'Demande',
              'Type dannonce',
              _pourVente,
              (newvalue) => setState(() {
                _pourVente = newvalue;
              }),
            ),
          ],
        ))
      ]),
    );
  }

  SwitchListTile FilterSwitchList(title, subt, valeur, func) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(subt),
        value: valeur,
        onChanged: func);
  }
}
