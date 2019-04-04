import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  final double height;
  final ImageProvider image;
  final Widget child;

  ExpandedWidget({ Key key,
    @required double this.height,
    @required ImageProvider this.image,
    @required Widget this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: image,
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  height: height,
                  margin: EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 24.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10.0,
                        offset: Offset(0.0, 10.0),
                      ),
                    ],
                  ),
                  child: child
                )),
          )
        ]));
  }
}