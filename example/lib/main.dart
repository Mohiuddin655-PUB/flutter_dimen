import 'package:app_dimen/app_dimen.dart';
import 'package:flutter/material.dart';

void main() {
  Dimen.init(
    padding: DefaultConfigs.padding,
    corner: const DimenConfig(
      mobile: SizeDimens.corner(
        normal: 20,
        //  ... ADD MORE
      ),
      //  ... ADD MORE
    ),
    //  ... ADD MORE
    dimens: [
      DimenConfigData(
        name: "box_constraints",
        config: DimenConfig(
          // MOBILE ALL BOX CONSTRAINTS AS SAME
          mobile: ConstraintDimens.all(
            width: 223.7,
            height: 190.5,
          ),
          // DESKTOP ALL BOX CONSTRAINTS AS DEFERENCE
          desktop: const ConstraintDimens(
            normal: ConstraintDimen(
              width: 43.7,
            ),
            medium: ConstraintDimen(
              minHeight: 100,
            ),
            //  ... ADD MORE
          ),
        ),
      ),
      const DimenConfigData(
        name: "label_font_sizes",
        config: DimenConfig(
          watch: SizeDimens.font(
            normal: 12,
            medium: 14,
            large: 20,
            small: 10,
            //  ... ADD MORE
          ),
          mobile: SizeDimens.font(
            normal: 14,
            medium: 16,
            large: 24,
            small: 12,
            //  ... ADD MORE
          ),
          desktop: SizeDimens.font(
            normal: 16,
            medium: 18,
            large: 26,
            small: 14,
            //  ... ADD MORE
          ),
          //  ... ADD MORE
        ),
      ),
      DimenConfigData(
        name: "label_font_weights",
        config: DimenConfig(
          mobile: WeightDimens(
            normal: WeightDimen.from(FontWeight.w400),
            bold: WeightDimen.from(FontWeight.w700),
            //  ... ADD MORE
          ),
          desktop: WeightDimens(
            normal: WeightDimen.from(FontWeight.w500),
            bold: WeightDimen.from(FontWeight.w800),
            //  ... ADD MORE
          ),
          //  ... ADD MORE
        ),
      ),
      //  ... ADD MORE
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
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: DimenLayout(
                    builder: (context, dimen) {
                      return Container(
                        color: Colors.green,
                        alignment: Alignment.center,
                        height: double.infinity,
                        child: Text(dimen.screen.normal.toString()),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ResponsiveDimenLayout(
                    builder: (context, dimen) {
                      return Container(
                        color: Colors.red,
                        alignment: Alignment.center,
                        height: double.infinity,
                        child: Text(dimen.screen.normal.toString()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ResponsiveDimen<SizeDimens>(
              name: "label_font_sizes",
              initial: const SizeDimens.font(),
              builder: (context, dimen) {
                return Container(
                  color: Colors.red,
                  alignment: Alignment.center,
                  height: double.infinity,
                  child: Text(dimen.normal.toString()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
