import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomWalletCard extends StatelessWidget {
  const CustomWalletCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kThemeColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Positioned(
                top: -20,
                left: -10,
                child: CircleAvatar(
                  radius: 66,
                  backgroundColor: Colors.white.withOpacity(0.2),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(
                      flex: 3,
                    ),
                    Text(
                      '4,000 DZD',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 32,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      'Total Expenses',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(
                      flex: 4,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/images/cartoon money bag-png.webp',
            width: 148,
          ),
        ],
      ),
    );
  }
}
