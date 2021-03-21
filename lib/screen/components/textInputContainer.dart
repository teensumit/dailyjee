import 'package:flutter/material.dart';

class TextInputContainer extends StatelessWidget {
  const TextInputContainer({
    Key key,
    @required this.typer,
    @required this.st,
    this.icon,
  }) : super(key: key);

  final TextInputType typer;
  final String st;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: typer,
      decoration: InputDecoration(
        hintText:st,
        contentPadding: EdgeInsets.only(left:10, top:20),
        suffixIcon: icon,
        hintStyle: TextStyle(
          color:Color(0xFFB5B5B5),
          fontFamily: 'Roboto',
          fontSize: 12.0
        ),
      ),
    );
  }
}