import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/nav_ids.dart';
import 'package:naculisgammingapp/feature/contact_refer/contact_us.dart';
import 'package:naculisgammingapp/feature/contact_refer/refer_a_friend.dart';
import 'package:naculisgammingapp/feature/notifications/notification.dart';
import 'package:naculisgammingapp/feature/user_profile/screens/edit_profile_screen.dart';
import 'package:naculisgammingapp/feature/user_profile/screens/personal_info_screen.dart';
import 'package:naculisgammingapp/feature/user_profile/screens/profile_screen.dart';
import 'package:naculisgammingapp/feature/withdarw/withdarw.dart';
import 'package:naculisgammingapp/routes/route_name.dart';

class ProfileNavigator extends StatelessWidget {
  const ProfileNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final canPop = Get.nestedKey(NavIds.profile)?.currentState?.canPop() ?? false;
        if (canPop) {
          Get.nestedKey(NavIds.profile)?.currentState?.pop();
          return false;
        }
        return true;
      },
      child: Navigator(
        key: Get.nestedKey(NavIds.profile),
        initialRoute: RouteName.userProfile,
        onGenerateRoute: (settings) {
          if(settings.name==RouteName.userProfile){
            return MaterialPageRoute(builder: (context) => const ProfileScreen(),);
          }else if(settings.name==RouteName.userProfileEdit){
            return MaterialPageRoute(builder: (context) => const EditProfileScreen(),);
          }else if(settings.name==RouteName.personalInfo){
            return MaterialPageRoute(builder: (context) => const PersonalInfoScreen(),);
          }else if(settings.name==RouteName.withdraw){
            return MaterialPageRoute(builder: (context) => const Withdarw(),);
          }else if (settings.name==RouteName.referFriend){
            return MaterialPageRoute(builder: (context) => const ReferFriend(),);
          }else if (settings.name==RouteName.contactUs){
            return MaterialPageRoute(builder: (context) => const ContactUs(),);
          }else if(settings.name==RouteName.notification){
            return MaterialPageRoute(builder: (context) => const NotificationsScreen(),);
          }


          return null;
        },
      ),
    );
  }
}
