import 'dart:math';

import 'package:animated_lt/page/sliver_two/sliver_two_page.dart';
import 'package:flutter/material.dart';

///sliver header 🚙
class CustomSliverPersistance extends StatelessWidget {
  final String? text;
  const CustomSliverPersistance({
    required this.text,
    super.key,
    required this.widget,
  });

  final SliverTwoPage widget;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
        pinned: true,

        ///CustomSliverPersistanceHeaderDelegate 🚎
        delegate: CustomSliverPersistanceHeaderDelegate(
            child: Container(
                color: widget.color,
                child: Center(
                    child: Text(
                  text!,
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w600),
                ))),
            maxHeight: 70,
            minHeight: 50));
  }
}

///CustomSliverPersistanceHeaderDelegate 🚎
class CustomSliverPersistanceHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  final double? maxHeight;
  final double? minHeight;
  final Widget? child;
  CustomSliverPersistanceHeaderDelegate(
      {required this.child, required this.maxHeight, required this.minHeight});
  @override
  Widget build(Object context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(
      child: child!,
    );
  }

  @override
  double get maxExtent => max(maxHeight!, minHeight!);

  @override
  double get minExtent => minHeight!;

  @override
  bool shouldRebuild(CustomSliverPersistanceHeaderDelegate oldDelegate) {
    return child != oldDelegate.child ||
        maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight;
  }
}
