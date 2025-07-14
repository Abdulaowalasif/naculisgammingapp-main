import 'package:flutter/material.dart';
import 'package:naculisgammingapp/core/const/image_icon.dart';
import 'package:naculisgammingapp/feature/leader_board/widgets/leaderboard_header.dart';

import '../widgets/leader_board_card.dart';

class LeaderBoardScreen extends StatelessWidget {
  const LeaderBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          LeaderboardHeader(),
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) {
                return LeaderboardCard(
                  rank: index + 1,
                  avatarUrl: ImageAndIconConst.chatbot,
                  name: 'Alex Heaily',
                  score: "20'000",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
