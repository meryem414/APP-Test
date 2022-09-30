import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/Detail_Item_Categorie.dart';
import 'package:flutter_application_2/screens/App_Drawer.dart';
import '../Widget/ItemCategorieWidget.dart';
import '../Widget/app_data.dart';

class ItemCategorie extends StatefulWidget {
  @override
  State<ItemCategorie> createState() => _ItemCategorieState();
}

class _ItemCategorieState extends State<ItemCategorie> {
  late List<itemCategorieAvito> filtreItemCategorie;
  @override
  void didChangeDependencies() {
    final String idItem = ModalRoute.of(context)!.settings.arguments == null
        ? "NULL"
        : ModalRoute.of(context)!.settings.arguments as String;
    filtreItemCategorie = listitemCategorie
        .where((constructeur) => constructeur.categorie.contains(idItem))
        .toList();

    super.didChangeDependencies();
  }

  void _removeItemfunction(String itemid) {
    setState(() {
      filtreItemCategorie.removeWhere((element) => element.id == itemid);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(''),
      ),
      drawer: DrawerScreen(),
      body: ListView.builder(
        itemCount: filtreItemCategorie.length,
        itemBuilder: (context, index) => ItemCategorieWidget(
          imageI: filtreItemCategorie[index].image,
          EtatI: filtreItemCategorie[index].Etat,
          idI: filtreItemCategorie[index].id,
          NameI: filtreItemCategorie[index].Title,
          prixI: filtreItemCategorie[index].Prix,
          removeItem: _removeItemfunction,
          lieuI: filtreItemCategorie[index].city,
          descI: filtreItemCategorie[index].Description,
        ),
      ),
    );
  }
}
