 import 'package:flutter/material.dart';

Widget defualtButton(
    {
      double width = double.infinity,
      double height = 40.0,
      double radius=0.0,
      Color backgroundColor=Colors.blue,
      bool uperCase=true,
      required VoidCallback function,
      required String text,
    }) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius)
    ),
    child: MaterialButton(
      onPressed: (){
        return function();
      },
      child: Text(
        uperCase ? text.toUpperCase() : text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    ),
  );

}


Widget defualtTextFormField(
{
  required TextEditingController Text_editing_controller,
  required IconData prefix_icon,
  required TextInputType text_input_type,
  required String label_text,
  required FormFieldValidator FormValidator,
  Function? onSubmitted,
  Function? onChange,

}
    ){
  return TextFormField(
    keyboardType: text_input_type,
    controller: Text_editing_controller,
    decoration: InputDecoration(
      prefixIcon: Icon(prefix_icon),
      labelText: "$label_text",
      border: OutlineInputBorder(),
    ),
    validator: FormValidator,
    onFieldSubmitted: (value){
      return onSubmitted!(value);
    },
    onChanged: (value){
      return onChange!(value);
    },

  );

}