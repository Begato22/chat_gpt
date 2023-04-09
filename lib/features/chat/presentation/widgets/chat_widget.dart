import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_gpt/core/utils/app_colors.dart';
import 'package:chat_gpt/core/utils/app_images.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key, required this.msg, required this.chatIndex});

  final String msg;
  final int chatIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
      child: Row(
        crossAxisAlignment: chatIndex == 0 ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Image.asset(
            chatIndex == 0 ? AppImages.person : AppImages.chat,
            width: 30.w,
            height: 30.w,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: chatIndex == 0 ? AppColors.secondaryColor.withOpacity(0.5) : AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  chatIndex == 0
                      ? Text(
                          msg,
                          style: const TextStyle(color: Colors.white),
                        )
                      : AnimatedTextKit(
                          totalRepeatCount: 1,
                          animatedTexts: [
                            TypewriterAnimatedText(
                              msg,
                              textStyle: const TextStyle(color: Colors.white),
                              speed: const Duration(milliseconds: 10),
                            ),
                          ],
                        ),
                  if (chatIndex == 1) ...[
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        chatIcon(EneftyIcons.like_outline),
                        SizedBox(width: 5.w),
                        chatIcon(EneftyIcons.dislike_outline),
                      ],
                    )
                  ]
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget chatIcon(IconData iconData) {
    return GestureDetector(
      onTap: () {},
      child: Icon(
        iconData,
        color: Colors.white,
        size: 20.sp,
      ),
    );
  }
}
