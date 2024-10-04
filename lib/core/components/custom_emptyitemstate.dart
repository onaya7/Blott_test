import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constants/app_color.dart';
import '../constants/app_size.dart';
import 'custom_button.dart';

class CustomEmptyItemState extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final bool useTryAgainBtn;
  final Function()? onTap;

  const CustomEmptyItemState({
    required this.title,
    required this.subtitle,
    this.icon = Icons.hourglass_empty,
    this.useTryAgainBtn = false,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.screenHeight(context) * 0.5,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 70,
            color: AppColor.text400,
          ),
          const Gap(10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColor.textHeader,
            ),
          ),
          const Gap(10),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColor.textBody,
            ),
          ),
          if (useTryAgainBtn)
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
              child: CustomButton(
                text: 'try again',
                textColor: AppColor.artboard,
                backgroundColor: AppColor.primary,
                onPressed: onTap,
              ),
            )
        ],
      )),
    );
  }
}
