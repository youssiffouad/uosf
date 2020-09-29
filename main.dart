import 'package:flutter/material.dart';

void main()
{
  runApp(myapp());
}
//cell expresses each block that carry either x or o
class cell
{
  Color cellclr;
  var text;
  bool enabled;
  int index;

  cell({cellclr =Colors.red, text =' ',index ,enabled = true});
}



class myapp extends StatefulWidget {
  @override
  _myappState createState() => _myappState();
}
class _myappState extends State<myapp> {

  
  // error:: a non null string must be provided toa text widget, i don' know why!!!

  Positioned cellpos(double x, double y , int i)
  {
   cell c = cell(cellclr: Colors.yellow, text: ' ', enabled: true, index: i);
  return  Positioned(
  height: 116.6,
  width: 116.6,
  left: x,
  top: y,
  child: RaisedButton(
        color: c.cellclr,
        child: Text(
        (c.text),
        style: TextStyle(
         color: Colors.green
         ),
                  ),
           onPressed: (){
                setState(() {
                    c.cellclr= Colors.green;
                    c.text= 'lkmlk';
                            });
  },
  ) ,
  );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'xo game',
      home: Scaffold(
        appBar: AppBar(
          title: Text('xo game', style: TextStyle(color: Colors.yellow),),

        ),
        body: Center(
          child: Container(
            width: 420,
            height: 600,
            margin: EdgeInsets.only(top: 50,bottom: 0),
            color: Color(0xf81768ac),
            child: Stack(
                children: [
                 cellpos(20,115.1 ,1),
                  cellpos(146.6, 115.1,2),
                  cellpos(273.2, 115.1,3),

                  cellpos(20,241.7,4),
                  cellpos(146.6, 241.7,5),
                  cellpos(273.2, 241.7,6),

                  cellpos(20,368.3,7),
                  cellpos(146.6, 368.3,8),
                  cellpos(273.2, 368.3,9),
                ],

              ),

          ),
        )
      ),
    );

  }
}
