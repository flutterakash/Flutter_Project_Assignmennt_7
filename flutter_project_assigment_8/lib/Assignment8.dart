
import 'package:flutter/material.dart';

class Assignment8 extends StatefulWidget{
  const Assignment8 ({super.key});

  @override
  State<Assignment8> createState () => _Assignnment8();

}

class _Assignnment8 extends State<Assignment8> {
  int count = 0;
  List<int> numberList = [1, 225, -777, 121, 111, 234, 999];


  void countPalindrome(){
    count = 0;

    for (int i = 0; i < numberList.length; i++){

      int temp = numberList[i].abs();

      int reverseNum = 0;

      while (temp != 0){
        reverseNum = reverseNum * 10 + temp % 10;
        temp = temp ~/ 10;
      }

      if (reverseNum == numberList[i].abs()){
        count ++;
      }
    }
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment8"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Number List - $numberList"),
            Text(""),
            ElevatedButton(
              onPressed: (){
                countPalindrome();
                setState(() {
                });
              },
             child: const Text("check Palindrome"),
             ),
             const SizedBox(
              height: 20,
             ),
             Text("$count Number are palindrome")
          ],
        ),
      ),
    );
  }

}