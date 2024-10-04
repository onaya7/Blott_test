import 'package:blott/core/constants/app_color.dart';
import 'package:blott/core/constants/app_size.dart';
import 'package:blott/core/helpers/ui_helpers.dart';
import 'package:blott/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:gap/gap.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.onPressed,
    this.textFontWeight = FontWeight.w600,
    this.textSize = 16,
    this.sufficIconPath,
    this.leadingIconPath,
    this.leadingImagePath,
    this.iconWidth = 18,
    this.suffixIconColor = AppColor.black,
    this.leadingIconColor = AppColor.black,
    this.iconHeight = 18,
    this.hasLeadingIcon = false,
    this.useLeadingImage = false,
    this.hasSuffixIcon = false,
    this.borderColor,
    this.borderRadius = 100,
    this.height = 48,
    this.isLoading = false,
    super.key,
  });
  final String text;
  final Color textColor;
  final double textSize;
  final FontWeight? textFontWeight;
  final String? sufficIconPath;
  final String? leadingIconPath;
  final String? leadingImagePath;
  final double? iconWidth;
  final Color suffixIconColor;
  final Color leadingIconColor;
  final double? iconHeight;
  final bool hasSuffixIcon;
  final bool hasLeadingIcon;
  final Color backgroundColor;
  final bool useLeadingImage;
  final Color? borderColor;
  final double borderRadius;
  final double height;
  final void Function()? onPressed;
  final bool isLoading;

  void _handleButtonPress() {
    UiHelpers.hapticFeedback(FeedbackType.medium);
    if (onPressed != null) {
      // ignore: prefer_null_aware_method_calls
      onPressed!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: AppSizes.screenWidth(context),
      child: ElevatedButton(
        style: ButtonStyle(
          side: WidgetStateProperty.all<BorderSide>(
            BorderSide(
              color: borderColor ?? Colors.transparent,
            ),
          ),
          elevation: WidgetStateProperty.all<double>(0),
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled) || isLoading) {
                return backgroundColor.withOpacity(0.8);
              }
              return backgroundColor;
            },
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        onPressed: isLoading ? null : _handleButtonPress,
        child: isLoading
            ? const Center(
                child: SpinKitThreeBounce(
                  color: AppColor.white,
                  size: 20,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  if (hasLeadingIcon)
                    (useLeadingImage == false)
                        ? SvgPicture.asset(
                            leadingIconPath ??
                                Assets.icons.notificationIcon.path,
                            width: iconWidth,
                            height: iconHeight,
                            colorFilter: ColorFilter.mode(
                              leadingIconColor,
                              BlendMode.srcIn,
                            ),
                          )
                        : Image.asset(
                            leadingImagePath ?? Assets.images.appLogo.path,
                            width: iconWidth,
                            height: iconHeight,
                          ),
                  if (hasLeadingIcon) const Gap(8),
                  Text(
                    text,
                    style: TextStyle(
                      color: textColor,
                      fontSize: textSize,
                      fontWeight: textFontWeight,
                    ),
                  ),
                  if (hasSuffixIcon) const Gap(8),
                  if (hasSuffixIcon)
                    SvgPicture.asset(
                      sufficIconPath ?? Assets.icons.notificationIcon.path,
                      width: iconWidth,
                      height: iconHeight,
                      colorFilter: ColorFilter.mode(
                        suffixIconColor,
                        BlendMode.srcIn,
                      ),
                    ),
                ],
              ),
      ),
    );
  }
}
