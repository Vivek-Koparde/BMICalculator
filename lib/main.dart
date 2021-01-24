import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BmiApp());
}

class BmiApp extends StatefulWidget {
  @override
  _BmiAppState createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          
          backgroundColor: Color.fromARGB(255, 54,52,80),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Title(),
                  MaleFemale(),
                  Line(),
                  Height(),
                  Age(),
                  Weight(),
                  CalButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Line extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 10),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
        child: Center(
          child: Text(
      'BMI Calculator',
      style: TextStyle(color: Colors.white,
      fontSize: 30.0,
      ),
    ),
        ));
  }
}

class MaleFemale extends StatefulWidget {
  @override
  _MaleFemaleState createState() => _MaleFemaleState();
}

class _MaleFemaleState extends State<MaleFemale> {
  @override
  String male="male-user.png";
  static String selected="";
  String female="woman-avatar.png";
  var colorsMale=[255,255,255];
  var colorsFemale=[255,255,255];
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(20.0),
            child:FlatButton(onPressed: (){
              setState(() {
                selected="male";
                male="Male1.png";
                colorsMale[0]=32;
                colorsMale[1]=32;
                colorsMale[2]=54;

                female="woman-avatar.png";
                colorsFemale[0]=255;
                colorsFemale[1]=255;
                colorsFemale[2]=255;
              });
            },
                child: Column(children: <Widget>[
                Text('Male',style: TextStyle(color: Color.fromARGB(255, colorsMale[0],colorsMale[1],colorsMale[2])),),
                SizedBox(height: 10.0,),
                Image.asset('images/$male',height: 50.0,width: 50.0,),
              ],
            )))),
        Expanded(child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(20.0),
            child:FlatButton(
              onPressed: (){
                setState(() {
                  selected="female";
                  female="Female1.png";
                  colorsFemale[0]=32;
                  colorsFemale[1]=32;
                  colorsFemale[2]=54;

                  male="male-user.png";
                  colorsMale[0]=255;
                  colorsMale[1]=255;
                  colorsMale[2]=255;
                });
              },
              child: Column(
                children: <Widget>[
                  Text('Female',style: TextStyle(color: Color.fromARGB(255,colorsFemale[0], colorsFemale[1], colorsFemale[2])),),
                  SizedBox(height: 10.0,),
                  Image.asset('images/$female',height: 50.0,width: 50.0,),
                ],
              ),
            )))
      ],
    );
  }
}

class Height extends StatefulWidget {
  @override
  _HeightState createState() => _HeightState();
}

class _HeightState extends State<Height> {
  static double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child:  TextFormField(
        onChanged: (value){
          height=double.parse(value);
        },
        keyboardType: TextInputType.number,
        style: TextStyle(color: Colors.white),
        decoration: new InputDecoration(
          hintText: "Meters",
            labelText: "Height :",
            focusColor: Colors.black,
            labelStyle: TextStyle(color:Colors.white),
            // border: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(25),
            //     borderSide: BorderSide(color: Colors.white)
            // ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:  Color.fromARGB(255, 32, 32, 54)),
              borderRadius: BorderRadius.circular(25),
          ),

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:  Color.fromARGB(255, 32, 32, 54)),
            borderRadius: BorderRadius.circular(25),
          )
        ),
      ),
    );
  }
}

class Age extends StatefulWidget {
  @override
  _AgeState createState() => _AgeState();
}

class _AgeState extends State<Age> {
  static int age=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child:  TextFormField(
        onChanged: (value){
          age=int.parse(value);
        },
        style: TextStyle(color: Colors.white),
        keyboardType: TextInputType.number,
        decoration: new InputDecoration(
          hintText: "Year",
            labelText: "Age :",
            focusColor: Colors.black,
            labelStyle: TextStyle(color: Colors.white),
            // border: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(25),
            //     borderSide: BorderSide(color: Colors.white)
            // ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:  Color.fromARGB(255, 32, 32, 54)),
              borderRadius: BorderRadius.circular(25),
            ),

            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color:  Color.fromARGB(255, 32, 32, 54)),
              borderRadius: BorderRadius.circular(25),
            )
        ),
      ),
    );
  }
}

