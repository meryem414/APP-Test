import 'package:flutter/material.dart';
import '../model/Categories_Avito_Model.dart';
import '../model/Detail_Item_Categorie.dart';

List<ModelCategoriesAvito> listCategorieAvito = [
  ModelCategoriesAvito(
    id: 'A1',
    NameCategorie: 'Telephones',
    Image: './Images/image1.png',
  ),
  ModelCategoriesAvito(
    id: 'A2',
    NameCategorie: 'Voitures',
    Image: './Images/image2.png',
  ),
  ModelCategoriesAvito(
    id: 'A3',
    NameCategorie: 'Bateaux',
    Image: './Images/image3.png',
  ),
  ModelCategoriesAvito(
    id: 'A4',
    NameCategorie: 'Maisons',
    Image: './Images/image4.png',
  ),
  ModelCategoriesAvito(
    id: 'A5',
    NameCategorie: 'Vetements',
    Image: './Images/image5.png',
  ),
  ModelCategoriesAvito(
    id: 'A6',
    NameCategorie: 'Animaux',
    Image: './Images/image6.png',
  ),
  ModelCategoriesAvito(
    id: 'A6',
    NameCategorie: 'Offres de Stage',
    Image: './Images/image7.png',
  ),
];
List<itemCategorieAvito> listitemCategorie = [
  itemCategorieAvito(
      id: 'B1',
      Title: 'Iphone 6 plus 64 Go',
      categorie: ['A1'],
      pourDemande: false,
      pourVente: true,
      Etat: 'Neuf',
      image: './Images/phone.png',
      Prix: '2000.0 DH',
      city: 'Casablanca',
      Description:
          'Écran Liquid Retina HLCD Multi-Touch tout écran de 6,1 pouces (diagonale) avec technologie IPS Résolution de 1 792 x 828 pixels à 326 ppp Contraste 1 400:1 (standard)'),
  itemCategorieAvito(
    Prix: '1297.00 DH',
    id: 'B2',
    Title: 'Galaxy',
    categorie: ['A1'],
    pourDemande: false,
    pourVente: true,
    Etat: 'Bon Etat',
    image: './Images/phone.png',
    city: 'Rabat',
    Description:
        'Écran Liquid Retina HLCD Multi-Touch tout écran de 6,1 pouces (diagonale) avec technologie IPS Résolution de 1 792 x 828 pixels à 326 ppp Contraste 1 400:1 (standard)',
  ),
  itemCategorieAvito(
      Prix: '',
      id: 'B3',
      Title: 'Huawei',
      categorie: ['A1'],
      pourDemande: false,
      pourVente: true,
      Etat: 'Neuf',
      image: './Images/phone.png',
      city: 'Casablanca',
      Description:
          'Écran Liquid Retina HLCD Multi-Touch tout écran de 6,1 pouces (diagonale) avec technologie IPS Résolution de 1 792 x 828 pixels à 326 ppp Contraste 1 400:1 (standard)'),
  itemCategorieAvito(
      Prix: '',
      id: 'B4',
      Title: 'Redmi Note 8',
      categorie: ['A1'],
      pourDemande: true,
      pourVente: false,
      Etat: 'Neuf',
      image: './Images/phone.png',
      city: 'Casablanca',
      Description:
          'Écran Liquid Retina HLCD Multi-Touch tout écran de 6,1 pouces (diagonale) avec technologie IPS Résolution de 1 792 x 828 pixels à 326 ppp Contraste 1 400:1 (standard)'),
  itemCategorieAvito(
    Prix: '',
    id: 'B5',
    Title: 'Vivo',
    categorie: ['A1'],
    pourDemande: true,
    pourVente: false,
    Etat: 'Neuf',
    image: './Images/phone.png',
    city: 'Casablanca',
    Description:
        'Écran Liquid Retina HLCD Multi-Touch tout écran de 6,1 pouces (diagonale) avec technologie IPS Résolution de 1 792 x 828 pixels à 326 ppp Contraste 1 400:1 (standard)',
  ),
  itemCategorieAvito(
    Prix: '8999 DH',
    id: 'B6',
    Title: 'Iphone XR',
    categorie: ['A1'],
    pourDemande: false,
    pourVente: true,
    Etat: 'Neuf',
    image: './Images/phone.png',
    city: 'Casablanca',
    Description:
        'Écran Liquid Retina HLCD Multi-Touch tout écran de 6,1 pouces (diagonale) avec technologie IPS Résolution de 1 792 x 828 pixels à 326 ppp Contraste 1 400:1 (standard)',
  ),
  itemCategorieAvito(
    Prix: '1300 DH',
    id: 'B7',
    Title: 'Redmi Note 9',
    categorie: ['A1'],
    pourDemande: false,
    pourVente: true,
    Etat: 'Neuf',
    image: './Images/phone.png',
    city: 'Casablanca',
    Description:
        'Écran Liquid Retina HLCD Multi-Touch tout écran de 6,1 pouces (diagonale) avec technologie IPS Résolution de 1 792 x 828 pixels à 326 ppp Contraste 1 400:1 (standard)',
  ),
  itemCategorieAvito(
    Prix: '',
    id: 'B8',
    Title: 'sumsung A12',
    categorie: ['A1'],
    pourDemande: false,
    pourVente: true,
    Etat: 'Neuf',
    image: './Images/phone.png',
    city: 'Casablanca',
    Description:
        'Écran Liquid Retina HLCD Multi-Touch tout écran de 6,1 pouces (diagonale) avec technologie IPS Résolution de 1 792 x 828 pixels à 326 ppp Contraste 1 400:1 (standard)',
  ),
  itemCategorieAvito(
      Prix: '1395000 DH',
      id: 'C1',
      Title: 'Class G',
      categorie: ['A2'],
      pourDemande: true,
      pourVente: false,
      Etat: 'Neuf',
      image: './Images/car.png',
      city: 'Casablanca',
      Description:
          'Écran Liquid Retina HLCD Multi-Touch tout écran de 6,1 pouces (diagonale) avec technologie IPS Résolution de 1 792 x 828 pixels à 326 ppp Contraste 1 400:1 (standard)'),
  itemCategorieAvito(
      Prix: '595000 DH',
      id: 'C1',
      Title: 'Mercedes',
      categorie: ['A2'],
      pourDemande: true,
      pourVente: false,
      Etat: 'Neuf',
      image: './Images/car.png',
      city: 'Fes',
      Description:
          'Écran Liquid Retina HLCD Multi-Touch tout écran de 6,1 pouces (diagonale) avec technologie IPS Résolution de 1 792 x 828 pixels à 326 ppp Contraste 1 400:1 (standard)'),
];
