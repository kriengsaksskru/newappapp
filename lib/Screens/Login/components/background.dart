import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.network(
              "https://i.pinimg.com/originals/06/d3/ca/06d3ca1befbcfddd72649ee31b2c747e.jpg",
              width: size.width * 0.5,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.network(
              "https://i.pinimg.com/originals/06/d3/ca/06d3ca1befbcfddd72649ee31b2c747e.jpg",
              width: size.width * 0.5,
            ),
          ),
          Positioned(
            top: 5,
            right: 1,
            child: Image.network(
              "https://i.pinimg.com/originals/06/d3/ca/06d3ca1befbcfddd72649ee31b2c747e.jpg",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 5,
            left: 1,
            child: Image.network(
              "https://i.pinimg.com/originals/06/d3/ca/06d3ca1befbcfddd72649ee31b2c747e.jpg",
              width: size.width * 0.3,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
