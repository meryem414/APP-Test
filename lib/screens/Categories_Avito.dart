import 'package:flutter/material.dart';
import '../Widget/CategorieAvitoWidget.dart';
import '../Widget/app_data.dart';

class CategoriesAvito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        // scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemCount: listCategorieAvito.length,
        itemBuilder: (context, index) {
          return CategorieAnimalWidget(
            imageC: listCategorieAvito[index].Image,
            TitleC: listCategorieAvito[index].NameCategorie,
            idC: listCategorieAvito[index].id,
          );
        },

        //  list listAnimal = functionListAnimal.getListAnimal()[index];
      ),
    ));
  }
}
