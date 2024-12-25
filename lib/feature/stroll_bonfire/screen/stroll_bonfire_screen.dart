import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroll_bonfire/feature/stroll_bonfire/widget/custom_round_button.dart';
import '../../../utils/utils.dart';

class StrollBonfireScreen extends StatefulWidget {
  const StrollBonfireScreen({super.key});

  @override
  _StrollBonfireScreenState createState() => _StrollBonfireScreenState();
}

class _StrollBonfireScreenState extends State<StrollBonfireScreen> {
  String? selectedOption; // Track the selected option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  AppImages.backgroundImage,
                ),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            const SizedBox(height: 50), // For status bar padding
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Event Title
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Stroll Bonfire',
                          style: Theme.of(context).textTheme.headlineLarge),
                      AppSpacer.W1,
                      SvgPicture.asset(AppImages.dropdown)
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Time and Participants
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppImages.timer),
                      AppSpacer.W1,
                      Text('22h 00m',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: AppColors.white)),
                      AppSpacer.W3,
                      SvgPicture.asset(AppImages.userSmall),
                      AppSpacer.W1,
                      Text('103',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: AppColors.white)),
                    ],
                  ),

                  AppSpacer.H30,
                  // Poll Question
                  Row(
                    children: [
                      SizedBox(
                        child: Image.asset(AppImages.angelinaAvatar),
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Angelina, 28',
                              style: Theme.of(context).textTheme.labelSmall),
                          Text('What is your favorite time\n of the day?',
                              style: Theme.of(context).textTheme.titleLarge),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  Center(
                    child: Text(
                      '"Mine is definitely the peace in the morning."',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            fontStyle: FontStyle.italic,
                            color: AppColors.headlinePurple,
                          ),
                    ),
                  ),

                  // Options in GridView
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2, // 2 columns for the grid
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 2.5, // Adjust aspect ratio for appearance
                    children: [
                      _buildOption('A', 'The peace in the early mornings'),
                      _buildOption('B', 'The magical golden hours'),
                      _buildOption('C', 'Wind-down time after dinners'),
                      _buildOption('D', 'The serenity past midnight'),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // Pick your option text with round FloatingActionButtons
                  Row(
                    children: [
                      Text(
                        'Pick your option.\nSee who has a similar mind.',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const Spacer(),
                      RoundButton(
                        hasBorder: true,
                        icon: AppImages.mic,
                        onTap: () {},
                      ),
                      const SizedBox(width: 10), // Space between buttons
                      RoundButton(
                        hasBorder: false,
                        icon: AppImages.arrow,
                        onTap: () {},
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.card),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.trend),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.chat),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.profile),
            label: '',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.navBlack,
        selectedItemColor: AppColors.ash,
        unselectedItemColor: AppColors.ash,
      ),
    );
  }

  Widget _buildOption(String letter, String text) {
    bool isSelected = selectedOption == letter; // Check if this option is selected
    Color borderColor = isSelected ? AppColors.iconPurple : AppColors.tabGrey;
    Color circleBorderColor = isSelected ? AppColors.iconPurple : Colors.white;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = letter; // Update the selected option when tapped
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8.0), // Add padding around the option
        decoration: BoxDecoration(
          color: AppColors.tabGrey,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: borderColor,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            // Circle around the letter
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: circleBorderColor, width: 2),
              ),
              child: Text(
                letter,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(width: 12), // Spacing between circle and text
            Expanded(
              child: Text(
                text,
                style: const TextStyle(color: Colors.white),
                maxLines: 2, // Limit the text to 2 lines
                overflow: TextOverflow.ellipsis, // Handle text overflow
              ),
            ),
          ],
        ),
      ),
    );
  }
}
