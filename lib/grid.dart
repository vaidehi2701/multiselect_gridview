import 'package:flutter/material.dart';

class Grid extends StatefulWidget {

  final List<String> days;
  final List<int> temp;

  Grid({this.days,this.temp});
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  var type=1;




  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: StatefulBuilder(
        builder: (BuildContext context, StateSetter setState){
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: widget.days.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 3,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                      onTap: () {
                        print(index);
                        setState(() {
//                if(widget.days[index].toString() != widget.temp[index].toString()){
//                 // widget.temp.add(widget.days[index].toString());
//
//                }
                          if(widget.temp.indexWhere((element) => element==index) == -1){
                            widget.temp.add(index);
                            print("add");
                          }
                          else{
                            print("remove");
                            // widget.temp.remove(index);
                          }
                          print(widget.temp.indexWhere((element) => element==index) == 0);
                          print(widget.temp.toString());
//                print(widget.days.toString());
//                for(var i=0; i<widget.days.length;i++){
//                  for(var j=0;j<widget.temp.length;j++){
//                    if(widget.days[i].contains(widget.temp[j].toString())){
//                      type=2;
//                    }
//
//                  }
//                }
//                print(widget.temp[index].toString().contains(widget.days[index].toString()));
//                print(widget.temp.indexWhere((element) {
//                return (element.toString().compareTo(widget.days[index]) == 0);
//                })== 0);
                        });
                      },
                      child: GridTile(
                          child: Text(
                            widget.days[index],
                            style: TextStyle(fontSize: 15,color:widget.temp.indexWhere((element) => element==index) == -1 ? Colors.black:Colors.red),

                          ))
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
