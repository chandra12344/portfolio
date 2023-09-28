import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:social_media_flutter/social_media_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

class ContactUsDesktopWidget extends StatelessWidget {
  const ContactUsDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 60),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'Contact Me',
          style: TextStyle(fontSize: 40),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            const Text("Email Id: "),
            Text(
              'chandra.prajapati107@gmail.com',
              style: TextStyle(color: AppColors.purple),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Text("Mob No. : "),
            Text(
              '+91 6306011985',
              style: TextStyle(color: AppColors.purple),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
        const Divider(),
        const SizedBox(height: 20),
        const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Coded by Chandraprakash with 💚 in India'),
            ],
          ),
        )
      ]),
    );
  }

  Widget socialIcon(String link, IconData iconPath) {
    return InkWell(
      onTap: () => html.window.open(link, '_blank'),
      child: SocialWidget(
        placeholderText: '',
        iconData: iconPath,
        iconColor: Colors.white,
        link: link,
      ),
    );
  }
}
