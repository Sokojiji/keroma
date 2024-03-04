import 'package:flutter/cupertino.dart';

class SmallText extends StatefulWidget {
   Color? color;
  final String text;
  double size;
  double height;

  SmallText({
    Key? key,
    this.color = const Color(0xFFccc7c5),
    required this.text,
    this.size = 12,
    this.height =1.2,

  }) : super(key: key);

  @override
  _SmallTextState createState() => _SmallTextState();
}

class _SmallTextState extends State<SmallText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,

      style: TextStyle(
        fontFamily: 'Roboto',
        color: widget.color,
        fontSize: widget.size,

      ),
    );
  }
}
