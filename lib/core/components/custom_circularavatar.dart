import 'package:blott/core/constants/app_color.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomCircularAvatar extends StatelessWidget {
  final String imageUrl;
  final double radius;

  final Color backgroundColor;
  final Color iconColor;
  final double iconSize;

  const CustomCircularAvatar({
    super.key,
    required this.imageUrl,
    this.radius = 40,
    this.backgroundColor = Colors.grey,
    this.iconColor = Colors.black,
    this.iconSize = 80,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              backgroundColor: AppColor.black,
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) => const Icon(
                        Icons.error,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Close',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        width: radius * 2,
        height: radius * 2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          imageBuilder: (context, imageProvider) => CircleAvatar(
            radius: radius,
            backgroundImage: imageProvider,
          ),
          placeholder: (context, url) => Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: CircleAvatar(
              radius: radius,
              backgroundColor: backgroundColor,
            ),
          ),
          errorWidget: (context, url, error) => CircleAvatar(
            radius: radius,
            backgroundColor: backgroundColor,
            child: Icon(
              Icons.account_circle,
              color: iconColor,
              size: iconSize,
            ),
          ),
        ),
      ),
    );
  }
}
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:shimmer/shimmer.dart';

// class CustomCircularAvatar extends StatelessWidget {
//   final String imageUrl;
//   final double radius;

//   final Color backgroundColor;
//   final Color iconColor;
//   final double iconSize;

//   const CustomCircularAvatar({
//     super.key,
//     required this.imageUrl,
//     this.radius = 40,
//     this.backgroundColor = Colors.grey,
//     this.iconColor = Colors.black,
//     this.iconSize = 80,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: radius * 2,
//       height: radius * 2,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.2),
//             spreadRadius: 5,
//             blurRadius: 7,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: CachedNetworkImage(
//         imageUrl: imageUrl,
//         imageBuilder: (context, imageProvider) => CircleAvatar(
//           radius: radius,
//           backgroundImage: imageProvider,
//         ),
//         placeholder: (context, url) => Shimmer.fromColors(
//           baseColor: Colors.grey.shade300,
//           highlightColor: Colors.grey.shade100,
//           child: CircleAvatar(
//             radius: radius,
//             backgroundColor: backgroundColor,
//           ),
//         ),
//         errorWidget: (context, url, error) => CircleAvatar(
//           radius: radius,
//           backgroundColor: backgroundColor,
//           child: Icon(
//             Icons.account_circle,
//             color: iconColor,
//             size: iconSize,
//           ),
//         ),
//       ),
//     );
//   }
// }
