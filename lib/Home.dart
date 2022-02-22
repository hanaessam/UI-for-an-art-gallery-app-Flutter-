import 'package:flutter/material.dart';

import 'GalleryCard.dart';
import 'SmallCard.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backgroundPic.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.settings_outlined,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  )
                ],
              ),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 4,
                      blurRadius: 9,
                      offset: Offset(4.0, 5.0),
                    ),
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/profilePic.jpg'),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'Hana Essam',
                    style: TextStyle(
                      fontFamily: 'Serif',
                      fontWeight: FontWeight.bold,
                      fontSize: 23.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.contacts,
                    color: Colors.deepPurpleAccent,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'SMS: +20 101-312-6232',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallCard('2', 'Unclaimed', Colors.deepPurpleAccent),
                    SizedBox(
                      width: 25.0,
                    ),
                    SmallCard(
                        '\$2,880', 'Monthly Earn', Colors.deepPurple.shade900),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Action Required',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  Container(
                    width: 32.0,
                    height: 32.0,
                    margin: EdgeInsets.only(right: 12.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple.shade900,
                    ),
                    child: Center(
                      child: Text(
                        '18',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Container(
                  width: 200.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 4,
                        blurRadius: 9,
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          margin: EdgeInsets.only(right: 5.0),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                spreadRadius: 2,
                                blurRadius: 9,
                                offset: Offset(1.0, 1.0),
                              ),
                            ],
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.check_circle,
                              color: Colors.green.shade700,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 10.0, bottom: 8.0),
                            child: Row(
                              children: [
                                Text(
                                  'Verify Art Profile',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepPurple.shade900,
                                      fontSize: 16.0),
                                ),
                                SizedBox(
                                  width: 130.0,
                                ),
                                Text('1hr')
                              ],
                            ),
                          ),
                          Text(
                            'New art piece requires your verification',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15.0,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Gallery',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'See all',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  GalleryCard('images/art1.jpg', 'Slouching towards',
                      'Oil, spray paint'),
                  GalleryCard('images/art2.jpeg', 'King Grin', 'Oil on canvas'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
