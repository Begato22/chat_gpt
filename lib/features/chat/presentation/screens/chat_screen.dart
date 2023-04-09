import 'package:chat_gpt/core/utils/app_colors.dart';
import 'package:chat_gpt/core/utils/app_images.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ChatGPTScreen extends StatefulWidget {
  const ChatGPTScreen({super.key});

  @override
  State<ChatGPTScreen> createState() => _ChatGPTScreenState();
}

class _ChatGPTScreenState extends State<ChatGPTScreen> {
  bool _isTyping = true;
  late TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(AppImages.openAi),
            ),
          ),
          title: const Text('ChatGPT'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(EneftyIcons.more_circle_outline),
            ),
          ],
        ),
        body: Column(
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const Text(
                    'data',
                    style: TextStyle(color: Colors.white),
                  );
                },
              ),
            ),
            if (_isTyping)
              SpinKitThreeBounce(
                color: AppColors.whiteColor,
                size: 15.sp,
              ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Material(
                  color: AppColors.secondaryColor,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            style: const TextStyle(color: Colors.white),
                            controller: textEditingController,
                            onSubmitted: (value) {
                              setState(() {
                                _isTyping = false;
                              });
                            },
                            decoration: const InputDecoration(
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: 'How can i help you?',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            EneftyIcons.send_3_bold,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
