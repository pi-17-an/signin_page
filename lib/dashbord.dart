// import 'package:flutter/cupertino.dart';
import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:signin_page/profile.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromARGB(255, 148, 73, 156),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 68, 4, 94),
              Color.fromARGB(255, 68, 4, 94)
            ]),
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     items: [
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //       ),
      //       BottomNavigationBarItem(icon: Icon(Icons.menu),
      //       ),
      //       BottomNavigationBarItem(icon: Icon(Icons.person),
      //       ),
      //     ],
      //   ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
              Color.fromARGB(255, 68, 4, 94),
              Color.fromARGB(255, 205, 77, 255)
            ])),
        // padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 130,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleTextWidget('Transformation'),
                  SizedBox(
                    height: 10,
                  ),
                  titleTextWidget('of new ideas'),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(251, 240, 243, 243),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            ),
            // Text(
            //   'Transformation',
            //   style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 25,
            //       fontStyle: FontStyle.italic),
            // ),

            SizedBox(
              height: 50,
            ),
            Container(
              height: 405,
              width: 750,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(1)),
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  helloTextWidget('Hello'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 350,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 194, 219, 181),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListView.builder(
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 130,
                          margin: EdgeInsets.all(15),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Profile()),
                              );
                            },
                            child: Container(
                              height: 130,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 50, 10),
                              child: Row(
                                children: [
                                  // SizedBox(height: 10,),
                                  Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  // Icon(Icons.home,size: 50,color: Colors.green,),
                                  // Icon(Icons.person,size: 50,color: Colors.red)
                                  SizedBox(
                                    width: 15,
                                  ),
                                  //  SizedBox(width: 10,),
                                  Column(
                                    children: [
                                      helloTextWidget('Virat Kohli'),
                                      defaultListSizedBox(),
                                      runTextWidget('Runs'),
                                      defaultListSizedBox(),
                                      runTextWidget('Aversage'),
                                      defaultListSizedBox(),
                                      runTextWidget('Age'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60, //set your height here
          width: double.maxFinite, //set your width here
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(2))),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home_outlined),
                onPressed: () {
//on Presses functionaluty goes here
                },
              ),
              IconButton(
                icon: Icon(Icons.menu_rounded),
                onPressed: () {
//on Presses functionaluty goes here
                },
              ),
              IconButton(
                icon: Icon(Icons.person_sharp),
                onPressed: () {
//on Presses functionaluty goes here
                },
              ),
              //add as many tabs as you want here
            ],
          ),
        ),
      ),
    );
  }
}

Widget titleTextWidget(String title) {
  return Text(
    title,
    style: TextStyle(
      color: Colors.white,
      fontSize: 25,
    ),
  );
}

Widget helloTextWidget(String hello) {
  return Text(
    hello,
    style: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: Colors.purple,
    ),
  );
}

Widget runTextWidget(String run) {
  return Text(
    run,
    style: TextStyle(
      fontSize: 13,
      color: Colors.purple,
    ),
  );
}

defaultListSizedBox() {
  return SizedBox(
    height: 8,
  );
}
