import 'package:flutter/material.dart';

///Sliver app bar 🛖
class CustomSliverAppBar extends StatelessWidget {
  final String? text;
  final String? headerImage;
  const CustomSliverAppBar({
    required this.headerImage,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 180,
      stretch: true,
      title: Text(
        text!,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      pinned: true,
      backgroundColor: Theme.of(context)
          .copyWith(primaryColor: const Color(0xFF080E22))
          .primaryColor,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.fadeTitle,
          StretchMode.zoomBackground
        ],
        background: DecoratedBox(
          position: DecorationPosition.foreground,
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.25)),
          child: Image.network(
            headerImage!,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
