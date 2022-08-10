import 'dart:math';

import 'package:animated_lt/models/food_model.dart';
import 'package:animated_lt/page/sliver/widget/sliver_app_bar.dart';
import 'package:animated_lt/page/sliver_two/widgets/custom_sliver_persistance_heder.dart';
import 'package:flutter/material.dart';

class SliverTwoPage extends StatefulWidget {
  static const String route = 'sliver_two';
  final FoodModel? food;
  final Color? color;
  const SliverTwoPage({super.key, required this.food, required this.color});

  @override
  State<SliverTwoPage> createState() => _SliverTwoPageState();
}

class _SliverTwoPageState extends State<SliverTwoPage> {
  final List<Color?> _colorList = [];

  @override
  void didChangeDependencies() {
    _colorList.addAll([
      const Color(0xFFFA9803),
      const Color(0xFF623BAD),
      const Color(0xFF3A52B9),
      const Color(0xFF00BDDB),
      const Color(0xFFF8EA33),
      const Color(0xFF5C7D87)
    ]);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                ///Sliver app bar 🛖
                CustomSliverAppBar(
                  headerImage: widget.food!.image!,
                  text: widget.food!.title!,
                ),

                ///sliver header 🚙
                CustomSliverPersistance(
                  widget: widget,
                  text: 'Instructions',
                ),

                ///sliver padding
                SliverPadding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  sliver: SliverToBoxAdapter(
                      child: Text(
                    widget.food!.instruction!,
                    style: const TextStyle(fontSize: 17),
                  )),
                ),

                ///sliver header 🚙
                CustomSliverPersistance(
                  widget: widget,
                  text: 'Ingredients',
                ),

                ///sliver grid
                SliverPadding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final random = Random();
                          var colorIndex =
                              random.nextInt(_colorList.length - 1);
                          return Card(
                            elevation: .0,
                            color: _colorList[colorIndex],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(widget.food!.ingrediens[index]!)),
                          );
                        },
                        childCount: widget.food!.ingrediens.length,
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 3 / 1,
                              crossAxisCount: 3,
                              mainAxisSpacing: 5,
                              crossAxisSpacing: 5)),
                ),

                ///sliver header 🚙
                CustomSliverPersistance(
                  widget: widget,
                  text: 'Numbers',
                ),

                ///sliver grid
                SliverPadding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final random = Random();
                          var colorIndex =
                              random.nextInt(_colorList.length - 1);
                          return Card(
                            elevation: .0,
                            color: _colorList[colorIndex],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: Text(widget.food!.numbers[index]!)),
                          );
                        },
                        childCount: widget.food!.numbers.length,
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 3.5 / 1,
                              crossAxisCount: 2,
                              mainAxisSpacing: 5,
                              crossAxisSpacing: 10)),
                ),

                ///sliver fill remaining
                SliverFillRemaining(
                  child: Container(),
                ),
              ],
          body: SafeArea(child: Container())),
    );
  }
}
