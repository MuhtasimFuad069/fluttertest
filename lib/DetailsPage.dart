import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'বিস্তারিত বিবরণ',
          style: TextStyle(
            fontSize: 23,
            color: Color.fromARGB(255, 10, 21, 117),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                    constraints:
                                                        BoxConstraints(),
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
                                            color: Color.fromARGB(179, 226, 226,
                                                226), // set text color to white
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      top: -10,
                                      right: 0,
                                      child: IconButton(
                                        icon: Icon(Icons.notifications_none,
                                            color: Color.fromARGB(
                                                255, 224, 224, 224)),
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
                          padding: EdgeInsets.all(30),
                          width: double.infinity,
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
                                    fontSize: 24), // set desired font size
                              ),
                              Text(
                                'হাতের মুঠোয়',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24), // set desired font size
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 100,
                    //color: Colors.orangeAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'সিপিএইচ এর স্বাস্থ্যসেবা এখন',
                          style: TextStyle(
                            color: Color.fromARGB(255, 10, 21, 117),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        //SizedBox(height: 10),
                        Text(
                          'হাতের মুঠোয়',
                          style: TextStyle(
                            color: Color.fromARGB(255, 10, 21, 117),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 100,
                    //color: Colors.lightBlueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'বাংলাদেশ পুলিশের কর্মীদের জন্য সিপিএইচ (সেন্ট্রাল পুলিশ হাসপাতাল) একটি নতুন স্বাস্থ্যসেবা প্রদানের দিকে এগিয়েছে এবং এটি এখন হাতের মুঠোয় পাওয়া যায়। এই সেবার মাধ্যমে পুলিশ কর্মীরা এবং তাদের পরিবারের সুস্থ জীবন উন্নত করতে পারছেন।',
                          style: TextStyle(
                            fontSize: 13, // set text color to white
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 40,
                    //color: Colors.lightBlueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'কীভাবে সেবা প্রদান হচ্ছে?',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 10, 21, 117),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 150,
                    //color: Colors.lightBlueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'সিপিএইচ এর স্বাস্থ্যসেবা এখন একটি ব্যক্তিগতাধীন এবং হাতের মুঠোয় সহজব্যবহার হয়েছে। পুলিশ কর্মীরা এখন তাদের আইডি বা রেজিস্ট্রেশন মাধ্যমে অ্যাপ্লিকেশনে সাইন আপ করতে পারছেন। ডাটাবেস চেকের পর, একবার রেজিস্টার হলে এপ্লিকেশনে লগইন করার জন্য ওটির জন্য একটি ওটিপি (OTP) প্রেরণ হয়। এভাবে, ব্যক্তিগত সংজ্ঞার মাধ্যমে বিভিন্ন সেবার জন্য প্রবেশ প্রদান হয়।',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 40,
                    //color: Colors.lightBlueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'কোন সেবাগুলি পাওয়া যায়?',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 10, 21, 117),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 80,
                    //color: Colors.lightBlueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ডাক্তারের জন্য নিয়োগ: পুলিশ কর্মীরা এপ্লিকেশনে ডাক্তারের সাথে অভিজ্ঞানের জন্য নিয়োগ করতে পারে এবং তাদের মাধ্যমে হাসপাতালের বিভিন্ন বিশেষজ্ঞতা পেতে পারে।',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 80,
                    //color: Colors.lightBlueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'প্রস্ক্রিপশন: হাসপাতালে চিকিৎসা নেওয়ার পর, পুলিশ কর্মীরা এপ্লিকেশনের মাধ্যমে প্রস্ক্রিপশন দেখতে পারে এবং এটি থেকে ঔষধ প্রয়োজন অনুসারে অর্ডার করতে পারে।',
                          style: TextStyle(
                            fontSize: 13, // set text color to white
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 60,
                    //color: Colors.lightBlueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'অ্যাম্বুলেন্স কল: আপনার জরুরী চিকিৎসা প্রয়োজন হলে, এপ্লিকেশন দিয়ে অ্যাম্বুলেন্স কল করতে পারেন।',
                          style: TextStyle(
                            fontSize: 13, // set text color to white
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 80,
                    //color: Colors.lightBlueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ঔষধ অর্ডার: ডাক্তারের পরামর্শের ভিত্তিতে, নির্ধারিত ঔষধ এপ্লিকেশন দিয়ে অর্ডার করতে পারেন এবং এটি পোস্টের মাধ্যমে প্রাপ্ত করতে পারেন।',
                          style: TextStyle(
                            fontSize: 13, // set text color to white
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

  //সমাপ্তির মন্তব্য'