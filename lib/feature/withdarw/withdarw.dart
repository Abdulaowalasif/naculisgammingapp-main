import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/app_string.dart';
import 'package:naculisgammingapp/feature/withdarw/widgets/withdraw_dialog.dart';

class Withdarw extends StatefulWidget {
  const Withdarw({super.key});

  @override
  State<Withdarw> createState() => _WithdarwState();
}

class _WithdarwState extends State<Withdarw> {
  int selectedTab = 0;
  final List<String> tabs = [
    AppStringEn.Received.tr,
    AppStringEn.Requested.tr,
    AppStringEn.Rejected.tr
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Balance Section
          Container(
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Theme.of(context).primaryColor,
            ),
            width: double.infinity,
            padding: const EdgeInsets.only(top: 60, bottom: 30),
            child: Column(
              children: [
                const Text(
                  "\$12,000",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  AppStringEn.AvailableBalance.tr,
                  style: const TextStyle(color: Colors.white70),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => const WithdrawDialog(),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        AppStringEn.Withdarw.tr,
                        style: TextStyle(
                          color: Colors.orange.shade800,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Activity Title
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 0, 8),
            child: Text(
              AppStringEn.Activity.tr,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.tertiaryFixed,
              ),
            ),
          ),

          // Tabs Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: List.generate(tabs.length, (index) {
                bool isSelected = selectedTab == index;
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTab = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.white : Colors.transparent,
                        border: Border.all(
                          color: isSelected ? Colors.black : Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        tabs[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: isSelected? Colors.black :Theme.of(context).colorScheme.tertiaryFixed,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),

          const SizedBox(height: 10),

          // Transactions
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return buildTransactionCard();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTransactionCard() {
    String statusText;
    Color statusColor;

    switch (selectedTab) {
      case 0:
        statusText = AppStringEn.Received.tr;
        statusColor = Colors.green;
        break;
      case 1:
        statusText = AppStringEn.Pending.tr;
        statusColor = Colors.brown;
        break;
      case 2:
        statusText = AppStringEn.Rejected.tr;
        statusColor = Colors.red;
        break;
      default:
        statusText = "";
        statusColor = Colors.grey;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "# 123A2CC 58J",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            const Text("1st Avenue Slang", style: TextStyle(color: Colors.white)),
            const SizedBox(height: 4),
            const Text("Today - 10 April, 2025", style: TextStyle(color: Colors.white)),
            const SizedBox(height: 8),
            Row(
              children: [
                Image.asset("assets/images/paypal.png", height: 20),
                const Spacer(),
                const Text(
                  "+\$150",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: statusColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    statusText,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
