import 'package:flutter/material.dart';
import 'Categories_Avito.dart';
import 'filterCategorie.dart';

class TaptopScreen extends StatelessWidget {
  const TaptopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('حيوانات '),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.dashboard),
                text: 'التصنيفات',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'المفضلة',
              ),
            ]),
          ),
          body: TabBarView(children: [
            CategoriesAvito(),
            FilterCategorie(),
          ]),
        ));
  }
}
