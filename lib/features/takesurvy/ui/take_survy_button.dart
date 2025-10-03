import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/helpers/spacing.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';
import 'package:stock_market/core/widgets/app_drawer.dart';
import 'package:stock_market/core/widgets/class_bar_green.dart';
import 'package:stock_market/core/widgets/home_medium_bar.dart';
import 'package:stock_market/core/widgets/home_top_bar.dart';
import 'package:stock_market/features/takesurvy/ui/widgets/polloption.dart';
import 'package:stock_market/core/widgets/scroll_top_button.dart';
import 'package:stock_market/core/widgets/share_button.dart';
import 'package:stock_market/core/widgets/silver_home_medium_bar.dart';

class TakeSurvyButton extends StatefulWidget {
  const TakeSurvyButton({super.key});

  @override
  State<TakeSurvyButton> createState() => _TakeSurvyButtonState();
}

class _TakeSurvyButtonState extends State<TakeSurvyButton> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  int? selectedIndex;
  bool hasVoted = false;
  final List<Map<String, dynamic>> options = [
    {"title": "To be left fixed (50%)", "percent": 57.6, "votes": 7001},
    {"title": "Increase by 0.5%", "percent": 30.2, "votes": 2100},
  ];
  void _submitVote() {
    if (selectedIndex == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("⚠️ يرجى اختيار خيار أولاً")),
      );
      return;
    }
    setState(() {
      hasVoted = true; // ✅ بمجرد ما يصوت يختفي الزر
    });
    final selected = options[selectedIndex!];
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("✅ تم التصويت لـ: ${selected['title']}")),
    );

    // هنا ممكن تستدعي API وترسل selectedIndex أو selected["title"]
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      backgroundColor: ColorsManager.whiteback,
      body: SafeArea(
        child: Stack(
          children: [
            CustomScrollView(
              controller: _scrollController,
              slivers: [
                /// ✅ شريط علوي ثابت
                SliverAppBar(
                  pinned: true,
                  automaticallyImplyLeading: false,
                  backgroundColor: ColorsManager.white,
                  elevation: 0,
                  flexibleSpace: const HomeTopBar(),
                  expandedHeight: 60.h, // حسب ارتفاع HomeTopBar
                  collapsedHeight: 60,
                ),

                /// ✅ شريط متوسط ثابت
                SliverPersistentHeader(
                  pinned: true,
                  delegate: SliverHeaderDelegate(
                    minHeight: 60.h,
                    maxHeight: 60.h,
                    child: HomeMediumBar(),
                  ),
                ),
                SliverToBoxAdapter(child: ClassBarGreen(title: 'Poll', icon: Icons.account_box_outlined,)),
                SliverToBoxAdapter(child: verticalSpace(20)),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(
                      color: ColorsManager.white,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/MTB.png',
                            width: 367.w,
                            height: 191.h,
                          ),
                          verticalSpace(10),
                          Center(
                            child: Text(
                              'What will be the Central Bank`s interest\n           rate decision in November?',
                              style: TextStyles.font15BlackBold,
                            ),
                          ),
                          verticalSpace(41),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: options.length,
                              itemBuilder: (context, index) {
                                final opt = options[index];
                                return PollOption(
                                  isSelected: selectedIndex == index,
                                  title: opt["title"],
                                  percent: opt["percent"],
                                  votes: opt["votes"],
                                  onTap: () {
                                    if (!hasVoted) {
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                    }
                                  },
                                );
                              },
                            ),
                          ),
                          if (!hasVoted)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 69.w,
                                  height: 37.h,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: ColorsManager.darkgreen,
                                      padding: EdgeInsets.all(8.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(11),
                                      ),
                                    ),
                                    onPressed: _submitVote,
                                    child: Text(
                                      "VOTE",
                                      style: TextStyles.font14whitereguler,
                                    ),
                                  ),
                                ),
                                verticalSpace(10),
                                Text(
                                  'There were a total of 12717 participants in this\nsurvey',
                                ),
                                verticalSpace(10),
                               ShareButton(),
                              ],
                            ),
                          verticalSpace(100),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ScrollToTopButton(scrollController: _scrollController),
          ],
        ),
      ),
    );
  }
}
