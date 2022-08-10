class FoodModel {
  String? title;
  String? subtitle;
  String? icon;
  String? image;
  String? instruction;
  List<String?> ingrediens;
  List<String?> numbers;
  FoodModel(
      {required this.icon,
      required this.title,
      required this.subtitle,
      required this.ingrediens,
      required this.instruction,
      required this.numbers,
      required this.image});
}
