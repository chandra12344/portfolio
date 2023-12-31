import 'package:akshit_madan/design/constants/app_constants.dart';
import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:akshit_madan/design/widgets/app_image_widget.dart';
import 'package:flutter/material.dart';

class TechstackMobileWidget extends StatelessWidget {
  const TechstackMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // RichText(
            //   textAlign: TextAlign.center,
            //   text: TextSpan(
            //       style: const TextStyle(
            //           color: Colors.white, fontFamily: 'Preah', fontSize: 24),
            //       children: [
            //         const TextSpan(
            //             text:
            //                 'I have attained expertise in an array of cutting-edge '),
            //         TextSpan(
            //             text: 'tech stacks ',
            //             style: TextStyle(color: AppColors.purple)),
            //         const TextSpan(
            //             text:
            //                 'empowering me to craft seamless and innovative solutions.'),
            //       ]),
            // ),
            // const SizedBox(height: 20),
            Container(
              // width: ,
              child: const Text(
                "My Core Technology",
                 textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Wrap(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        techStackImages.length,
                        (index) => techStackCircle(
                            techStackImages.values.toList()[index]))),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget techStackCircle(String imagePath) {
    return Container(
      margin: const EdgeInsets.all(6),
      height: 54,
      width: 54,
      padding: const EdgeInsets.all(8),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: AppColors.violet),
      child: AppImageWidget(
        path: imagePath,
      ),
    );
  }
}
