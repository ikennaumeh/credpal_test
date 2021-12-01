import 'package:credpal_test/ui/constants/constants.dart';
import 'package:credpal_test/ui/views/popup_card.dart';
import 'package:credpal_test/ui/widgets/custom_column_widget.dart';
import 'package:credpal_test/ui/widgets/custom_container.dart';
import 'package:credpal_test/ui/widgets/custom_rect_tween.dart';
import 'package:credpal_test/ui/widgets/hero_dialog_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';



class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20.r,
                      backgroundColor: Colors.white,
                      backgroundImage: const AssetImage("assets/images/photo.png"),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Hello David',
                      style: GoogleFonts.openSans(
                          fontSize: 16.sp, fontWeight: FontWeight.w600),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(HeroDialogRoute(builder: (context) {
                          return const PopupCard();
                        }));
                      },
                      child: Hero(
                        tag: heroAddTodo,
                        createRectTween: (begin, end) {
                          return CustomRectTween(begin: begin!, end: end!);
                        },
                        child: Material(
                          child: Container(
                            height: 40.h,
                            width: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.r),
                              color: Colors.deepOrange,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.local_fire_department_sharp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  children: [
                    Text(
                      'Stats',
                      style: GoogleFonts.openSans(
                          fontSize: 40.sp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Muscles',
                      style: GoogleFonts.openSans(
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
                buildShortLines(5.h, 25.w, Colors.lightBlue),
                SizedBox(
                  height: 30.h,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    '58',
                    style: GoogleFonts.openSans(
                        fontSize: 60.sp, fontWeight: FontWeight.w600),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Workouts completed',
                    style: GoogleFonts.openSans(
                        fontSize: 14.sp, color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: '72.4',
                              style: GoogleFonts.openSans(
                                  fontSize: 35.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            TextSpan(
                              text: 'kg',
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600),
                            )
                          ]),
                        ),
                        Text(
                          'Current Weight',
                          style: GoogleFonts.openSans(
                              fontSize: 11.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Container(
                      color: Colors.grey.withOpacity(.5),
                      height: 50.h,
                      width: 1.w,
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: '7.6',
                              style: GoogleFonts.openSans(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            TextSpan(
                              text: 'kg',
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600),
                            )
                          ]),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 2.h,
                              width: 30.w,
                              color: Colors.deepOrange,
                            ),
                            Container(
                              height: 2.h,
                              width: 50.w,
                              color: Colors.grey[200],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(
                          'Left To Gain',
                          style: GoogleFonts.openSans(
                              fontSize: 11.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomColumnObjects(
                      color: Colors.deepOrange.withOpacity(.1),
                      icon: Icons.flash_on_sharp,
                      iconColor: Colors.deepOrange,
                      prefix: "12.6k",
                      suffix: " cal",
                      subtitle: 'Burned',
                    ),
                    SizedBox(width: 50.w,),
                    CustomColumnObjects(
                      color: Colors.deepPurple.withOpacity(.1),
                      icon: Icons.wc,
                      iconColor: Colors.deepPurple,
                      prefix: "207",
                      suffix: " kg",
                      subtitle: 'Lifted',
                    ),
                    SizedBox(width: 50.w,),
                    CustomColumnObjects(
                      color: Colors.lightBlueAccent.withOpacity(.1),
                      icon: Icons.access_time_filled,
                      iconColor: Colors.blue,
                      prefix: "13",
                      suffix: " weeks",
                      subtitle: 'Training',
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomContainer(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AUG',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18.sp,
                            ),
                          ),
                          Text(
                            '17',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 23.sp,
                            ),
                          ),
                        ],
                      ),
                      color: Colors.blue.withOpacity(.8),
                    ),
                    SizedBox(width: 15.w,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          children: [
                            buildShortLines(2.5.h, 17.w, Colors.deepOrange),
                            SizedBox(width: 3.w,),
                            buildShortLines(2.5.h, 17.w, Colors.deepPurple),
                            SizedBox(width: 2.5.w,),
                            buildShortLines(3.h, 17.w, Colors.blue),
                          ],
                        ),
                        SizedBox(height: 8.h,),
                        Text(
                          'Recent: Chest & Legs',
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Text(
                          '8 exercises',
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 15.w,),
                    CustomContainer(
                      child: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 18,),
                      color: Colors.grey.withOpacity(.2),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
