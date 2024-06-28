import 'package:app_dimen/app_dimen.dart';
import 'package:flutter/material.dart';

void main() {
  Dimen.init(
    padding: const DimenConfig(
      mobile: SpacingDimens(
        medium: 25,
      ),
    ),
    corner: const DimenConfig(
      mobile: RadiusDimens(
        medium: 25,
      ),
    ),
    dimens: [
      const DimenConfigData(
        name: "box",
        config: DimenConfig(
          mobile: SizeDimens(
            maxWidth: 120,
            maxHeight: 120,
          ),
        ),
      ),
      // ... add more as you like
    ],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP DIMEN',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final boxDimen = context.sizeDimenOf("box");
    final borderRadius = context.corners.medium;
    final padding = context.paddings.normal;
    return Scaffold(
      body: Center(
        child: Container(
          width: boxDimen.maxWidth,
          height: boxDimen.maxHeight,
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
