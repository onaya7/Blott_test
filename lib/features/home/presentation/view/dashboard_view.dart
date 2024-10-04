import 'package:blott/core/components/custom_appbar.dart';
import 'package:blott/core/components/custom_emptyitemstate.dart';
import 'package:blott/core/components/custom_loading.dart';
import 'package:blott/core/components/custom_refreshindicator.dart';
import 'package:blott/core/components/custom_scaffold.dart';
import 'package:blott/core/constants/app_color.dart';
import 'package:blott/core/constants/app_size.dart';
import 'package:blott/core/helpers/ui_helpers.dart';
import 'package:blott/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:blott/features/home/presentation/bloc/home_bloc.dart';
import 'package:blott/features/home/presentation/widget/news_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    loadNews();
  }

  loadNews() {
    context.read<HomeBloc>().add(const GetNewsEvent());
  }

  @override
  Widget build(BuildContext context) {
    String formatTimestamp(int timestamp) {
      final dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
      return DateFormat('d MMMM yyyy').format(dateTime);
    }

    return CustomScaffold(
      appBar: CustomAppBar(
        backgroundColor: AppColor.purple,
        title: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, authState) {
            return Expanded(
              child: Text(
                'Hey ${authState.user?.firstName}',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontFamily: 'Raleway',
                      color: AppColor.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                      overflow: TextOverflow.ellipsis,
                    ),
              ),
            );
          },
        ),
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.status == HomeStatus.getNewsError) {
            UiHelpers.showToast('error', state.errorMessage);
          } else if (state.status == HomeStatus.getNewsSuccess) {
            UiHelpers.showToast('success', 'News loaded successfully');
          }
        },
        builder: (context, state) {
          if (state.status == HomeStatus.getNewsLoading) {
            return const CustomLoading(
              title: 'Loading...',
            );
          } else if (state.status == HomeStatus.getNewsError) {
            return CustomScaffold(
              body: Column(
                children: [
                  Container(
                    width: AppSizes.screenWidth(context),
                    color: AppColor.purple,
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                    child: Text('Something went wrong. Please try again later.',
                        style: Theme.of(context).textTheme.labelMedium),
                  ),
                ],
              ),
            );
          } else if (state.news?.isEmpty ?? true) {
            return CustomEmptyItemState(
              title: 'No active news',
              subtitle: 'There are no active news at the moment',
              useTryAgainBtn: true,
              onTap: () => context.read<HomeBloc>().add(const GetNewsEvent()),
            );
          } else {
            return CustomRefreshIndicator(
              onRefresh: () => loadNews(),
              child: Scrollbar(
                controller: _scrollController,
                thickness: 3,
                child: ListView.separated(
                  controller: _scrollController,
                  itemCount: state.news!.length,
                  separatorBuilder: (_, index) => const Gap(10),
                  itemBuilder: (context, index) {
                    final newsItem = state.news![index];
                    return NewsCard(
                      imgPath: newsItem.image ?? '',
                      title: newsItem.source ?? 'The future of work',
                      subtitle: newsItem.summary ??
                          'How to prepare for the future of work',
                      date: formatTimestamp(newsItem.datetime ?? 0),
                    );
                  },
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
