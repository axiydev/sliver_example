import 'package:animated_lt/consts/consts.dart';
import 'package:animated_lt/models/food_model.dart';
import 'package:animated_lt/page/sliver/widget/sliver_app_bar.dart';
import 'package:animated_lt/page/sliver/widget/sliver_card_item.dart';
import 'package:flutter/material.dart';

class SliverPage extends StatefulWidget {
  static const String route = '/sliver';
  const SliverPage({super.key});

  @override
  State<SliverPage> createState() => _SliverPageState();
}

class _SliverPageState extends State<SliverPage> {
  final List<FoodModel?> _foodsList = [];
  final List<Color?> _coloList = [];
  @override
  void didChangeDependencies() {
    _foodsList.addAll([
      FoodModel(
        icon: AppImagePaths.eggsIcon,
        title: 'Ariana\'s Macaroni',
        subtitle: 'Buy at Walmart and Target',
        image: AppImagePaths.eggsImage,
        ingrediens: [
          'Melted cheese',
          'Macaroni',
          'Apples',
          'Strawberries',
          'Toy',
          'Backpack',
          'doll'
        ],
        numbers: [
          '3 Servings',
          '5 minutes Preptime',
          '5 minutes CookTime',
          '\$2.00 Cost'
        ],
        instruction:
            '''First you put the macaroni in the stove and now you put it in the end. Put it to the oven and put cheese and more melted cheese. The oven has to be hot like fire…like a candle…like for birthdays. Now you need to tell everyone that its time to leave. And I have to leave because I am going to a party with a swimming pool. My sister says, “Why do you go to the swimming pool?” and I say, “Because I like it.” Now I go home and I am waiting for it not to be hot and then my sister says, “Why do you do that?” it’s because you blow on the macaroni so it wont be hot. You need to wait. Now its done!''',
      ),
      FoodModel(
        icon: AppImagePaths.iceCreamIcon,
        image: AppImagePaths.iceCreamImage,
        title: 'Ariana\'s Macaroni',
        subtitle: 'Buy at Walmart and Target',
        ingrediens: [
          'Melted cheese',
          'Macaroni',
          'Apples',
          'Strawberries',
          'Toy',
          'Backpack',
          'doll'
        ],
        numbers: [
          '3 Servings',
          '5 minutes Preptime',
          '5 minutes CookTime',
          '\$2.00 Cost'
        ],
        instruction:
            '''First you put the macaroni in the stove and now you put it in the end. Put it to the oven and put cheese and more melted cheese. The oven has to be hot like fire…like a candle…like for birthdays. Now you need to tell everyone that its time to leave. And I have to leave because I am going to a party with a swimming pool. My sister says, “Why do you go to the swimming pool?” and I say, “Because I like it.” Now I go home and I am waiting for it not to be hot and then my sister says, “Why do you do that?” it’s because you blow on the macaroni so it wont be hot. You need to wait. Now its done!''',
      ),
      FoodModel(
        icon: AppImagePaths.macaroniIcon,
        image: AppImagePaths.macaroniImage,
        title: 'Ariana\'s Macaroni',
        subtitle: 'Buy at Walmart and Target',
        ingrediens: [
          'Melted cheese',
          'Macaroni',
          'Apples',
          'Strawberries',
          'Toy',
          'Backpack',
          'doll'
        ],
        numbers: [
          '3 Servings',
          '5 minutes Preptime',
          '5 minutes CookTime',
          '\$2.00 Cost'
        ],
        instruction:
            '''First you put the macaroni in the stove and now you put it in the end. Put it to the oven and put cheese and more melted cheese. The oven has to be hot like fire…like a candle…like for birthdays. Now you need to tell everyone that its time to leave. And I have to leave because I am going to a party with a swimming pool. My sister says, “Why do you go to the swimming pool?” and I say, “Because I like it.” Now I go home and I am waiting for it not to be hot and then my sister says, “Why do you do that?” it’s because you blow on the macaroni so it wont be hot. You need to wait. Now its done!''',
      ),
      FoodModel(
        icon: AppImagePaths.croissantIcon,
        image: AppImagePaths.croissantImage,
        title: 'Ariana\'s Macaroni',
        subtitle: 'Buy at Walmart and Target',
        ingrediens: [
          'Melted cheese',
          'Macaroni',
          'Apples',
          'Strawberries',
          'Toy',
          'Backpack',
          'doll'
        ],
        numbers: [
          '3 Servings',
          '5 minutes Preptime',
          '5 minutes CookTime',
          '\$2.00 Cost'
        ],
        instruction:
            '''First you put the macaroni in the stove and now you put it in the end. Put it to the oven and put cheese and more melted cheese. The oven has to be hot like fire…like a candle…like for birthdays. Now you need to tell everyone that its time to leave. And I have to leave because I am going to a party with a swimming pool. My sister says, “Why do you go to the swimming pool?” and I say, “Because I like it.” Now I go home and I am waiting for it not to be hot and then my sister says, “Why do you do that?” it’s because you blow on the macaroni so it wont be hot. You need to wait. Now its done!''',
      ),
      FoodModel(
        icon: AppImagePaths.tacosIcon,
        image: AppImagePaths.tacosImage,
        title: 'Ariana\'s Macaroni',
        subtitle: 'Buy at Walmart and Target',
        ingrediens: [
          'Melted cheese',
          'Macaroni',
          'Apples',
          'Strawberries',
          'Toy',
          'Backpack',
          'doll'
        ],
        numbers: [
          '3 Servings',
          '5 minutes Preptime',
          '5 minutes CookTime',
          '\$2.00 Cost'
        ],
        instruction:
            '''First you put the macaroni in the stove and now you put it in the end. Put it to the oven and put cheese and more melted cheese. The oven has to be hot like fire…like a candle…like for birthdays. Now you need to tell everyone that its time to leave. And I have to leave because I am going to a party with a swimming pool. My sister says, “Why do you go to the swimming pool?” and I say, “Because I like it.” Now I go home and I am waiting for it not to be hot and then my sister says, “Why do you do that?” it’s because you blow on the macaroni so it wont be hot. You need to wait. Now its done!''',
      ),
      FoodModel(
        icon: AppImagePaths.iceCreamIcon,
        image: AppImagePaths.iceCreamImage,
        title: 'Ariana\'s Macaroni',
        subtitle: 'Buy at Walmart and Target',
        ingrediens: [
          'Melted cheese',
          'Macaroni',
          'Apples',
          'Strawberries',
          'Toy',
          'Backpack',
          'doll'
        ],
        numbers: [
          '3 Servings',
          '5 minutes Preptime',
          '5 minutes CookTime',
          '\$2.00 Cost'
        ],
        instruction:
            '''First you put the macaroni in the stove and now you put it in the end. Put it to the oven and put cheese and more melted cheese. The oven has to be hot like fire…like a candle…like for birthdays. Now you need to tell everyone that its time to leave. And I have to leave because I am going to a party with a swimming pool. My sister says, “Why do you go to the swimming pool?” and I say, “Because I like it.” Now I go home and I am waiting for it not to be hot and then my sister says, “Why do you do that?” it’s because you blow on the macaroni so it wont be hot. You need to wait. Now its done!''',
      ),
      FoodModel(
        icon: AppImagePaths.macaroniIcon,
        image: AppImagePaths.macaroniImage,
        title: 'Ariana\'s Macaroni',
        subtitle: 'Buy at Walmart and Target',
        ingrediens: [
          'Melted cheese',
          'Macaroni',
          'Apples',
          'Strawberries',
          'Toy',
          'Backpack',
          'doll'
        ],
        numbers: [
          '3 Servings',
          '5 minutes Preptime',
          '5 minutes CookTime',
          '\$2.00 Cost'
        ],
        instruction:
            '''First you put the macaroni in the stove and now you put it in the end. Put it to the oven and put cheese and more melted cheese. The oven has to be hot like fire…like a candle…like for birthdays. Now you need to tell everyone that its time to leave. And I have to leave because I am going to a party with a swimming pool. My sister says, “Why do you go to the swimming pool?” and I say, “Because I like it.” Now I go home and I am waiting for it not to be hot and then my sister says, “Why do you do that?” it’s because you blow on the macaroni so it wont be hot. You need to wait. Now its done!''',
      ),
      FoodModel(
        icon: AppImagePaths.croissantIcon,
        image: AppImagePaths.croissantImage,
        title: 'Ariana\'s Macaroni',
        subtitle: 'Buy at Walmart and Target',
        ingrediens: [
          'Melted cheese',
          'Macaroni',
          'Apples',
          'Strawberries',
          'Toy',
          'Backpack',
          'doll'
        ],
        numbers: [
          '3 Servings',
          '5 minutes Preptime',
          '5 minutes CookTime',
          '\$2.00 Cost'
        ],
        instruction:
            '''First you put the macaroni in the stove and now you put it in the end. Put it to the oven and put cheese and more melted cheese. The oven has to be hot like fire…like a candle…like for birthdays. Now you need to tell everyone that its time to leave. And I have to leave because I am going to a party with a swimming pool. My sister says, “Why do you go to the swimming pool?” and I say, “Because I like it.” Now I go home and I am waiting for it not to be hot and then my sister says, “Why do you do that?” it’s because you blow on the macaroni so it wont be hot. You need to wait. Now its done!''',
      ),
      FoodModel(
        icon: AppImagePaths.tacosIcon,
        image: AppImagePaths.tacosImage,
        title: 'Ariana\'s Macaroni',
        subtitle: 'Buy at Walmart and Target',
        ingrediens: [
          'Melted cheese',
          'Macaroni',
          'Apples',
          'Strawberries',
          'Toy',
          'Backpack',
          'doll'
        ],
        numbers: [
          '3 Servings',
          '5 minutes Preptime',
          '5 minutes CookTime',
          '\$2.00 Cost'
        ],
        instruction:
            '''First you put the macaroni in the stove and now you put it in the end. Put it to the oven and put cheese and more melted cheese. The oven has to be hot like fire…like a candle…like for birthdays. Now you need to tell everyone that its time to leave. And I have to leave because I am going to a party with a swimming pool. My sister says, “Why do you go to the swimming pool?” and I say, “Because I like it.” Now I go home and I am waiting for it not to be hot and then my sister says, “Why do you do that?” it’s because you blow on the macaroni so it wont be hot. You need to wait. Now its done!''',
      ),
      FoodModel(
        icon: AppImagePaths.iceCreamIcon,
        image: AppImagePaths.iceCreamImage,
        title: 'Ariana\'s Macaroni',
        subtitle: 'Buy at Walmart and Target',
        ingrediens: [
          'Melted cheese',
          'Macaroni',
          'Apples',
          'Strawberries',
          'Toy',
          'Backpack',
          'doll'
        ],
        numbers: [
          '3 Servings',
          '5 minutes Preptime',
          '5 minutes CookTime',
          '\$2.00 Cost'
        ],
        instruction:
            '''First you put the macaroni in the stove and now you put it in the end. Put it to the oven and put cheese and more melted cheese. The oven has to be hot like fire…like a candle…like for birthdays. Now you need to tell everyone that its time to leave. And I have to leave because I am going to a party with a swimming pool. My sister says, “Why do you go to the swimming pool?” and I say, “Because I like it.” Now I go home and I am waiting for it not to be hot and then my sister says, “Why do you do that?” it’s because you blow on the macaroni so it wont be hot. You need to wait. Now its done!''',
      ),
      FoodModel(
        icon: AppImagePaths.macaroniIcon,
        image: AppImagePaths.macaroniImage,
        title: 'Ariana\'s Macaroni',
        subtitle: 'Buy at Walmart and Target',
        ingrediens: [
          'Melted cheese',
          'Macaroni',
          'Apples',
          'Strawberries',
          'Toy',
          'Backpack',
          'doll'
        ],
        numbers: [
          '3 Servings',
          '5 minutes Preptime',
          '5 minutes CookTime',
          '\$2.00 Cost'
        ],
        instruction:
            '''First you put the macaroni in the stove and now you put it in the end. Put it to the oven and put cheese and more melted cheese. The oven has to be hot like fire…like a candle…like for birthdays. Now you need to tell everyone that its time to leave. And I have to leave because I am going to a party with a swimming pool. My sister says, “Why do you go to the swimming pool?” and I say, “Because I like it.” Now I go home and I am waiting for it not to be hot and then my sister says, “Why do you do that?” it’s because you blow on the macaroni so it wont be hot. You need to wait. Now its done!''',
      ),
      FoodModel(
        icon: AppImagePaths.croissantIcon,
        image: AppImagePaths.croissantImage,
        title: 'Ariana\'s Macaroni',
        subtitle: 'Buy at Walmart and Target',
        ingrediens: [
          'Melted cheese',
          'Macaroni',
          'Apples',
          'Strawberries',
          'Toy',
          'Backpack',
          'doll'
        ],
        numbers: [
          '3 Servings',
          '5 minutes Preptime',
          '5 minutes CookTime',
          '\$2.00 Cost'
        ],
        instruction:
            '''First you put the macaroni in the stove and now you put it in the end. Put it to the oven and put cheese and more melted cheese. The oven has to be hot like fire…like a candle…like for birthdays. Now you need to tell everyone that its time to leave. And I have to leave because I am going to a party with a swimming pool. My sister says, “Why do you go to the swimming pool?” and I say, “Because I like it.” Now I go home and I am waiting for it not to be hot and then my sister says, “Why do you do that?” it’s because you blow on the macaroni so it wont be hot. You need to wait. Now its done!''',
      ),
      FoodModel(
        icon: AppImagePaths.tacosIcon,
        image: AppImagePaths.tacosImage,
        title: 'Ariana\'s Macaroni',
        subtitle: 'Buy at Walmart and Target',
        ingrediens: [
          'Melted cheese',
          'Macaroni',
          'Apples',
          'Strawberries',
          'Toy',
          'Backpack',
          'doll'
        ],
        numbers: [
          '3 Servings',
          '5 minutes Preptime',
          '5 minutes CookTime',
          '\$2.00 Cost'
        ],
        instruction:
            '''First you put the macaroni in the stove and now you put it in the end. Put it to the oven and put cheese and more melted cheese. The oven has to be hot like fire…like a candle…like for birthdays. Now you need to tell everyone that its time to leave. And I have to leave because I am going to a party with a swimming pool. My sister says, “Why do you go to the swimming pool?” and I say, “Because I like it.” Now I go home and I am waiting for it not to be hot and then my sister says, “Why do you do that?” it’s because you blow on the macaroni so it wont be hot. You need to wait. Now its done!''',
      ),
      FoodModel(
        icon: AppImagePaths.iceCreamIcon,
        image: AppImagePaths.iceCreamImage,
        title: 'Ariana\'s Macaroni',
        subtitle: 'Buy at Walmart and Target',
        ingrediens: [
          'Melted cheese',
          'Macaroni',
          'Apples',
          'Strawberries',
          'Toy',
          'Backpack',
          'doll'
        ],
        numbers: [
          '3 Servings',
          '5 minutes Preptime',
          '5 minutes CookTime',
          '\$2.00 Cost'
        ],
        instruction:
            '''First you put the macaroni in the stove and now you put it in the end. Put it to the oven and put cheese and more melted cheese. The oven has to be hot like fire…like a candle…like for birthdays. Now you need to tell everyone that its time to leave. And I have to leave because I am going to a party with a swimming pool. My sister says, “Why do you go to the swimming pool?” and I say, “Because I like it.” Now I go home and I am waiting for it not to be hot and then my sister says, “Why do you do that?” it’s because you blow on the macaroni so it wont be hot. You need to wait. Now its done!''',
      ),
    ]);
    _coloList.addAll([
      const Color(0xFFB0E5E3),
      const Color(0xFFD6B7A6),
      const Color(0xFFA9E1C9)
    ]);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ///Sliver app bar 🛖
          const CustomSliverAppBar(
            headerImage: AppImagePaths.mainImage,
            text: 'Reciperlich',
          ),

          ///sized box
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),

          ///sliver list 🏢
          CustomListSliver(
            foodsList: _foodsList,
            coloList: _coloList,
          ),
        ],
      ),
    );
  }
}
