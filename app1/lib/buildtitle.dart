import 'package:flutter/material.dart';
class BuildTitle extends StatelessWidget {
  const BuildTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding( 
            padding: const EdgeInsets.only(left:16.0),
            child: Text(title.toUpperCase(),style:TextStyle(
              fontSize: 18.0,
              fontWeight:FontWeight.bold,
            ),),
          );
  }
}