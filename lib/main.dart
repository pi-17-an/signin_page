import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
import 'package:signin_page/dashbord.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: const Color.fromARGB(255, 205, 77, 255)),
    debugShowCheckedModeBanner: false,
    home: const Signpage(),
  ));
}

class Signpage extends StatelessWidget {
  const Signpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromARGB(255, 68, 4, 94),
                Color.fromARGB(255, 205, 77, 255)
              ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            imageltListSizeBox(),
            Image.asset('images/logo.jpg'),
           nameltListSizedBox(),
            titleTextWidget('Great ideas'),
            nameltListSizedBox(),
            titleTextWidget('Powerful'),
            nameltListSizedBox(),
            titleTextWidget('Opportunities'),
            imageltListSizeBox(),
            textFieldWidget("User Name"),
            nameltListSizedBox(),
            textFieldWidget("Pasword"),
            Padding(
              padding: const EdgeInsets.only(left: 90, right: 90),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  nameltListSizedBox(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Don t have an account?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            // Center(
            //   child: Text(
            //     'Don t have an account?',
            //     style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       color: Colors.green,
            //     ),
            //   ),
            // ),
            // Center(
            //   child: Text(
            //     'Sign in',
            //     style: TextStyle(
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dashboard()),
                );
              },
              child: Container(
                alignment: Alignment.center,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(255, 245, 244, 247),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 130, //set your height here
          width: double.maxFinite, //set your width here
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(2))),
          child: Row(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.facebook_outlined),
                onPressed: () {
//on Presses functionaluty goes here
                },
              ),
              IconButton(
                icon: Icon(Icons.facebook_rounded),
                onPressed: () {
//on Presses functionaluty goes here
                },
              ),
              IconButton(
                icon: Icon(Icons.facebook_sharp),
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

Widget textFieldWidget(String title) {
  return Container(
    width: 250,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: Color.fromARGB(255, 148, 73, 156),
    ),
    child: TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        label: Center(
          child: Text(
            title,
          ),
        ),
        labelStyle: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}

nameltListSizedBox() {
  return SizedBox(
    height: 10,
  );
}

imageltListSizeBox() {
  return SizedBox(
    height: 90,
  );
}