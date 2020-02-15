import 'package:flutter/material.dart';
import'header.dart';
import 'buildtitle.dart';
import 'buildSkillRow.dart';
 class Homepage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
        elevation:0,
        automaticallyImplyLeading: false,
      ),
       
      body: SingleChildScrollView(
        child:Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: <Widget>[
            BuilderHeader(),
            Container(
              
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
              color:Colors.grey.shade200
              ),
              child: Text("2nd year advanced technologies engineer student at ENSTAB, interested in web and mobile development and electronics.  "),
            ),
          
              
              BuildTitle(title: "Skills"),
              SizedBox(height:10.0), 
              BuildSkillRow(skill: "flutter", level: 0.25),
              SizedBox(height:5.0), 
              BuildSkillRow(skill: "web", level: 0.35),
              SizedBox(height:5.0),
              BuildSkillRow(skill: "electronic", level: 0.75),
              SizedBox(height:16.0),
              BuildTitle(title: "Experience"), 
              _buildExperienceRow(company:"NEXT MOVE",position:"electronic enginner intern",duration:"01/08/2019-01/09/2019"),
              _buildExperienceRow(company:"LANSER",position:"nanotechnologie research intern",duration:"01/07/2019-01/08/2019"),
              _buildExperienceRow(company:"Sprint",position:"flutter Developer intern",duration:"2020"),
              BuildTitle(title: "Education"), 
              _buildExperienceRow(company:"ENSTAB",position:"engineering student",duration:"2018-current"),
              _buildExperienceRow(company:"FSM",position:"preparatory cycle",duration:"2016-2018"),
              BuildTitle(title: "Socials"), 
              _buildExperienceRow(company:"IEEE Student Branch",position:"Member",duration: "current"),
              _buildExperienceRow(company:"ETC Junior Entreprise",position:"Project memeber",duration: "current"),
              _buildExperienceRow(company:"ELECTRONIX Enstab",position:"Vice Chair",duration: "current"),

          ],
        ),
      ),
      );
  }
  
  ListTile _buildExperienceRow({String company,String position,String duration}) {
    return ListTile(
              leading:Padding(
                padding: const EdgeInsets.only(top:8.0,left:20.0),
              child: Icon(Icons.info,),),
              title: Text(company,style:TextStyle(
                color: Colors.black,
                fontWeight:FontWeight.bold,
              ),),
              subtitle:Text("$position ($duration)"                
              ),  
            );
  }
 }
 