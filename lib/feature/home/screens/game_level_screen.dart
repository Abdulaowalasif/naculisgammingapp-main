import 'package:flutter/material.dart';
import 'package:naculisgammingapp/core/const/image_icon.dart';
import 'package:naculisgammingapp/feature/home/screens/progress_screen.dart';
import 'package:naculisgammingapp/feature/home/widgets/custom_object.dart';
import 'package:naculisgammingapp/feature/home/widgets/custom_positoned.dart';

class GameLevelScreen extends StatelessWidget {
  const GameLevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: RoadScrollView());
  }
}

class RoadScrollView extends StatelessWidget {
  const RoadScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    double usableHeight = screenHeight - 203;

    bool isCompleted = true;
    final List<Map<String, dynamic>> levels = [{}, {}, {}];
    int length = (levels.length / 2).ceil();

    return ListView.builder(
      itemCount: length,
      reverse: true,
      itemBuilder: (context, index) {
        return SizedBox(
          height: usableHeight,
          width: screenWidth,
          child: Stack(
            children: [
              // Road background
              Positioned.fill(
                child: Image.asset(
                  Theme.of(context).brightness == Brightness.dark
                      ? ImageAndIconConst.roadDark
                      : ImageAndIconConst.roadLight,
                  fit: BoxFit.fitHeight,
                ),
              ),

              // Building 1 (bottom-left)
              CustomPosition(
                onPress: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ProgressScreen()),
                  );
                },
                left: screenWidth * 0.22, // ~80 on 360 width
                bottom: screenHeight * 0.025, // ~20 on 800 height
                child: Image.asset(
                  isCompleted
                      ? ImageAndIconConst.building
                      : ImageAndIconConst.building2,
                  repeat: ImageRepeat.repeatY,
                ),
              ),

              // Building 2 (upper-right)
              CustomPosition(
                onPress: () {},
                right: screenWidth * 0.22, // ~80 on 360 width
                bottom: screenHeight * 0.44, // ~350 on 800 height
                child: Image.asset(
                  isCompleted
                      ? ImageAndIconConst.building
                      : ImageAndIconConst.building2,
                  repeat: ImageRepeat.repeatY,
                ),
              ),

              // 5th Street
              CustomPosition(
                bottom: screenHeight * 0.021, // ~17
                right: screenWidth * 0.125, // ~45
                child: CustomObject(
                  image: ImageAndIconConst.streetSign,
                  title: '5th\nStreet',
                ),
              ),

              // 4th Avenue
              CustomPosition(
                bottom: screenHeight * 0.31, // ~250
                left: screenWidth * 0.33, // ~120
                child: CustomObject(
                  image: ImageAndIconConst.streetSignColor,
                  title: '4th\nAvenue',
                ),
              ),

              // 2nd Street
              CustomPosition(
                top: screenHeight * 0.15, // ~120
                left: screenWidth * 0.36, // ~130
                child: CustomObject(
                  image: ImageAndIconConst.speaker,
                  title: '2nd\nStreet',
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
