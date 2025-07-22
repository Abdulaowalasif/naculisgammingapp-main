import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/image_icon.dart';
import 'package:naculisgammingapp/core/const/nav_ids.dart';
import 'package:naculisgammingapp/feature/home/widgets/custom_object.dart';
import 'package:naculisgammingapp/feature/home/widgets/custom_positoned.dart';
import 'package:naculisgammingapp/feature/widgets/custom_appbar.dart';

import '../../../routes/route_name.dart';

// Level model
class Level {
  final String name;
  final bool isCompleted;

  Level({required this.name, required this.isCompleted});
}

// Demo level list
final List<Level> demoLevels = [
  Level(name: '1st Street', isCompleted: true),
  Level(name: '2nd Avenue', isCompleted: false),
  Level(name: '3rd Road', isCompleted: false),
  Level(name: '4th Lane', isCompleted: false),
  Level(name: '5th Street', isCompleted: false),
];

class GameLevelScreen extends StatelessWidget {
  const GameLevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: AspectRatio(aspectRatio: 9 / 16, child: RoadScrollView()),
      ),
    );
  }
}

class RoadScrollView extends StatelessWidget {
  const RoadScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final areaHeight = constraints.maxHeight;
        final areaWidth = constraints.maxWidth;
        const double roadWidthRatio = 0.38;
        final double roadWidth = areaWidth * roadWidthRatio;
        final double roadLeft = (areaWidth - roadWidth) / 2;

        return ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(
            overscroll: false,
            scrollbars: false,
          ),
          child: ListView.builder(
            itemCount: demoLevels.length,
            reverse: true,
            itemBuilder: (context, index) {
              final level = demoLevels[index];
              return SizedBox(
                height: areaHeight,
                width: areaWidth,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        ImageAndIconConst.road,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Building (left)
                    CustomPosition(
                      onPress: () {
                        Get.toNamed(RouteName.gameProgress, id: NavIds.home);
                      },
                      left: roadLeft - roadWidth * 0.45,
                      bottom: areaHeight * 0.03,
                      child: Image.asset(
                        width: areaWidth > 600
                            ? roadWidth * 0.9
                            : roadWidth * 0.7,
                        level.isCompleted
                            ? ImageAndIconConst.building
                            : ImageAndIconConst.building2,
                      ),
                    ),
                    // Building (right)
                    CustomPosition(
                      onPress: () {
                        Get.toNamed(RouteName.gameProgress, id: NavIds.home);
                      },
                      left: roadLeft + roadWidth * 0.65,
                      bottom: areaHeight * 0.5,
                      child: Image.asset(
                        width: areaWidth > 600
                            ? roadWidth * 0.9
                            : roadWidth * 0.7,
                        level.isCompleted
                            ? ImageAndIconConst.building
                            : ImageAndIconConst.building2,
                      ),
                    ),
                    // Street sign (right)
                    CustomPosition(
                      bottom: areaHeight * 0.021,
                      left: roadLeft + roadWidth + roadWidth * 0.07,
                      child: CustomObject(
                        image: level.isCompleted
                            ? ImageAndIconConst.streetSign
                            : ImageAndIconConst.streetSignColor,
                        title: level.name,
                      ),
                    ),
                    // Street sign (left)
                    CustomPosition(
                      bottom: areaHeight * 0.31,
                      left: roadLeft + roadWidth * 0.15,
                      child: CustomObject(
                        image: level.isCompleted
                            ? ImageAndIconConst.streetSign
                            : ImageAndIconConst.streetSignColor,
                        title: level.name,
                      ),
                    ),
                    // Speaker (top-center)
                    CustomPosition(
                      top: areaHeight * 0.15,
                      left: roadLeft + roadWidth * 0.25,
                      child: CustomObject(
                        image: ImageAndIconConst.speaker,
                        title: level.name,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
