import 'package:flutter/material.dart';
class TextWidget extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? size;
  final FontWeight? fontWeight;
  const TextWidget({Key? key,this.fontWeight,this.size,this.text,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('$text',style: TextStyle(color: color,fontSize: size,fontWeight: fontWeight),),
    );
  }
}