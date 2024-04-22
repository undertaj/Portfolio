import 'dart:js';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/widgets/iconbox.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Portfolio',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
          ),
          bodySmall: TextStyle(
            color: Colors.white,
          ),
        ),
        appBarTheme: AppBarTheme(
          color: Color(0xff030609),
        ),

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xff030609),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildHeader(context),
              _buildAboutMe(),
              _buildWhatCanIdo(),
              _buildProjects(),

              _buildContact(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 132.0, right: 132.0),
      color: Color(0xff030609),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Opacity(
                opacity: 0.7,
                child: Container(
                  width: MediaQuery.of(context).size.width - 254,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white70
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xcc393939),
                        Color(0xB3AB93D3),
                      ],
                      stops: [0.0, 1.0],
                    ),
                  ),
                  padding: EdgeInsets.only(left: 40, top: 30),

                  height: 512,
                  child: SizedBox(height: 0,)
                ),
              ),
              Positioned(
                left: 40,
                top: 30,
                child: Row(
                  children: [
                    Container(
                      height: 512,
                      width: MediaQuery.of(context).size.width - 700,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            'Hello,I’m',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26.54,
                              fontFamily: 'Readex Pro',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 40),
                          Text(
                            'Lisha Singh',
                            style: TextStyle(
                              color: Color(0xFFE6E6E6),
                              fontSize: 47.77,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          const SizedBox(height: 5.31),
                          Text(
                            'Flutter Developer',
                            style: TextStyle(
                              color: Color(0xFF56B8FF),
                              fontSize: 23.36,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(height: 60),


                          Text(
                            'As a skilled Flutter developer with one year of experience, I\'m eager to bring creativity and performance to your project. Let\'s connect and discuss how we can work together.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.11,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          SizedBox(height: 60),
                          Container(
                            width: 405,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconBox(value: "github"),
                                  IconBox(value: "gmail"),
                                  IconBox(value: "linkedin"),
                                  IconBox(value: "telegram"),
                                  IconBox(value: "whatsapp"),
                                ]
                            ),
                          ),
                          //     width: 405,
                          //     height: 62.49,
                          //     child: Stack(
                          //       children: [
                          //         Positioned(
                          //           left: 99.51,
                          //           top: 12.73,
                          //           child: Container(
                          //             width: 34.71,
                          //             height: 34.71,
                          //             clipBehavior: Clip.antiAlias,
                          //             decoration: BoxDecoration(),
                          //             child: Stack(children: [
                          //                 Text('Hi'),
                          //                 ]),
                          //           ),
                          //         ),
                          //         Positioned(
                          //           left: 13.89,
                          //           top: 17.36,
                          //           child: Container(
                          //             width: 34.71,
                          //             height: 34.71,
                          //             padding: const EdgeInsets.only(
                          //               top: 1.36,
                          //               left: 2.59,
                          //               right: 2.59,
                          //               bottom: 1.53,
                          //             ),
                          //             clipBehavior: Clip.antiAlias,
                          //             decoration: BoxDecoration(),
                          //             child: Row(
                          //               mainAxisSize: MainAxisSize.min,
                          //               mainAxisAlignment: MainAxisAlignment.center,
                          //               crossAxisAlignment: CrossAxisAlignment.center,
                          //               children: [
                          //               Text('hello'),
                          //               ],
                          //             ),
                          //           ),
                          //         ),
                          //         Positioned(
                          //           left: 185.14,
                          //           top: 12.73,
                          //           child: Container(
                          //             width: 34.71,
                          //             height: 34.71,
                          //             padding: const EdgeInsets.only(
                          //               top: 1.81,
                          //               left: 1.08,
                          //               right: 1.08,
                          //               bottom: 3.25,
                          //             ),
                          //             clipBehavior: Clip.antiAlias,
                          //             decoration: BoxDecoration(),
                          //             child: Row(
                          //               mainAxisSize: MainAxisSize.min,
                          //               mainAxisAlignment: MainAxisAlignment.center,
                          //               crossAxisAlignment: CrossAxisAlignment.center,
                          //               children: [
                          //               Text('Hey'),
                          //               ],
                          //             ),
                          //           ),
                          //         ),
                          //         Positioned(
                          //           left: 270.77,
                          //           top: 12.73,
                          //           child: Container(
                          //             width: 34.71,
                          //             height: 34.71,
                          //             clipBehavior: Clip.antiAlias,
                          //             decoration: BoxDecoration(),
                          //             child: Stack(children: [
                          //                 Text('Bye'),
                          //                 ]),
                          //           ),
                          //         ),
                          //         Positioned(
                          //           left: 356.40,
                          //           top: 12.73,
                          //           child: Container(
                          //             width: 34.71,
                          //             height: 34.71,
                          //             clipBehavior: Clip.antiAlias,
                          //             decoration: BoxDecoration(),
                          //             child: Stack(children: [
                          //                 Text('Goodbye'),
                          //                 ]),
                          //           ),
                          //         ),
                          //         Positioned(
                          //           left: 0,
                          //           top: 0,
                          //           child: Container(
                          //             width: 62.49,
                          //             height: 62.49,
                          //             decoration: ShapeDecoration(
                          //               shape: OvalBorder(
                          //                 side: BorderSide(width: 2, color: Color(0xFF5FBCFF)),
                          //               ),
                          //             ),
                          //           ),
                          //         ),
                          //         Positioned(
                          //           left: 85.63,
                          //           top: 0,
                          //           child: Container(
                          //             width: 62.49,
                          //             height: 62.49,
                          //             decoration: ShapeDecoration(
                          //               shape: OvalBorder(
                          //                 side: BorderSide(width: 2, color: Color(0xFF5FBCFF)),
                          //               ),
                          //             ),
                          //           ),
                          //         ),
                          //         Positioned(
                          //           left: 171.26,
                          //           top: 0,
                          //           child: Container(
                          //             width: 62.49,
                          //             height: 62.49,
                          //             decoration: ShapeDecoration(
                          //               shape: OvalBorder(
                          //                 side: BorderSide(width: 2, color: Color(0xFF5FBCFF)),
                          //               ),
                          //             ),
                          //           ),
                          //         ),
                          //         Positioned(
                          //           left: 342.51,
                          //           top: 0,
                          //           child: Container(
                          //             width: 62.49,
                          //             height: 62.49,
                          //             decoration: ShapeDecoration(
                          //               shape: OvalBorder(
                          //                 side: BorderSide(width: 2, color: Color(0xFF5FBCFF)),
                          //               ),
                          //             ),
                          //           ),
                          //         ),
                          //         Positioned(
                          //           left: 256.89,
                          //           top: 0,
                          //           child: Container(
                          //             width: 62.49,
                          //             height: 62.49,
                          //             decoration: ShapeDecoration(
                          //               shape: OvalBorder(
                          //                 side: BorderSide(width: 2, color: Color(0xFF5FBCFF)),
                          //               ),
                          //             ),
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),

        ],
      ),
    );
  }

  Widget _buildAboutMe() {
    return Container(
      padding: EdgeInsets.only(left: 122.0, right: 122.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Expanded(
                child: Container(// Adjust width as needed
                  height: 2,
                  child: Stack(
                    children: [
                
                      Container(
                        height: 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          // gradient: LinearGradient(
                          //   begin: Alignment.centerLeft,
                          //   end: Alignment.centerRight,
                          //   colors:
                          //     [Colors.blue,]
                          //
                          // ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff86CDFF),
                              blurRadius: 1.0,
                              spreadRadius: 1.0,
                              offset: Offset(1.0, 1.0),
                              blurStyle: BlurStyle.solid
                            ),
                            BoxShadow(
                                color: Color(0xff86CDFF),
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                                offset: Offset(0, 0),
                                // blurStyle: BlurStyle.solid
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                SizedBox(
                width: 220,
                  height: 56,
                  child: Center(
                    child: Text(
                      '"About Me"',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              Expanded(
                child: Container(
                   // Adjust width as needed
                  height: 2,
                  child: Stack(
                    children: [
                
                      Container(
                        height: 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          // gradient: LinearGradient(
                          //   begin: Alignment.centerLeft,
                          //   end: Alignment.centerRight,
                          //   colors:
                          //     [Colors.blue,]
                          //
                          // ),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff86CDFF),
                                blurRadius: 1.0,
                                spreadRadius: 1.0,
                                offset: Offset(1.0, 1.0),
                                blurStyle: BlurStyle.solid
                            ),
                            BoxShadow(
                              color: Color(0xff86CDFF),
                              blurRadius: 5.0,
                              spreadRadius: 2.0,
                              offset: Offset(0, 0),
                              // blurStyle: BlurStyle.solid
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.0),
          Text(
            'I am Lisha Singh, a driven third-year Computer Science undergraduate with a passion for technology and innovation. Currently based in Ghaziabad, UP, I am on a journey to explore and excel in the realm of software development. With a solid foundation in C++ and Java, I have honed my skills in mobile app development using Flutter and Dart, along with a proficiency in web technologies like HTML, CSS, and JavaScript.',
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 16.0,
              height: 1.3,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 12,),
          Text(
            'My recent experience as a Flutter Developer Intern at Magicstep Solutions Private Limited has equipped me with hands-on experience in developing and deploying mobile, desktop, and web applications. During my internship, I adeptly utilized Bloc architecture for state management and integrated cookie management into mobile apps. Additionally, I implemented kot printing functionalities, enhancing the utility of mobile applications for billing, GST, and payments.',
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 16.0,
              height: 1.3,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 12,),
          Text(
            'Prior to this, I contributed to the Blockchain Research Lab in Ghaziabad, UP, where I developed applications using Dart and integrated Postman API for seamless communication with blockchain networks. My role also involved crafting diverse UI designs with precision and managing team dynamics during college-level events.',
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 16.0,
              height: 1.3,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 12,),
          Text(
            'As a Senior Coordinator at Programming Club AKGEC, I actively engage in fostering a culture of innovation and collaboration. From organizing workshops to coding competitions and bootcamps, I thrive in environments that promote learning and growth. Moreover, my project "Saathi" stands testament to my commitment to leveraging technology for social impact, addressing mental health concerns and facilitating open discussions on sexual health within communities.',
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 16.0,
              height: 1.3,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 12,),
          Text(
            'Outside of academia and professional pursuits, I enjoy tackling coding challenges on platforms like Leetcode, Codeforces, and Codechef, where I consistently push my limits and strive for excellence. Notably, I achieved an All India Rank of 4067 in GATE CSE 2024, reflecting my dedication to academic and intellectual pursuits.',
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 16.0,
              height: 1.3,
              letterSpacing: 1,
            ),
          ),

        ],
      ),
    );
  }
  Widget _buildWhatCanIdo() {
    return Container(
      padding: EdgeInsets.only(left: 122.0, right: 122.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(
                width: 400, // Adjust width as needed
                height: 2,
                child: Stack(
                  children: [

                    Container(
                      height: 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        // gradient: LinearGradient(
                        //   begin: Alignment.centerLeft,
                        //   end: Alignment.centerRight,
                        //   colors:
                        //     [Colors.blue,]
                        //
                        // ),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff86CDFF),
                              blurRadius: 1.0,
                              spreadRadius: 1.0,
                              offset: Offset(1.0, 1.0),
                              blurStyle: BlurStyle.solid
                          ),
                          BoxShadow(
                            color: Color(0xff86CDFF),
                            blurRadius: 5.0,
                            spreadRadius: 2.0,
                            offset: Offset(0, 0),
                            // blurStyle: BlurStyle.solid
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 220,
                height: 56,
                child: Center(
                  child: Text(
                    '"About Me"',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Container(
                width: 400, // Adjust width as needed
                height: 2,
                child: Stack(
                  children: [

                    Container(
                      height: 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        // gradient: LinearGradient(
                        //   begin: Alignment.centerLeft,
                        //   end: Alignment.centerRight,
                        //   colors:
                        //     [Colors.blue,]
                        //
                        // ),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff86CDFF),
                              blurRadius: 1.0,
                              spreadRadius: 1.0,
                              offset: Offset(1.0, 1.0),
                              blurStyle: BlurStyle.solid
                          ),
                          BoxShadow(
                            color: Color(0xff86CDFF),
                            blurRadius: 5.0,
                            spreadRadius: 2.0,
                            offset: Offset(0, 0),
                            // blurStyle: BlurStyle.solid
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40.0),
          Container(
            height: 400,
            width: double.infinity,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                ),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                          height: 100,
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white70
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff86CDFF),
                                  blurRadius: 1.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(1.0, 1.0),
                                  blurStyle: BlurStyle.solid
                                ),
                                BoxShadow(
                                  color: Color(0xff86CDFF),
                                  blurRadius: 5.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(0, 0),
                                  // blurStyle: BlurStyle.solid
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xcc393939),
                                  Color(0xB3AB93D3),
                                ],
                                stops: [0.0, 1.0],
                              ),
                            ),
                            padding: EdgeInsets.only(left: 40, top: 30),

                            child: SizedBox(height: 0,)
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 30,
                        child: Container(
                          height: 100,
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text(
                                'Hello,I’m',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26.54,
                                  fontFamily: 'Readex Pro',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }
            ),
          )
        ],
      ),
    );
  }
  Widget _buildProjects() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          _buildProjectItem(
            'Flutter Weather App',
            'A weather application built using Flutter that provides real-time weather information based on user location.',
          ),
          _buildProjectItem(
            'Todo App',
            'A simple todo list application built with Flutter to manage tasks efficiently.',
          ),
          // Add more project items as needed
        ],
      ),
    );
  }

  Widget _buildProjectItem(String title, String description) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.0),
          Text(description),
        ],
      ),
    );
  }

  Widget _buildContact() {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.blueGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Me',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Email: john.doe@example.com',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Phone: +1 123-456-7890',
            style: TextStyle(color: Colors.white),
          ),
          // Add more contact information as needed
        ],
      ),
    );
  }
}
