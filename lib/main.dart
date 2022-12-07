import 'package:flutter/material.dart';

void main() {
  runApp(const Calc());
}

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {

  double ans=0;
  String val="";
  String pt="";
  String opr="";
  String n1="";
  String n2="";

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Calculator"),
        ),
        body: Padding(
          padding: const EdgeInsets.all( 20),
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    color: Colors.white,
                  boxShadow: [
                    /*BoxShadow(
                      color: Colors.black,
                      blurRadius: 40,
                      spreadRadius: 5,
                      offset: Offset(10, 10),
                    ),*/

                  ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text("$val",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          val="";

                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text("C",
                          style: TextStyle(
                            fontSize: 50,
                          ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          if(val.length>0){
                            val=val.substring(0,val.length-1);
                          }
                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(Icons.backspace_outlined,
                          size: 40,)
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          opr="%";
                          n1=val;
                          val="";
                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text("%",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          opr="/";
                          n1=val;
                          val = "";
                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text("/",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          val+="7";
                        });

                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text("7",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(

                      onTap: (){
                        setState(() {
                          val+="8";
                        });
                      },

                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text("8",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          val+="9";
                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text("9",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          opr="*";
                          n1=val;
                          val="";
                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text("*",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          val+="4";
                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text("4",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          val+="5";
                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text("5",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          val+="6";
                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text("6",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          opr="-";
                          n1=val;
                          val="";
                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text("-",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          val+="1";
                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text("1",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          val+="2";
                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text("2",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          val+="3";
                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text("3",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          opr='+';
                          n1=val;
                          val='';
                          print(n1);
                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text("+",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          val+="0";



                          /*val+=".";
                          pt=double.parse(val);*/
                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text("0",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {

                          if(val .contains('.')){
                           // return null;
                          }
                          else{
                            val+='.';
                          }
                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text(".",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          val+="00";
                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text("00",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          n2=val;
                          // val="";
                          print(n2);
                          if(opr=="+"){
                            ans=double.parse(n1) + double.parse(n2) ;
                            // ans=n1+n2;

                          }
                          else if(opr=="-"){
                           ans=double.parse(n1) -double.parse(n2) ;
                          }
                          else if(opr=="%"){

                            ans=double.parse(n1) *double.parse(n2) /100;
                          }
                          else if(opr=="/"){
                            ans=double.parse(n1) / double.parse(n2) ;
                          }
                          else if(opr=="*"){
                            ans=double.parse(n1) * double.parse(n2) ;
                          }
                          val=ans.toString();
                          opr='';


                        });
                      },
                      child: Container(
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text("=",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
