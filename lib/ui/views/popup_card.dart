import 'package:credpal_test/ui/constants/constants.dart';
import 'package:credpal_test/ui/widgets/custom_container.dart';
import 'package:credpal_test/ui/widgets/custom_rect_tween.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PopupCard extends StatelessWidget {
  const PopupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding:  EdgeInsets.fromLTRB(15.w, 100.h, 15.w, 0),
            child: Hero(
              tag: heroAddTodo,
              createRectTween: (begin, end) {
                return CustomRectTween(begin: begin!, end: end!);
              },
              child: Material(
                color: Colors.white.withOpacity(.9),
                elevation: 2,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40.h,
                              width: 30.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13.r),
                                color: Colors.deepOrange.withOpacity(.1),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.local_fire_department_sharp,
                                  color: Colors.deepOrange,
                                ),
                              ),
                            ),
                            SizedBox(width: 20.w,),
                            Text(
                              'New Workout',
                              style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.h),
                        Text(
                          'Previous',
                          style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(height: 145.h),
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Row(
                            children: [
                              const Icon(Icons.exit_to_app, color: Colors.black54,),
                              SizedBox(width: 10.w),
                              Text(
                                'Close',
                                style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 230.h,
          left: 0,
          right: 0,
          child: SizedBox(
            height: 95.h,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                Material(
                  elevation: 1,
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
                  child: Container(
                    height: 60.h,
                    width: 240.w,
                    padding: EdgeInsets.all(15.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9.r),
                    ),
                    child: Row(
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
                          color: Colors.deepOrange,
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
                              ],
                            ),
                            SizedBox(height: 8.h,),
                            Text(
                              'Recent: Chest & Legs',
                              style: GoogleFonts.poppins(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 2.h,),
                            Text(
                              '8 exercises',
                              style: GoogleFonts.poppins(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.w,),
                Material(
                  elevation: 1,
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
                  child: Container(
                    height: 60.h,
                    width: 240.w,
                    padding: EdgeInsets.all(15.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Row(
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
                                '18',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 23.sp,
                                ),
                              ),
                            ],
                          ),
                          color: Colors.deepPurple,
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
                              ],
                            ),
                            SizedBox(height: 8.h,),
                            Text(
                              'Recent: Chest & Legs',
                              style: GoogleFonts.poppins(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 2.h,),
                            Text(
                              '8 exercises',
                              style: GoogleFonts.poppins(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.w,),
                Material(
                  elevation: 1,
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
                  child: Container(
                    height: 60.h,
                    width: 240.w,
                    padding: EdgeInsets.all(15.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Row(
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
                                '19',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 23.sp,
                                ),
                              ),
                            ],
                          ),
                          color: Colors.deepOrange,
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
                              ],
                            ),
                            SizedBox(height: 8.h,),
                            Text(
                              'Recent: Chest & Legs',
                              style: GoogleFonts.poppins(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 2.h,),
                            Text(
                              '8 exercises',
                              style: GoogleFonts.poppins(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
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
        ),
      ],
    );
  }
}