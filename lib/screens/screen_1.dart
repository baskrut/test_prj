import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../constant/colors.dart';
import '../constant/strings.dart';
import '../widgets/btn_close.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  Widget build(BuildContext context) {
    double texContainerSize;
    if (MediaQuery.of(context).size.height > 700) {
      texContainerSize = 400;
    } else {
      texContainerSize = 308;
    }

    return CupertinoPageScaffold(
      backgroundColor: ProjectColor.background,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ProjectColor.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Gap(16),
                  SizedBox(
                    width: double.infinity,
                    child: Stack(alignment: Alignment.center, children: const [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: ProjectColor.black,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 16,
                        child: BtnClose(),
                      ),
                    ]),
                  ),
                  const Gap(16),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      subTitle,
                      style: TextStyle(
                        color: ProjectColor.black,
                      ),
                    ),
                  ),
                  const Gap(16),
                  Container(
                    height: texContainerSize,
                    color: ProjectColor.grey,
                    child: const CupertinoScrollbar(
                      isAlwaysShown: true,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 16,
                            right: 16,
                            left: 16,
                          ),
                          child: Text(
                            body,
                            style: TextStyle(
                              color: ProjectColor.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 16,
                    decoration: BoxDecoration(
                      color: ProjectColor.white,
                      boxShadow: [
                        BoxShadow(
                          offset:const Offset(0, -12),
                          color: ProjectColor.black.withOpacity(0.5),
                          blurRadius: 12,
                          spreadRadius: -3,

                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 44,
                      width: 140,
                      margin: const EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        color: ProjectColor.pink,
                      ),
                      child: const Center(
                        child: Text(
                          btnText,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}