import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wed_development/view/general-screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('IR', style: TextStyle(fontSize: 50.sp, fontWeight: FontWeight.bold, color: Colors.green.shade900),),),
    );
  }
}
