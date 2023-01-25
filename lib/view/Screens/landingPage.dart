import 'package:carekaro_testapp/view/widget/colors.dart';
import 'package:flutter/material.dart';


class landingPage extends StatelessWidget {
  landingPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 10,),
            Image.asset('assets/logoIcons/carekarologo.png'),
            Image.asset('assets/logoIcons/Doctor.png'),
          ],
        )
      ),
    );
  }
}