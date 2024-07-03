import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:fluttertest/DetailsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Flutter Test'),
        //   centerTitle: true,
        // ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(29),
                    child: Container(
                      height: 60,
                      color: Color.fromARGB(255, 9, 17, 92),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                                'assets/images.png'), // Replace with your image URL
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          constraints: BoxConstraints(
                                            maxHeight:
                                                30, // Set your desired height
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                'নাজমুল ছাকিব',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors
                                                      .white, // set text color to white
                                                ),
                                              ),
                                              IconButton(
                                                icon: Icon(
                                                    Icons.arrow_drop_down,
                                                    color: Colors
                                                        .white), // dropdown icon
                                                onPressed: () {
                                                  // Handle dropdown button press
                                                },
                                                constraints: BoxConstraints(),
                                                padding: EdgeInsets
                                                    .zero, // Remove extra padding
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'বিপি নং ঃ NA12345',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color.fromARGB(
                                          179, 226, 226,
                                          226, // set text color to white
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: -10,
                                  right: 0,
                                  child: IconButton(
                                    icon: Icon(Icons.notifications_none,
                                        color:
                                            Color.fromARGB(255, 224, 224, 224)),
                                    onPressed: () {
                                      // Handle notification button press
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                        20), // Make the container circular
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                      height: 145,
                      color: Color.fromARGB(255, 57, 51, 139),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'স্বাস্থ্যসেবা এখন',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          Text(
                            'হাতের মুঠোয়',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24), // set desired font size
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: 140, // set your desired width
                            height: 23, // set your desired height
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsPage()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 167, 180,
                                    240), // set your desired background color
                              ),
                              child: Text(
                                'বিস্তারিত দেখুন',
                                style: TextStyle(
                                    color: Colors.black), // set text color
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // space between text and button
              children: [
                Text(
                  'চলমান প্রেসক্রিপশন',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromARGB(255, 20, 19, 82)),
                ),
                SizedBox(
                  height: 25,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => SecondPage()),
                      // );
                    },
                    child: Text(
                      'সব দেখুন',
                      style: TextStyle(
                          color: Color.fromARGB(
                              255, 16, 15, 65)), // set text color
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: 157,
                color: Color.fromARGB(255, 179, 230, 236),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 8), // spacing between icon and text
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                Icon(Icons.description, color: Colors.black),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'প্রেসক্রিপশন',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 12, 13, 83),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                                SizedBox(
                                    width:
                                        150), // Add space between the text and the button
                                SizedBox(
                                  height: 20,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => SecondPage()),
                                      // );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromARGB(
                                          255,
                                          131,
                                          202,
                                          204), // set the background color of the button
                                    ),
                                    child: Text(
                                      'সর্বশেষ',
                                      style: TextStyle(
                                        color: Color.fromARGB(
                                          255,
                                          1,
                                          1,
                                          3,
                                        ), // set text color
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Text(
                                'বিভাগ ঃ মেডিসিন',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Text(
                                'রোগী ঃ নাজমুল ছাকিব (বিপি নং - 12345)',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Text(
                                'রোগীর আইডি ঃ L23568',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Text(
                                '10 জানুয়ারী, 2024',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ),
                            SizedBox(
                                height: 10), // spacing between text and button
                            SizedBox(
                              width: 150, // set your desired width
                              height: 25, // set your desired height
                              child: Padding(
                                padding: EdgeInsets.only(left: 30),
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => SecondPage()),
                                    // );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 9, 8, 68),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.remove_red_eye,
                                          color: Colors.white), // eye icon
                                      SizedBox(
                                          width:
                                              8), // spacing between icon and text
                                      Text(
                                        'দেখুন',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // space between text and button
              children: [
                Text(
                  'চলমান মেডিসিন',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromARGB(255, 20, 19, 82)),
                ),
                SizedBox(
                  height: 25,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => SecondPage()),
                      // );
                    },
                    child: Text(
                      'সব দেখুন',
                      style: TextStyle(
                        color:
                            Color.fromARGB(255, 16, 15, 65), // set text color
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 90,
                color: Color.fromARGB(255, 194, 207, 245),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // SizedBox(width: 15), // spacing between icon and text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Icon(Icons.medical_services, color: Colors.black),
                            SizedBox(width: 5),
                            Text(
                              'Rosuva 5mg',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Text(
                                'সময়কাল',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                '১ মাস',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'ডোজ',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              '১ + ০ + ১',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   width: 20,
                        // ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'নির্দেশনা',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  'খাবার পরে',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                              width: 125,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => SecondPage()),
                                  // );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromARGB(255, 172, 198,
                                      255), // set the background color of the button
                                ),
                                child: Text(
                                  'নাজমুল ছাকিব',
                                  style: TextStyle(
                                    color: Color.fromARGB(
                                      255,
                                      1,
                                      1,
                                      3,
                                    ),
                                    fontSize: 12, // set text color
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // space between text and button
              children: [
                Text(
                  'ইনভেস্টিগেশন রিপোর্ট',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromARGB(255, 20, 19, 82)),
                ),
                SizedBox(
                  height: 25,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => SecondPage()),
                      // );
                    },
                    child: Text(
                      'সব দেখুন',
                      style: TextStyle(
                        color:
                            Color.fromARGB(255, 16, 15, 65), // set text color
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 170,
                color: Color.fromARGB(255, 184, 228, 219),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.description,
                                    color: Colors.black), // prescription icon
                                SizedBox(
                                    width: 8), // spacing between icon and text
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Urine R/E',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 33),
                              child: Text(
                                'বিভাগ ঃ প্যাথলজি',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 33),
                              child: Text(
                                'রোগী ঃ সানযিদা (স্ত্রী)',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 33),
                              child: Text(
                                'ল্যাব আইডি ঃ L23568',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 33),
                              child: Text(
                                '10 জানুয়ারী,2024',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.only(left: 33),
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.start, // Center the buttons
                            children: [
                              SizedBox(
                                height: 30,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => SecondPage()),
                                    // );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 46, 43, 223),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          10), // adjust the border radius as needed
                                    ), // set your desired background color
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.description,
                                          color: Colors
                                              .white), // prescription icon
                                      SizedBox(
                                          width:
                                              4), // spacing between icon and text
                                      Text(
                                        'রিপোর্ট ট্র্যাক',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 8), // spacing between buttons
                              SizedBox(
                                height: 30,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => SecondPage()),
                                    // );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 184, 184, 184),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          12), // adjust the border radius as needed
                                    ), // set your desired background color
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.remove_red_eye,
                                          color: Colors
                                              .white), // prescription icon
                                      SizedBox(
                                          width:
                                              4), // spacing between icon and text
                                      Text(
                                        'দেখুন',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    //       ],
    //     ),
    //   ),
    // );
  }

//   DetailsPage() {}
}
