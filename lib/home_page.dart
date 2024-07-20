import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(103),
        child: Container(
          padding: const EdgeInsets.only(left: 24.0,right:24.0, top: 30),
          color: const Color(0xffFFF6FF),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/back.svg'),
                      SizedBox(width: 17),
                      const SizedBox(
                        height: 32.78,
                        child: Text('Radiology',
                          style: TextStyle(
                            color: Color(0xff201926),
                            fontSize: 24,

                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      IconButton(
                        icon: SvgPicture.asset('assets/images/heart.svg'),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: SvgPicture.asset('assets/images/share.svg'),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Image.asset('assets/images/ostello.png', width: 37, height: 37,),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],

              ),
              TabBar(
                controller: TabController(length: 3, vsync: this),
                tabs: const [
                  Tab(
                    text: 'Overview',
                  ),
                  Tab(
                    text: 'Marketplace',
                  ),
                  Tab(
                    text: 'News',
                  ),
                ],
                labelStyle: const TextStyle(
                  color: Color(0xff7D23E0),
                  fontSize: 16,

                  fontWeight: FontWeight.w800,
                ),

                indicator: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color(0xff7D23E0),
                        Color(0xff490087)
                      ]
                  ),
                  color: Colors.transparent,
                  border: Border(

                      bottom: BorderSide(
                        color: Color(0xff490087),
                        width: 2,
                        style: BorderStyle.solid,

                      )
                  ),
                ),
                indicatorSize: TabBarIndicatorSize.tab,

              )
            ],
          ),
        )
        // child: AppBar(
        //
        //   backgroundColor: const Color(0xffFFF6FF),
        //   title: const SizedBox(
        //     height: 32.78,
        //     child: Text('Radiology',
        //       style: TextStyle(
        //         color: Color(0xff201926),
        //         fontSize: 24,
        //
        //         fontWeight: FontWeight.w800,
        //       ),
        //     ),
        //   ),
        //
        //   leading: IconButton(
        //     icon: SvgPicture.asset('assets/images/back.svg'),
        //     onPressed: () {},
        //   ),
        //
        //   actions: [
        //     IconButton(
        //       icon: SvgPicture.asset('assets/images/heart.svg'),
        //       onPressed: () {},
        //     ),
        //     IconButton(
        //       icon: SvgPicture.asset('assets/images/share.svg'),
        //       onPressed: () {},
        //     ),
        //     IconButton(
        //       icon: Image.asset('assets/images/ostello.png'),
        //       onPressed: () {},
        //     ),
        //   ],
        //   bottom: PreferredSize(
        //     preferredSize: Size.fromHeight(40),
        //     child: Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 24.0),
        //       child: TabBar(
        //         controller: TabController(length: 3, vsync: this),
        //         tabs: const [
        //           Tab(
        //             text: 'Overview',
        //           ),
        //           Tab(
        //             text: 'Marketplace',
        //           ),
        //           Tab(
        //             text: 'News',
        //           ),
        //         ],
        //         labelStyle: const TextStyle(
        //           color: Color(0xff7D23E0),
        //           fontSize: 16,
        //
        //           fontWeight: FontWeight.w800,
        //         ),
        //
        //         indicator: const BoxDecoration(
        //           gradient: LinearGradient(
        //             colors: [
        //               Color(0xff7D23E0),
        //               Color(0xff490087)
        //             ]
        //           ),
        //           color: Colors.transparent,
        //           border: Border(
        //
        //             bottom: BorderSide(
        //                 color: Color(0xff490087),
        //                 width: 2,
        //               style: BorderStyle.solid,
        //
        //             )
        //           ),
        //         ),
        //         indicatorSize: TabBarIndicatorSize.tab,
        //
        //       )
        //     ),
        //   ),
        // ),
      ),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0,right: 24.0, top: 16),
          child: ListView.separated(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),

                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/img.jpeg',
                            height: 146,
                            width: 132,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            height: 146,
                            width: 132,
                            decoration: BoxDecoration(
                              // color: Color(0xffD9D9D9),
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff000000).withOpacity(0),
                                  Color(0xff000000).withOpacity(0.67),
                                ]
                              ),
                            ),
                            child: SizedBox(),
                          ),
                          Positioned(
                            left: 6,
                              top: 6.93,
                            child: Container(
                              padding: const EdgeInsets.only(left: 8, top: 1.5, bottom: 1.5, right: 2.5),
                              decoration: BoxDecoration(
                                color:Color(0xff0070CE),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child:
                              Row(
                                children: [
                                  const Text('Verified', style: TextStyle(color: Colors.white,  fontWeight: FontWeight.w800),),
                                  Image.asset( 'assets/images/verified.png', height: 20, width: 20, )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 8,
                            bottom: 5.07,
                            child: Container(
                              color: Colors.transparent,
                              child:
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text('50% off',
                                    style: TextStyle(
                                        color: Colors.white,

                                      fontSize: 19,
                                      fontWeight: FontWeight.w900,

                                    ),
                                  ),
                                  Text('UPTO ₹1000',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),

                                        fontSize: 12,
                                      fontWeight: FontWeight.w800,

                                    ),),

                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            right: 8.54,
                            bottom: 8,
                            child: SvgPicture.asset(
                                'assets/images/like.svg',
                              height: 19.46,
                              width: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                     Container(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(width: 4,),
                          const SizedBox(
                            height: 24,
                            child: Text('Shiska Coaching Center',
                              style: TextStyle(
                                color: Color(0xff201926),
                                fontSize: 16,

                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/images/star.svg'),
                              SizedBox(width: 5),
                              const Text(
                                '4.5',
                                  style: TextStyle(
                                    color: Color(0xff4C4452),
                                    fontSize: 12,

                                    fontWeight: FontWeight.w800,
                                  )
                              ),
                              SizedBox(width: 4),
                              const Text(
                                  '(100+ Rating)',
                                style: TextStyle(
                                  color: Color(0xff4C4452),
                                  fontSize: 12,

                                  fontWeight: FontWeight.w800,

                                )
                              )
                            ],
                          ),
                          SizedBox(height: 12),
                          const Row(
                            children: [
                              Text('All Subjects',
                                style: TextStyle(
                                  color: Color(0xff4C4452),
                                  fontSize: 13,

                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              SizedBox(width: 4,),
                              Text('.', style: TextStyle(
                                color: Color(0xff757575),
                                fontSize: 14,

                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.5,
                                height: 1,
                              ),),
                              SizedBox(width: 4,),
                              Text('Com',
                                style: TextStyle(
                                  color: Color(0xff4C4452),
                                  fontSize: 13,

                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              SizedBox(width: 4,),
                              SizedBox(
                                height: 21,
                                child: Text('.', style: TextStyle(
                                  color: Color(0xff757575),
                                  fontSize: 14,

                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                ),),
                              ),
                              SizedBox(width: 4,),
                              Text('Sci',
                                style: TextStyle(
                                  color: Color(0xff4C4452),
                                  fontSize: 13,

                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5,
                                ),
                              ),

                            ]
                          ),
                          SizedBox(height: 4),
                          const Row(
                            children: [
                              Text('Kalkaji',
                                style: TextStyle(
                                  color: Color(0xff4C4452),
                                  fontSize: 13,

                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              SizedBox(width: 4,),
                              SizedBox(
                                height: 21,
                                child: Text('.', style: TextStyle(
                                  color: Color(0xff757575),
                                  fontSize: 14,

                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                ),),
                              ),
                              SizedBox(width: 4,),
                              Text('3 kms away',
                                style: TextStyle(
                                  color: Color(0xff4C4452),
                                  fontSize: 13,

                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5,
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 13),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                            height: 24,
                              decoration: BoxDecoration(
                                color: Color(0xffF6F6F6),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: const Text('View Details',
                                  style: TextStyle(
                                    color: Color(0xff7D23E0),
                                    fontSize: 12,

                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                          ),



                        ]
                      )
                    )
                  ],
                )
              );
            },
            separatorBuilder: (context, index) {
              return  Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Divider(color: Color(0xff4C4452).withOpacity(0.2),height: 1,)
              );
            }
          ),
        )
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 60,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/banner.jpeg'),
                fit: BoxFit.cover,
                opacity: 0.2,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage('assets/images/banner.jpeg'),
              //   fit: BoxFit.cover,
              // ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff23A7E0),
                  Color(0xff24FF00).withOpacity(0),
                ]),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                )
            ),
            child: const Center(
              child: FittedBox(
                child: Column(
                  children: [
                    Text('Getting guidance has now become easy',
                      style: TextStyle(
                        color: Color(0xff201926),
                        fontSize: 14,

                      ),
                    ),
                    FittedBox(
                      child: Row(
                        children: [
                          Text('12+', style: TextStyle(
                            color: Color(0xff201926),
                            fontSize: 14,

                            fontWeight: FontWeight.w900,
                          ),),
                          SizedBox(width: 4),
                          Text('coaching centers nearby', style: TextStyle(
                            color: Color(0xff201926),
                            fontSize: 14,

                          ),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}
