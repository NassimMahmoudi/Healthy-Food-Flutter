import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 50,
            right: 30,
            child: Image.asset(
              "assets/images/healthy-logo.png",
              width: size.width * 0.60,
            ),
          ),
          child
        ],
      ),
    );
  }
}
