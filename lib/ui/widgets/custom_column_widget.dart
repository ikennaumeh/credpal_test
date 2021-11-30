import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomColumnObjects extends StatelessWidget {
  final Color color, iconColor;
  final IconData icon;
  final String prefix, suffix, subtitle;

  const CustomColumnObjects({
    Key? key,
    required this.color,
    required this.icon,
    required this.prefix,
    required this.suffix,
    required this.subtitle,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 25.r,
          backgroundColor: color,
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text: prefix,
              style: GoogleFonts.openSans(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            TextSpan(
              text: suffix,
              style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600),
            )
          ]),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          subtitle,
          style: GoogleFonts.openSans(
              fontSize: 11.sp, color: Colors.grey, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}