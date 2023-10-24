import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.isActive, required this.title, this.onTap});
  final bool isActive;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 44,
        width: (MediaQuery.of(context).size.width - 72) / 3,
        decoration: BoxDecoration(
          color: isActive == true ? kThemeColor : Colors.grey.withOpacity(0.15),
          borderRadius: BorderRadius.circular(8),
        ),
        child: GestureDetector(
          child: InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: onTap,
            // overlayColor: MaterialStateProperty.all(Colors.white),
            highlightColor: kThemeColor.withOpacity(.2),
            splashColor: kThemeColor.withOpacity(0.55),
            // hoverColor: Colors.white,
            child: isActive == true
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 4.5,
                        ),
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.4,
                            fontSize: 13.5,
                          ),
                        ),
                      ],
                    )),
                  )
                : Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.4,
                        fontSize: 13.5,
                      ),
                    ),
                  ),
          ),
        ));
  }
}
