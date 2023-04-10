import 'package:chat_gpt/core/utils/app_colors.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<String> itemsMenu = [
  'Model1',
  'Model2',
  'Model3',
  'Model4',
  'Model5',
  'Model6',
];

List<DropdownMenuItem<String>>? get getDropMenuItem {
  return List<DropdownMenuItem<String>>.generate(
    itemsMenu.length,
    (index) => DropdownMenuItem(
      value: itemsMenu[index],
      child: Text(itemsMenu[index]),
    ),
  );
}

class DropdownMenuWidget extends StatefulWidget {
  const DropdownMenuWidget({super.key});

  @override
  State<DropdownMenuWidget> createState() => _DropdownMenuWidgetState();
}

class _DropdownMenuWidgetState extends State<DropdownMenuWidget> {
  var _currentValue = 'Model1';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      alignment: Alignment.topLeft,
      borderRadius: BorderRadius.circular(20.r),
      dropdownColor: AppColors.primarySwatch,
      iconEnabledColor: AppColors.whiteColor,
      items: getDropMenuItem,
      icon: Icon(
        EneftyIcons.arrow_bottom_bold,
        size: 15.sp,
      ),
      value: _currentValue,
      underline: const SizedBox(),
      onChanged: (value) {
        setState(() {
          _currentValue = value!;
        });
      },
    );
  }
}
