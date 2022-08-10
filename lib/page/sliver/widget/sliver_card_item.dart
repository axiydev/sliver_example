import 'package:animated_lt/models/food_model.dart';
import 'package:animated_lt/page/sliver/widget/sliver_tile_widget.dart';
import 'package:animated_lt/page/sliver_two/sliver_two_page.dart';
import 'package:flutter/cupertino.dart';

///sliver list 🏢
class CustomListSliver extends StatelessWidget {
  const CustomListSliver({
    super.key,
    required List<FoodModel?> foodsList,
    required List<Color?> coloList,
  })  : _foodsList = foodsList,
        _coloList = coloList;

  final List<FoodModel?> _foodsList;
  final List<Color?> _coloList;

  ///function
  void _navigateToPage(BuildContext context, {FoodModel? food, Color? color}) {
    Navigator.push(
        context,
        CupertinoPageRoute(
            builder: (context) => SliverTwoPage(
                  food: food,
                  color: color,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: _foodsList.length,
            (context, index) {
      ///food item
      var item = _foodsList[index];

      ///tile color
      var colorIndex = index % _coloList.length;

      ///Sliver Tile widget 🚥
      return MySliverListTileWidget(
        color: _coloList[colorIndex],
        food: item,
        callback: () =>
            _navigateToPage(context, food: item, color: _coloList[colorIndex]),
      );
    }));
  }
}
