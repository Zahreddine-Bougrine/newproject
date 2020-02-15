import 'package:flutter/material.dart';
class BuildSkillRow extends StatelessWidget {
  const BuildSkillRow({
    Key key,
    @required this.skill,
    @required this.level,
  }) : super(key: key);

  final String skill;
  final double level;

  @override
  Widget build(BuildContext context) {

    return Row(
              children: <Widget>[
                SizedBox(width:16.0),
                Expanded(
                  flex: 2,
                  child: Text(skill.toUpperCase(),textAlign: TextAlign.right,)),
                SizedBox(width:10.0),
                Expanded(
                  flex: 5,
                  child:LinearProgressIndicator(
                    value:level,
                  ),
                  ),
                  SizedBox(width:16.0)
              ],
            );
  }
}