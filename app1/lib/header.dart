import 'package:flutter/material.dart';
class BuilderHeader extends StatelessWidget {
  const BuilderHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row( children: <Widget>[
           SizedBox(width: 10.0,),
            Container(
              width:80.0,
              height: 80.0,
              child:CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 40.0,
              child:CircleAvatar(backgroundImage:NetworkImage('https://scontent.ftun2-1.fna.fbcdn.net/v/t1.0-9/76183906_2482891835326101_4075328290594750464_n.jpg?_nc_cat=107&_nc_ohc=VdztF7SkJ58AX8SFpJE&_nc_ht=scontent.ftun2-1.fna&oh=3fd012a14b754f5a7f8ae124254c556a&oe=5E947433')
            , 
            radius: 35.0,),),),
            SizedBox(width:20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('BOUGRINE Zahreddine',
                 style: TextStyle(
                   fontSize:18.0,
                   fontWeight:FontWeight.bold,
                 ),),
                Text('Engineer Student'),
                Row(
                  children:<Widget>[
                  Icon(Icons.location_on,color:Colors.grey,),
                  Text('Hammem Chatt,Tunis',
                  style: TextStyle(
                    color:Colors.grey,
                  ),),
                  ],
                  ),
                    ],
            ),
            ],


          );
  }
}