import 'package:flutter/material.dart';
class ButtonTab extends StatelessWidget {
  final bool isSelected;
  final String texto;
  final Color colorBorder;

  const ButtonTab({
    this.isSelected,this.texto,
    this.colorBorder = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.symmetric(horizontal: 5),

      decoration:  isSelected ? BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  width: 2,
                  color: colorBorder
              )
          )
      ) :null,
      child: TextButton(onPressed: (){},
        child: Text(texto,style: TextStyle(
          color: isSelected ? colorBorder : Colors.black,
          fontSize: 14,
        ),),style: TextButton.styleFrom(primary: Colors.black),),
    );
  }
}
