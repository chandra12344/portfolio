import 'package:akshit_madan/design/constants/app_images.dart';
import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:social_media_flutter/social_media_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

class IntroMobileWidget extends StatelessWidget {
  const IntroMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          // const Align(
          //   alignment: Alignment.topCenter,
          //   child: RiveAnimation.asset(AppAnimations.introAnimation),
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 64,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(AppImages.selfImage),
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Preah',
                        fontSize: 24,
                        height: 1),
                    children: [
                      TextSpan(
                          text: 'Chandraprakash Prajapati ',
                          style: TextStyle(color: AppColors.purple))
                    ]),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialIcon('https://instagram.com/chandraprakash6551?igshid=MzMyNGUyNmU2YQ==',
                        SocialIconsFlutter.instagram),
                    socialIcon('https://github.com/chandra12344',
                        SocialIconsFlutter.github),
                    socialIcon(
                        'https://www.linkedin.com/in/chandraprakash-prajapati-341b0a210',
                        SocialIconsFlutter.linkedin_box),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'A Solopreneur,',
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 14),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: const TextStyle(
                        color: Colors.white,
                        height: 1.4,
                        fontFamily: 'Preah',
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                    children: [
                      const TextSpan(text: 'Crafting code to bring '),
                      const TextSpan(text: 'ideas to '),
                      TextSpan(
                          text: 'life',
                          style: TextStyle(color: AppColors.purple)),
                      const TextSpan(text: '...')
                    ]),
              ),
              const SizedBox(height: 40),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "I'm a Software Engineer at Javin",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Preah', fontSize: 16),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget socialIcon(String link, IconData iconPath) {
    return InkWell(
      onTap: () => html.window.open(link, '_blank'),
      child: SocialWidget(
        placeholderText: '',
        iconData: iconPath,
        iconSize: 20,
        iconColor: Colors.white,
        link: link,
      ),
    );
  }
}
