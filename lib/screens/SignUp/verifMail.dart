import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/AppTheme.dart';


class VerificationMailPage extends StatelessWidget {
  final List<TextEditingController> _controllers = List.generate(4, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: Size(375, 812), // Taille de conception de base (largeur, hauteur)
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    SizedBox(height: 20.h),
                    Center(
                      child: Image.asset(
                        "assets/images/logo_rent_me-removebg-preview 2.png",
                        width: 50.w,
                        height: 50.h,
                      ),
                    ),
                    SizedBox(height: 50.h),
                    Center(
                      child: Image.asset(
                        "assets/images/img_3.png",
                        width: 150.w,
                        height: 150.h,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Vérification d’adresse E-mail',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Vous venez de recevoir un code sur votre adresse e-mail suivante:'
                          'nou********@gmail.com',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: AppTheme.accentColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 32.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(4, (index) {
                        return Container(
                          width: 0.12.sw, // Adjusted to be proportional to screen width
                          height: 0.12.sw, // Keeping it square by using same proportion
                          child: TextField(
                            controller: _controllers[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 24.sp),
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            decoration: InputDecoration(
                              counterText: '',
                              fillColor: AppTheme.grisTextField, // Background color of the text field
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(color: AppTheme.primaryColor),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 30.h),
                    TextButton(
                      onPressed: () {
                        // Action d'envoi d'un autre code
                      },
                      child: Text(
                        'Envoyer un autre code',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                          color: AppTheme.primaryColor,

                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Action d'envoi d'un autre code
                      },
                      child: Text(
                        'Changer la méthode de verification ?',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,

                          color: AppTheme.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
