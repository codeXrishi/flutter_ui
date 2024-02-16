import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medicui/utils/category_card.dart';
import 'package:medicui/utils/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFED9ED),
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Rishi',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  //profile picture
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 3, color: Colors.white)),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1599566150163-29194dcaad36?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                      backgroundColor: Colors.black,
                      radius: 20,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            //card => how do you feel
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(14)),
                child: Row(
                  children: [
                    //animation of cute picture
                    Container(
                      height: 100,
                      width: 100,
                      child: Lottie.network(
                          'https://lottie.host/3582286d-2b7f-48bc-852b-955c072ae98f/6xC3YtaGHA.json'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    //how do you feel + get started button
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How do you feel?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Fill out your medical card right now',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(14)),
                            child: Center(
                                child: Text(
                              'Get Stated',
                              style: TextStyle(color: Colors.white),
                            )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 25,
            ),

            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: 'How can we help you?'),
                ),
              ),
            ),

            SizedBox(
              height: 25,
            ),
            //horizontal listview
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    categoryName: 'Dentist',
                    icon: 'lib/icons/tooth.png',
                  ),
                  CategoryCard(
                    categoryName: 'Drugs',
                    icon: 'lib/icons/drugs.png',
                  ),
                  CategoryCard(
                    categoryName: 'surgeon',
                    icon: 'lib/icons/surgeon.png',
                  ),
                  CategoryCard(
                    categoryName: 'Dentist',
                    icon: 'lib/icons/tooth.png',
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            //doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor List',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DoctorCard(
                  doctorImagePath: 'lib/images/doctor1.jpg',
                  doctorName: 'Arlene McCoy',
                  doctorProfession: 'Therapist',
                  rating: '4.9',
                ),
                DoctorCard(
                  doctorImagePath: 'lib/images/doctor2.jpg',
                  doctorName: 'Marina Mastro',
                  doctorProfession: 'Surgeon',
                  rating: '4.5',
                ),
                DoctorCard(
                  doctorImagePath: 'lib/images/doctor3.jpg',
                  doctorName: 'Arlene McCoy',
                  doctorProfession: 'Dentist',
                  rating: '4.7',
                ),
                DoctorCard(
                  doctorImagePath: 'lib/images/doctor4.jpg',
                  doctorName: 'Jorden Kimmy',
                  doctorProfession: 'Psychiatrists',
                  rating: '4.9',
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
