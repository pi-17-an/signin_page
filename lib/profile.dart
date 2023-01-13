import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.purple,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            color: Colors.purple,
            onPressed: () {},
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(100)),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.red),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Donate',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            labelltListSizedBox(),
            viratTextWidget('Virat Kohli'),
            // Text(
            //   'Virat Kohli',
            //   style: TextStyle(
            //     fontSize: 30,
            //     fontWeight: FontWeight.bold,
            //     color: Colors.black,
            //   ),
            // ),
            textltListSizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                titleTextWidget('Runs'),
                titleTextWidget('Average'),
                titleTextWidget('Age'),
              ],
            ),
            textltListSizedBox(),
            titleTextWidget('Title'),
            defaultListSizedBox(),
            profileTextWidget(
                'Hi @all requesting you to connect your wifi in Pirai infra.... WHY5 and why5 will not connect for few minutes.'),
            labelltListSizedBox(),
            titleTextWidget('Gallery'),
            defaultListSizedBox(),
            SingleChildScrollView(
              child: SizedBox(
                  height: 150,
                  child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            // height: 20,
                            width: 150,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.green,
                            ),
                          ))),
            ),
            labelltListSizedBox(),
            titleTextWidget('Story'),
            defaultListSizedBox(),
            profileTextWidget(
                'Hi @all requesting you to connect your wifi in Pirai infra.... WHY5 and why5 will not connect for few minutes.')
          ],
        ),
      ),
    );
  }
}

Widget viratTextWidget(String virat) {
  return Text(
    virat,
    style: TextStyle(
      fontSize: 25,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget titleTextWidget(String title) {
  return Text(
    title,
    style: TextStyle(
      fontSize: 18,
      color: Colors.purple,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget profileTextWidget(String profile) {
  return Text(
    profile,
    style: TextStyle(
      fontSize: 13,
      color: Colors.purple,
    ),
  );
}

defaultListSizedBox() {
  return SizedBox(
    height: 10,
  );
}

labelltListSizedBox() {
  return SizedBox(
    height: 20,
  );
}

textltListSizedBox() {
  return SizedBox(
    height: 40,
  );
}
