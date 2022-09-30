import 'package:flutter/material.dart';
import '../model/Detail_Item_Categorie.dart';

class ItemCategorieWidget extends StatefulWidget {
  final String imageI;
  final String NameI;
  final String idI;
  final String prixI;
  final String EtatI;
  final String lieuI;
  final String descI;

  final Function removeItem;

  const ItemCategorieWidget({
    super.key,
    required this.imageI,
    required this.NameI,
    required this.idI,
    required this.removeItem,
    required this.prixI,
    required this.EtatI,
    required this.lieuI,
    required this.descI,
  });

  // String get MoisText {
  //   switch (mois) {
  //     case Mois.Janvier:
  //       return 'يناير ';
  //       break;
  //     case Mois.fevrier:
  //       return 'فبراير';
  //       break;
  //     case Mois.mars:
  //       return 'مارس';
  //       break;
  //     default:
  //       return 'غير معروف';
  //   }
  // }

  @override
  State<StatefulWidget> createState() => ItemCategorieWidgetState();
}

// void selectItem(BuildContext ctx) {
//   Navigator.of(ctx).pushNamed('/RouteDetails',
//   arguments: widge

//   );
// }

class ItemCategorieWidgetState extends State<ItemCategorieWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => Navigator.of(context)
            .pushNamed('/RouteDetails', arguments: widget.idI)
            .then((value) {
          if (value != null) {
            widget.removeItem(value);
          }
        }),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.asset(
                    widget.imageI,
                    width: double.infinity,
                    height: 210,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  height: 210,
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.8)
                      ])),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 13,
                    ),
                    child: Text(
                      widget.NameI,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )
              ]),
              Container(
                height: 70,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.place),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            widget.lieuI,
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      // Row(
                      //   children: [
                      //     Icon(Icons.attach_money),
                      //     SizedBox(
                      //       width: 8,
                      //     ),
                      Text(
                        widget.prixI,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                      //   ],
                      // ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
