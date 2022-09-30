import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  ListTile ListItemdrawer(IconItem, TitleItem, NavigationItem) {
    return ListTile(
      leading: Icon(
        IconItem,
        size: 35,
      ),
      title: Text(
        TitleItem,
        style: TextStyle(fontSize: 21),
      ),
      onTap: NavigationItem,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
              alignment: Alignment.center,
              color: Color.fromARGB(255, 2, 2, 2),
              height: 170,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 42,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 40,
                        // borderRadius: BorderRadius.circular(50),
                        backgroundImage: AssetImage(
                          './Images/person1.jfif',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Maryam',
                      style: TextStyle(color: Colors.white, fontSize: 21),
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 50,
          ),
          ListItemdrawer(
            Icons.home,
            'Annonces',
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),

          ListItemdrawer(
            Icons.filter,
            'Filtrer',
            () {
              Navigator.of(context).pushReplacementNamed('/filterScreen');
            },
          )
          // ListeItem(
          //   Icons.dashboard,
          //   () {
          //     Navigator.of(context).pushReplacementNamed('/favoriteScreen');
          //   },
          // ),
          // ListeItem(
          //   Icons.dashboard,
          //   () {
          //     Navigator.of(context).pushReplacementNamed('/');
          //   },
          // )
        ],
      ),
    );
  }

//   ListTile ListeItem(IconData iconI, selectedontap) {
//     return ListTile(
//         leading: Icon(
//           iconI,
//           size: 30,
//         ),
//         title: Text('المفضلة'),
//         onTap: selectedontap);
//   }

}
