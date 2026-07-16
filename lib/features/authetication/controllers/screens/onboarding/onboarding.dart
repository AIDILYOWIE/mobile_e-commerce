import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_ecommerce/features/authetication/controllers/controllers/onboarding/onboarding_controller.dart';
import 'package:mobile_ecommerce/features/authetication/controllers/screens/onboarding/widgets/onbaording_dot_navigation.dart';
import 'package:mobile_ecommerce/features/authetication/controllers/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:mobile_ecommerce/utils/constants/image_strings.dart';
import 'package:mobile_ecommerce/utils/constants/text_strings.dart';

import 'widgets/onbaording_skip.dart';
import 'widgets/onboarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());


    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              // Horizontal Scrollable Pages
              OnBoardingPage(
                image: EImages.onBoardingImage1,
                title: ETexts.onBoardingTitle1,
                subtitle: ETexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: EImages.onBoardingImage2,
                title: ETexts.onBoardingTitle2,
                subtitle: ETexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: EImages.onBoardingImage3,
                title: ETexts.onBoardingTitle3,
                subtitle: ETexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip button
          OnBoardingSkip(),

          // Dot navigation SmoothPageIndicator
          onBoardingDotNavigation(),

          // Circular button
          onBoardingNextButton(),
        ],
      ),
    );
  }
}

