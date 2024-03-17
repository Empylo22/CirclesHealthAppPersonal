import 'controller/splash_controller.dart';import 'package:empylo/core/app_export.dart';import 'package:flutter/material.dart';class SplashScreen extends GetWidget<SplashController> {const SplashScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, body: SizedBox(width: double.maxFinite, child: CustomImageView(imagePath: ImageConstant.imgSecondaryWhite, height: 59.v, width: 255.h, alignment: Alignment.center)))); } 
 }
