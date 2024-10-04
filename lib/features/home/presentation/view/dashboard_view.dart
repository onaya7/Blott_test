import 'package:blott/core/components/custom_appbar.dart';
import 'package:blott/core/components/custom_scaffold.dart';
import 'package:blott/core/constants/app_color.dart';
import 'package:blott/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widget/news_card.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    List news = [
      {
        'imgPath': Assets.images.img1.path,
        'title': 'The future of work',
        'subtitle': 'How to prepare for the future of work',
        'date': '2 days ago',
      },
      {
        'imgPath': Assets.images.img2.path,
        'title': 'The future of work',
        'subtitle': 'How to prepare for the future of work',
        'date': '2 days ago',
      },
      {
        'imgPath': Assets.images.img1.path,
        'title': 'The future of work',
        'subtitle': 'How to prepare for the future of work',
        'date': '2 days ago',
      },
    ];
    return CustomScaffold(
        // backgroundColor: AppColor.black,
        appBar: CustomAppBar(
          backgroundColor: AppColor.purple,
          title: Text(
            'Hey {first_name}',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontFamily: 'Raleway',
                  color: AppColor.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 32,
                ),
          ),
        ),
        body: ListView.separated(
          itemCount: news.length,
          separatorBuilder: (context, index) => const Gap(10),
          itemBuilder: (context, index) {
            return Newscard(
              imgPath: news[index]['imgPath'],
              title: news[index]['title'],
              subtitle: news[index]['subtitle'],
              date: news[index]['date'],
            );
          },
        ));
  }
}
