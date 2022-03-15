import 'package:flutter/material.dart';



class ButtonCategories extends StatelessWidget {
  const ButtonCategories({Key? key, required this.categoryName}) : super(key: key);

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Center(

        child: Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            categoryName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
        ),
      ),
    );
  }
}
