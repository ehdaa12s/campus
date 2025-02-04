import 'package:champs/features/statistics_screen/ui/widget/achievements_card.dart';
import 'package:champs/features/statistics_screen/ui/widget/statistics_card.dart';
import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'الاحصائيات',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            // GridView as a Sliver
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, index) {
                  return const CompletedSessionsCard(
                    percentage: 80.0,
                    completedSessions: 50,
                  );
                },
                childCount: 4, // Adjust the number of cards as needed
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 cards per row
                crossAxisSpacing: 10, // Space between columns
                mainAxisSpacing: 10, // Space between rows
                childAspectRatio: 1, // Aspect ratio for each card
                mainAxisExtent: 100,
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 15)),
            // Title for Achievements
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'انجازاتي',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
            // ListView for Achievements
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, index) {
                  return AchievementsCard(index: index);
                },
                childCount: 5, // Adjust the number of cards as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
