import 'package:flutter/material.dart';

Widget defualtButton(
    {
      double width = double.infinity,
      double height = 40.0,
      double radius=0.0,
      Color color=Colors.blue,
      required Function function,
      required String text,
    })
{
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius)
    ),
    child: MaterialButton(
      onPressed: function(),
      child: Text(
        "${text.toUpperCase()}",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    ),
  );

}