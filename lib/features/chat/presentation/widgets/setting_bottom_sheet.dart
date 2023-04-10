import 'package:chat_gpt/core/utils/app_colors.dart';
import 'package:chat_gpt/features/chat/presentation/widgets/dropdown_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingBottomSheet extends StatelessWidget {
  const SettingBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h),
          child: Container(
            height: 5.h,
            width: 0.35.sw,
            decoration: BoxDecoration(color: AppColors.secondaryColor, borderRadius: BorderRadius.circular(20.r)),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Chosen Mode:',
                style: TextStyle(color: Colors.white),
              ),
              DropdownMenuWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
