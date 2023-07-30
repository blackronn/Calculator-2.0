import 'package:calculator2/buttonwidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  late int sayi1;
  late int sayi2;
  var showedNumber='';
  var transitionHistory='as2d';
  late String sonuc;
  late String islem;
  // btn click
  void btnClick(String butonValue){
  print(butonValue);
  if(butonValue== "AC"){
    sonuc="";
    transitionHistory="";
  }
  else if(butonValue=="C"){
    sonuc="";
  }
  else if(butonValue=="Back"){
    sonuc=showedNumber.substring(0,showedNumber.length-1);
  }
  else if(butonValue=="+"){
    sayi1=int.parse(showedNumber);
    sonuc='';
    islem=butonValue;
  }
  else if(butonValue=="-"){
    sayi1=int.parse(showedNumber);
    sonuc='';
    islem=butonValue;
  }
  else if(butonValue=="x"){
    sayi1=int.parse(showedNumber);
    sonuc='';
    islem=butonValue;
  }
  else if(butonValue=="/"){
    sayi1=int.parse(showedNumber);
    sonuc='';
    islem=butonValue;
  }
  else if(butonValue=="+/-"){
    if(showedNumber[0]!="-"){
      sonuc="-"+showedNumber;
    }
    else
      sonuc=showedNumber.substring(1);
  }
  else if(butonValue=="="){
    sayi2=int.parse(showedNumber);
    if(islem=="+"){
      sonuc=(sayi1+sayi2).toString();
      transitionHistory=sayi1.toString()+"+"+sayi2.toString();
    }
    else if(islem=="-"){
      sonuc=(sayi1-sayi2).toString();
      transitionHistory=sayi1.toString()+"-"+sayi2.toString();
    }
    else if(islem=="/"){
      sonuc=(sayi1/sayi2).toString();
      transitionHistory=sayi1.toString()+"/"+sayi2.toString();
    }
    else if(islem=="x"){
      sonuc=(sayi1*sayi2).toString();
      transitionHistory=sayi1.toString()+"x"+sayi2.toString();
    }
  }
  else {
    sonuc=int.parse(showedNumber+butonValue).toString();
  }
  setState(() {
    showedNumber=sonuc;
  });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          title: Text("Calculator 2.0"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 12, 8),
                child: Text(
                  transitionHistory,
                  style: GoogleFonts.aBeeZee(
                      textStyle: TextStyle(fontSize: 30, color: Colors.black)),
                ),
              ),
            ),
            Container(
              alignment: Alignment(1.0,1.0),
                child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 12, 8),
              child: Text(showedNumber,
                  style: GoogleFonts.aBeeZee(
                    textStyle: TextStyle(fontSize: 40, color: Colors.black),
                  )),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonWidget(
                    text:"AC",
                    buttonColor: Colors.redAccent,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick,),
                    
                ButtonWidget(
                    text:"C",
                    buttonColor: Colors.redAccent,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick),
                ButtonWidget(
                    text:"Back",
                    buttonColor: Colors.cyan,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick),
                ButtonWidget(
                    text:"/",
                    buttonColor: Colors.amberAccent,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonWidget(
                    text:"9",
                    buttonColor: Colors.cyan,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick),
                ButtonWidget(
                    text:"8",
                    buttonColor: Colors.cyan,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick),
                ButtonWidget(
                    text:"7",
                    buttonColor: Colors.cyan,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick),
                ButtonWidget(
                    text:"-",
                    buttonColor: Colors.amberAccent,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonWidget(
                    text:"6",
                    buttonColor: Colors.cyan,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick),
                ButtonWidget(
                    text:"5",
                    buttonColor: Colors.cyan,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick),
                ButtonWidget(
                    text:"4",
                    buttonColor: Colors.cyan,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick),
                ButtonWidget(
                    text:"+",
                    buttonColor: Colors.amberAccent,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonWidget(
                    text:"3",
                    buttonColor: Colors.cyan,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick),
                ButtonWidget(
                    text:"2",
                    buttonColor: Colors.cyan,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick),
                ButtonWidget(
                    text:"1",
                    buttonColor: Colors.cyan,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick),
                ButtonWidget(
                    text:"x",
                    buttonColor: Colors.amberAccent,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonWidget(
                    text:"+/-",
                    buttonColor: Colors.redAccent,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick),
                ButtonWidget(
                    text:"0",
                    buttonColor: Colors.redAccent,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick),
                ButtonWidget(
                    text:"00",
                    buttonColor: Colors.cyan,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick),
                ButtonWidget(
                    text:"=",
                    buttonColor: Colors.amberAccent,
                    textColor: Colors.black,
                    fontSize: 24.0,clickbtn: btnClick)
              ],
            )
          ],
        ),
      ),
    );

  }
    }

