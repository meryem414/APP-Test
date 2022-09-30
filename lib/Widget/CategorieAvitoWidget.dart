import 'package:flutter/material.dart';

class CategorieAnimalWidget extends StatefulWidget {
  final String imageC;
  final String TitleC;
  final String idC;

  const CategorieAnimalWidget({
    super.key,
    required this.imageC,
    required this.TitleC,
    required this.idC,
  });

  @override
  State<StatefulWidget> createState() => CategorieAnimalWidgetState();
}

class CategorieAnimalWidgetState extends State<CategorieAnimalWidget> {
  void navigatorItem(BuildContext cxt) {
    Navigator.of(cxt).pushNamed(
      '/navigatorItem',
      arguments: widget.idC,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navigatorItem(context),
      child: Stack(
        children: [
          Image.asset(
            widget.imageC,
            fit: BoxFit.cover,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.black.withOpacity(0.4),
            ),
            child: Text(
              widget.TitleC,
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
