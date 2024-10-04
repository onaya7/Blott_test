import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Newscard extends StatelessWidget {
  final String imgPath;
  final String title;
  final String subtitle;
  final String date;
  const Newscard({
    required this.imgPath,
    required this.title,
    required this.subtitle,
    required this.date,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, top: 20, right: 24),
      child: Row(
        children: <Widget>[
          Image.asset(
            imgPath,
            width: 100,
            height: 100,
          ),
          const Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontFamily: 'Rubik',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    Text(
                      date,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontFamily: 'Rubik',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
