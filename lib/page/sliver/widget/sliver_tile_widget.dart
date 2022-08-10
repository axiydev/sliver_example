import 'package:flutter/material.dart';
import 'package:animated_lt/models/food_model.dart';

///Sliver Tile widget 🚥
class MySliverListTileWidget extends StatelessWidget {
  final Color? color;
  final FoodModel? food;
  final VoidCallback? callback;
  const MySliverListTileWidget(
      {super.key,
      required this.color,
      required this.food,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Card(
        elevation: .0,
        child: SizedBox(
          height: 70,
          child: ListTile(
            dense: false,
            onTap: callback,
            tileColor: color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            visualDensity: const VisualDensity(horizontal: 0, vertical: -1),
            minVerticalPadding: 10,
            title: Text(
              food!.title!,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            contentPadding: const EdgeInsets.only(left: 20),
            subtitle: Text(
              food!.subtitle.toString(),
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            trailing: Image.network(
              food!.icon!,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
