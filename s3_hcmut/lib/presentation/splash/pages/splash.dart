import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:s3_hcmut/core/configs/assets/app_images.dart';
import 'package:s3_hcmut/core/configs/assets/app_vectors.dart';
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Hình ảnh đầu tiên
          Positioned(
            left: 76,  // Khoảng cách từ trái
            top: 241,  // Khoảng cách từ trên xuống
            child: Image.asset(
              AppImages.logo,
              width: 268,  // Chỉnh kích thước ảnh nếu cần
              height: 192,
            ),
          ),

          // Hình ảnh thứ hai
          Positioned(
            left: 161, // Khoảng cách từ phải
            top: 625,  // Khoảng cách từ trên xuống
            child: Image.asset(
             AppImages.iconic_logo,
              width: 96, // Kích thước ảnh khác
              height: 68,
            ),
          ),

          // Văn bản
          Positioned(
            left: 0,  // Khoảng cách từ trái
            top: 600, // Khoảng cách từ dưới lên
            child: Image.asset(
              AppImages.bottom_logo,
              width: 412, // Kích thước ảnh khác
              height: 268
            ),
          ),
        ],
      ),
    );
  }
}
