import 'dart:io';

void main() {
  //print("ts");
  final inputday1 = File("C:/DEV/Adventofcode/inputday1.jason");
  List<dynamic> Line = inputday1.readAsLinesSync();
  List<dynamic> Linenumberlist = [];
  List<dynamic> overallist = [];

  for (String l in Line) {
    //print(l);
    int lenghtofl = l.length;
    l.toString();
    for (int i = 0; i < lenghtofl; i++) {
      //print(l.length);
      //print(l);

      try {
        int.parse(l[0]);
        Linenumberlist.add(l[0]);
        l = l.substring(1);
        //print(l);
        //print(l.length);
      } catch (error) {
        l.toString();
        if (l.startsWith("one")) {
          Linenumberlist.add(1);
        }
        if (l.startsWith("two")) {
          Linenumberlist.add(2);
        }
        if (l.startsWith("three")) {
          Linenumberlist.add(3);
        }
        if (l.startsWith("four")) {
          Linenumberlist.add(4);
        }
        if (l.startsWith("five")) {
          Linenumberlist.add(5);
        }
        if (l.startsWith("six")) {
          Linenumberlist.add(6);
        }
        if (l.startsWith("seven")) {
          Linenumberlist.add(7);
        }
        if (l.startsWith("eight")) {
          Linenumberlist.add(8);
        }
        if (l.startsWith("nine")) {
          Linenumberlist.add(9);
        } else {}
        l = l.substring(1);
        //print(l);
      }
    }

    ///print("numberlist = $Linenumberlist");
    //print(inputday1);
    Linenumberlist.toString();
    String lastnumber = Linenumberlist[Linenumberlist.length - 1].toString();
    String firstnumber = Linenumberlist[0].toString();
    String lastandfirst = firstnumber + lastnumber;
    print(lastandfirst);
    overallist.add(lastandfirst);
    Linenumberlist.clear();
  }
  int answer = 0;
  for (int i = 0; i <= overallist.length - 1; i++) {
    int number2 = int.parse(overallist[i]);
    answer = answer + number2;
    //print(number2);
    //print(answer);
  }
  print(answer);
}
