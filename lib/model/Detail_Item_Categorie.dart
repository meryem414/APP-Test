import 'package:flutter/material.dart';

class itemCategorieAvito {
  final String id;
  final String Title;
  final String Description;

  final List<String> categorie;
  final bool pourVente;
  final bool pourDemande;

  final String Etat;
  final String image;
  final String Prix;
  final String city;

  itemCategorieAvito({
    required this.Description,
    required this.city,
    required this.Prix,
    required this.id,
    required this.Title,
    required this.categorie,
    required this.pourDemande,
    required this.pourVente,
    required this.Etat,
    required this.image,
  });
}