class Weight extends StatefulWidget {
  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  static int weight;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child:  TextFormField(
        onChanged: (value){
          weight=int.parse(value);
        },
        keyboardType: TextInputType.number,
        style: TextStyle(color: Colors.white,),
        decoration: new InputDecoration(
            labelText: "Weight :",
            hintText: "Kg",
            focusColor: Colors.black,
            labelStyle: TextStyle(color: Colors.white),
            // border: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(25),
            //     borderSide: BorderSide(color: Colors.white)
            // ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:  Color.fromARGB(255, 32, 32, 54)),
              borderRadius: BorderRadius.circular(25),
            ),

            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color:  Color.fromARGB(255, 32, 32, 54)),
              borderRadius: BorderRadius.circular(25),
            )
        ),
      ),
    );
  }
}

class CalButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
      child: FlatButton(
        onPressed: (){
          _sendDataToSecondScreen(context);
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color:Color(0xff6C5CE7))
        ),
        textColor: Colors.white,
        padding: EdgeInsets.all(10.0),
        splashColor: Colors.lightBlueAccent,
        child: Text(
          'Calculate BMI',
          style: TextStyle(fontSize: 20.0,
          color: Colors.white),
        ),
      ),
    );
  }

  void _sendDataToSecondScreen(BuildContext context) {
    int weightData=_WeightState.weight;
    int ageData=_AgeState.age;
    double heightData=_HeightState.height;
    String genderData=_MaleFemaleState.selected;
    double result;
    String bmi,img;
    print(heightData);
    result=(weightData/(heightData*heightData)).roundToDouble();
    if(result<18.5)
      {
        bmi="Under Weight";
        img="underWeight.jpg";
      }
    else if(result>=18.5&&result<25)
      {
        bmi="Normal Weight";
        img="normal.png";
      }
    else if(result>=25&&result<30)
      {
        bmi="Over Weight";
        img="over.png";
      }
    else{
      bmi="Obese";
      img="obese.png";
    }
    Navigator.push(context,
        MaterialPageRoute(builder: (context)=>SecondScreen(bmiValue: bmi,value : result,height: heightData,age: ageData,weight: weightData,image:img),
        ));
  }
}

class SecondScreen extends StatelessWidget {
  final String bmiValue,image;
  final double value,height;
  final int weight,age;
  // receive data from the FirstScreen as a parameter
  SecondScreen({Key key, @required this.bmiValue, this.value,this.height,this.age
  ,this.weight,this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff35334F),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'BMI',
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20.0),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
              child: Text(
                '$value',
                style: TextStyle(color: Color(0xffFFDA66),fontSize: 50.0),
              ),
            ),
            Container(
              child: Text(
                '$bmiValue',
                style: TextStyle(color: Color(0xff26CAB3),fontSize: 20.0,fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(35.0),
                    margin: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
                    color: Color(0xff202036),
                    child: Text('Height:\n$height',style: TextStyle(color: Color(0xffF2CD50),
                    fontSize: 15.0),),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(35.0),
                    margin: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
                    color: Color(0xff202036),
                    child: Text('Age:\n$age',style: TextStyle(color: Color(0xffF2CD50),
                        fontSize: 15.0),),

                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(35.0),
                    margin: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
                    color: Color(0xff202036),
                    child: Text('Weight:\n$weight',style: TextStyle(color: Color(0xffF2CD50),
                        fontSize: 15.0),),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    margin: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
                    color: Color(0xff202036),
                    child: CircleAvatar(
                      radius: 38.0,
                      backgroundImage: AssetImage('images/$image'),
                    )

                  ),
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}






