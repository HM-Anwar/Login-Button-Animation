import 'package:flutter/material.dart';
import 'package:loading_overlay_pro/animations/bouncing_line.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {Key? key,
      required this.isLoading,
      required this.onPress,
      required this.icon,
      required this.title})
      : super(key: key);

  final bool isLoading;
  final Function() onPress;
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
        width: isLoading ? 70 : 310,
        child: MaterialButton(
          onPressed: () => onPress(),
          minWidth: 310,
          padding: const EdgeInsets.all(12),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isLoading
                    ? const LoadingBouncingLine.circle(
                        size: 24,
                      )
                    : Image.asset(
                        icon,
                      ),
                const SizedBox(width: 12.0),
                isLoading
                    ? Container()
                    : Text(
                        title,
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
