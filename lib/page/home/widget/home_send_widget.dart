import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/color.dart';

class HomeSendWidget extends StatelessWidget {
  const HomeSendWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 50.h,
        width: 250.w,
        margin: EdgeInsets.symmetric(vertical: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.w),
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              spreadRadius: 0.5,
              blurRadius: 3,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(width: 6.w),
            Text(
              'メッセージを送信',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.image_outlined,
              size: 30,
              color: Colors.grey,
            ),
            SizedBox(width: 6.w),
          ],
        ),
      ),
    );
  }
}
