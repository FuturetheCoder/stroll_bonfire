import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroll_bonfire/feature/stroll_bonfire/widget/custom_round_button.dart';
import '../../../utils/utils.dart';

class StrollBonfireScreen extends StatefulWidget {
  const StrollBonfireScreen({super.key});

  @override
  StrollBonfireScreenState createState() => StrollBonfireScreenState();
}

class StrollBonfireScreenState extends State<StrollBonfireScreen> {
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
                fit: BoxFit.fill)),
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
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                            shadows: [
                              Shadow(
                                blurRadius: 2.0,
                                color:
                                    AppColors.headlinePurple.withOpacity(0.5),
                                offset: const Offset(1, 2),
                              ),
                            ],
                          )),
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
                              .copyWith(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold)),
                      AppSpacer.W3,
                      SvgPicture.asset(AppImages.userSmall),
                      AppSpacer.W1,
                      Text('103',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold)),
                    ],
                  ),

                  AppSpacer.H35,
                  SizedBox(
                    width: 200, // Adjust the size of the stack container
                    height: 70,
                    child: Stack(
                      clipBehavior: Clip.none, // Allow content to overflow
                      children: [
                        // Positioned text at the top right corner
                        Positioned(
                          top: -5,
                          right: 45,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal:
                                    12), // Add padding around the option
                            decoration: const BoxDecoration(
                              color: AppColors.blueBlack,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12),
                                topRight: Radius.circular(12),
                              ),
                            ),
                            child: Text('Angelina, 28',
                                style: Theme.of(context).textTheme.labelSmall),
                          ),
                        ),
                        Positioned(
                          top: 25,
                          left: 80,
                          child: Text(
                              'What is your favorite time\n of the day?',
                              style: Theme.of(context).textTheme.titleLarge),
                        ),
                        // Positioned CircleAvatar at the bottom left
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Image.asset(
                            AppImages.angelinaAvatar,
                            width: 90,
                            height: 90,
                          ), // Replace with your image URL
                        ),
                      ],
                    ),
                  ),
                  // Poll Question
                  /* Row(
                    children: [
                      SizedBox(
                        child: Image.asset(AppImages.angelinaAvatar),
                        height: 90,
                        width: 90,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal:
                                    10), // Add padding around the option
                            decoration: BoxDecoration(
                              color: AppColors.tabGrey,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text('Angelina, 28',
                                style: Theme.of(context).textTheme.labelSmall),
                          ),
                          Text('What is your favorite time\n of the day?',
                              style: Theme.of(context).textTheme.titleLarge),
                        ],
                      ),
                    ],
                  ),*/
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
                    crossAxisCount: 2,
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 12,
                    childAspectRatio: 3.4,
                    children: [
                      _buildOption('A', 'The peace in the early mornings'),
                      _buildOption('B', 'The magical golden hours'),
                      _buildOption('C', 'Wind-down time after dinners'),
                      _buildOption('D', 'The serenity past midnight'),
                    ],
                  ),
                  const SizedBox(height: 10),
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
                      const SizedBox(width: 10),
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
    bool isSelected =
        selectedOption == letter; // Check if this option is selected
    Color borderColor = isSelected ? AppColors.iconPurple : AppColors.tabGrey;
    Color circleBorderColor = isSelected ? AppColors.iconPurple : Colors.white;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = letter; // Update the selected option when tapped
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        // Add padding around the option
        decoration: BoxDecoration(
          color: AppColors.tabGrey,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: borderColor,
            width: 1.5,
          ),
          boxShadow: const [
            BoxShadow(
              color: AppColors.tabGrey, // Shadow color with opacity
              spreadRadius: 1, // Spread radius of the shadow
              blurRadius: 1,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Circle around the letter
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: borderColor,
                shape: BoxShape.circle,
                border: Border.all(color: circleBorderColor, width: 2),
              ),
              child: Text(letter,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(color: AppColors.ash)),
            ),
            const SizedBox(width: 12), // Spacing between circle and text
            Expanded(
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppColors.ash, height: 1.0),

                maxLines: 2, // Limit the text to 2 lines for now
                overflow: TextOverflow.ellipsis, // Handle text overflow
              ),
            ),
          ],
        ),
      ),
    );
  }
}
