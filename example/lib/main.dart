import 'package:app_dimen/app_dimen.dart';
import 'package:flutter/material.dart';

void main() {
  DimenInitializer.init();
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
      home: const AssumingSizeExample(),
    );
  }
}

class AssumingSizeExample extends StatelessWidget {
  const AssumingSizeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: context.dp(200),
          height: context.dp(200),
          padding: EdgeInsets.all(context.dp(24)),
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.circular(context.dp(24)),
          ),
          alignment: Alignment.center,
          margin: EdgeInsets.all(context.dp(24)),
          child: Text(
            "${context.dp(24).toInt()}",
            textAlign: TextAlign.center,
            style: TextStyle(
              // fontWeight: context.boldFontWeight,
              fontSize: context.dp(24),
            ),
          ),
        ),
      ),
    );
  }
}

class WidgetReferenceExample extends StatelessWidget {
  const WidgetReferenceExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: context.scaffoldWidth,
          height: context.scaffoldHeight,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.green,
                        alignment: Alignment.center,
                        height: double.infinity,
                        child: Text(
                          context.dp(32).toStringAsFixed(2),
                          style: TextStyle(
                            fontSize: context.dp(32),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: DimensionalBox<SizeDimen>(
                        primary: false,
                        name: DefaultDimenKeys.fontSize,
                        builder: (context, dimen) {
                          return Container(
                            color: Colors.greenAccent,
                            alignment: Alignment.center,
                            height: double.infinity,
                            child: Text(
                              "$SizeDimen(${dimen.largest})",
                              style: TextStyle(
                                fontSize: dimen.largest,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: DimenLayout(
                  primary: false,
                  builder: (context, data) {
                    ConstraintDimen appbar = data.appbar;
                    ConstraintDimen bottom = data.bottom;
                    ConstraintDimen button = data.button;
                    SizeDimen corner = data.corner;
                    SizeDimen divider = data.divider;
                    SizeDimen fontSize = data.fontSize;
                    WeightDimen fontWeight = data.fontWeight;
                    SizeDimen icon = data.icon;
                    ConstraintDimen image = data.image;
                    SizeDimen indicator = data.indicator;
                    SizeDimen logo = data.logo;
                    SizeDimen margin = data.margin;
                    SizeDimen padding = data.padding;
                    ConstraintDimen scaffold = data.scaffold;
                    SizeDimen size = data.size;
                    SizeDimen spacing = data.space;
                    SizeDimen stroke = data.stroke;
                    return Container(
                      color: Colors.green,
                      alignment: Alignment.center,
                      height: double.infinity,
                      child: Text(
                        "$DimenLayout (${data.dp(32)})",
                        style: TextStyle(
                          fontSize: data.dp(32),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
