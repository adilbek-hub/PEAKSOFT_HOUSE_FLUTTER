import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sabak_15_bmi_calculator/features/presentation/constants/app_text_styles.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return Card(
              shadowColor: Colors.white,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
              color: const Color(0xff0b0120),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Card(
                      color: Colors.blueGrey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Colors.white,
                                size: 25,
                              ),
                              SizedBox(width: 15),
                              Text(
                                'Ден соолук индекси ( BMI)',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child:
                              Text('Жыйынтык', style: AppTextStyles.heighStyle),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 58,
                        ),
                        Container(
                          width: width,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              const Text(
                                'Нормалдуу',
                                style: TextStyle(
                                  color: Color(0xff08E82C),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 36,
                              ),
                              const Text(
                                '24.2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 80,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              const Text(
                                'Сиздин дене салмагыңыз нормалдуу. Азаматсыз!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 10),
                              LoadingAnimationWidget.flickr(
                                size: 30,
                                leftDotColor: Colors.white,
                                rightDotColor: Colors.red,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              minimumSize:
                                  Size(MediaQuery.of(context).size.width, 35),
                            ),
                            onPressed: () {},
                            child: const Text('Кайра эсепте',
                                style: AppTextStyles.bodyStyle),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Container(
        height: 80.0,
        color: Colors.red,
        child: const Center(
          child: Text(
            'CALCULATOR',
            style: AppTextStyles.heighStyle,
          ),
        ),
      ),
    );
  }
}
