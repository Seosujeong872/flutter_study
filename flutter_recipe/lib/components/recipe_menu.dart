import 'package:flutter/material.dart';
class RecipeMenu extends StatelessWidget {
  const RecipeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          _bulidMenuItem(Icons.food_bank, "All"),
          const Spacer(),
          _bulidMenuItem(Icons.emoji_food_beverage, "Coffee"),
          const Spacer(),
          _bulidMenuItem(Icons.fastfood, "Burger"),
          const Spacer(),
          _bulidMenuItem(Icons.local_pizza, "Pizza"),
        ],
      ),
    );
  }
}

Widget _bulidMenuItem(IconData mIcon, String text){
  return Container(
    width: 90,
    height: 55,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Colors.black12),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          mIcon,
          color: Colors.redAccent,
          size: 30,
        ),
        const SizedBox(height: 5),
        Text(text, style: const TextStyle(color: Colors.black87)),
      ],
    ),
  );
}
