import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/app_string.dart';
import 'package:naculisgammingapp/core/const/nav_ids.dart';
import 'package:naculisgammingapp/feature/widgets/profile_app_bar.dart';
import '../widgets/custom_dropdown.dart';
import '../widgets/custom_text_field.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final genderOptions = ['Male', 'Female', 'Other'];
    String selectedGender = 'Female';
    String selectedCountry = 'UK';

    return Scaffold(
      appBar: ProfileAppBar(
          onBackPressed: () => Get.back(id: NavIds.profile),
          title: AppStringEn.editProfile.tr),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Profile Image & Edit Icon
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://i.pravatar.cc/150?img=3',
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: IconButton(
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Handle profile image change
                    },
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),
            Text(
              'Kenn Denson',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              'israa123@gmail.com',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontSize: 14),
            ),

            const SizedBox(height: 30),

            // Name Fields
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    label: AppStringEn.yourName.tr,
                    hint: 'Israa',
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomTextField(
                    label: AppStringEn.lastName.tr ?? 'Last Name',
                    hint: 'Khan',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),

            // Email Field
            CustomTextField(
              label: AppStringEn.emailAddress.tr,
              hint: 'israa123@gmail.com',
            ),
            const SizedBox(height: 15),

            // Phone Field
            CustomTextField(
              label: AppStringEn.phone.tr,
              hint: '+44 234 563 45',
            ),
            const SizedBox(height: 15),

            // Gender Dropdown
            CustomDropdown(
              label: AppStringEn.gender.tr,
              items: genderOptions,
              initialValue: selectedGender,
            ),
            const SizedBox(height: 15),

            // Birthday Picker
            CustomTextField(
              label: AppStringEn.Birthday.tr,
              hint: '12/05/1996',
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.calendar_today, color: Colors.grey[700]),
              ),
            ),
            const SizedBox(height: 15),

            // Country Dropdown
            CustomDropdown(
              label: AppStringEn.country.tr,
              items: ['UK', 'USA', 'Canada'],
              initialValue: selectedCountry,
            ),

            const SizedBox(height: 30),

            // Save Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle save action
                },
                child: Text(
                  AppStringEn.save.tr,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
