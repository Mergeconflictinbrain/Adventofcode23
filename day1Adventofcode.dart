


import 'dart:io';
void main (List<String> arguments) async{   
  try {
    final Stopwatch stopwatch = Stopwatch()..start(); 
    final inputday1 = File("C:/DEV/Adventofcode/inputday1.jason");
    List <dynamic> currentlines = [];
    List <dynamic> currendpoint = [];
    List <dynamic> rowlist = [];
    List <dynamic> overalllist =[];
    List <dynamic> alllistnumbers =[];
    List <dynamic> lines = inputday1.readAsLinesSync();

    lines.toString();
    //print(lines);
    for (var l in lines) {
      currentlines.add(l);
      //print("currentline = $currentlines");
      //print(currendpoint);c:\$Recycle.Bin\S-1-5-21-3877294282-1317440901-4197738977-1001\$RXPSYWQ.dart
      for(int i = 0; i < l.length ; i++){
        l.split(" ");
        //print("-----newpoint-----");
        //print("2.curretnpoint[i] = ${l[i]}");
        //await Future.delayed(const Duration(seconds: 1));
        try{
          currendpoint.add(l[i]);
          //print("3.currenpoint= $l");
          try{
            int number = int.parse(l[i]);
            //print(number);
            l[i].toString();
            rowlist.add(l[i]);
          }catch(Exception){
            //print("4.Parsingerror");
          }
          //print("5. numberinrow = $numberinrow");          
          //print("rowlist = $rowlist");
          //summe = summe + number;
          //print(summe);
        }catch(Exception){
          //print("no int fount in ${currendpoint[i]}");
        } 
        
      }
     
      dynamic firstandlasnumber = rowlist.elementAt(0) + rowlist.elementAt(rowlist.length -1);
      //.add(rowlist.elementAt(0));
      //overalllist.add(rowlist.elementAt(rowlist.length -1 ));
      overalllist.add(firstandlasnumber);
      //print("6. overallist = $overalllist");
      //print( "7. Alllistnumbers = $alllistnumbers");
      currentlines.clear();
      alllistnumbers.clear();
      rowlist.clear();

    }
    int answer = 0;
    for(int i = 0; i <= overalllist.length -1; i++ ){ 
      int number2 = int.parse(overalllist[i ]);
      answer =  answer + number2;
      //print(number2);
      //print(answer);
    }
    print("Elapsed time: ${stopwatch.elapsedMilliseconds} ms"); // Stoppe die Stoppuhr
  
    //int firstnumber = int.parse(overalllist[0]);
    //print(firstnumber + answer );
    print(answer);
  }catch (Exception)
  {
    print(Exception.toString());
    print("ERROR");
    
  }
  
}