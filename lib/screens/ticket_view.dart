import 'package:bookticket/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            // show blue part of cart
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
                color: AppStyles.topTicketColor,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("THN",
                          style: AppStyles.headlineStyle3
                              .copyWith(color: Colors.white)),
                      const Spacer(),
                      ThickContainer(),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  direction: Axis.horizontal,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => const SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Colors.white),
                                            ),
                                          )));
                            }),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(Icons.local_airport_rounded,
                                    color: Colors.white)),
                          ),
                        ],
                      )),
                      ThickContainer(),
                      const Spacer(),
                      Text("SHZ",
                          style: AppStyles.headlineStyle3
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text("Tehran",
                            style: AppStyles.headlineStyle4
                                .copyWith(color: Colors.white)),
                      ),
                      Text("22:00 AM",
                          style: AppStyles.headlineStyle4
                              .copyWith(color: Colors.white)),
                      SizedBox(
                        width: 100,
                        child: Text("London",
                            textAlign: TextAlign.end,
                            style: AppStyles.headlineStyle4
                                .copyWith(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // orange part of cart
            Container(
              color: AppStyles.orangeColor,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            ((constraints.constrainWidth()) / 6).floor(),
                            (index) => const SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                      );
                    },
                  )),
                  const SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // bottom part of cart
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
                color: AppStyles.orangeColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("1 May",
                          style: AppStyles.headlineStyle4
                              .copyWith(color: Colors.white)),
                      Text("Date",
                          style: AppStyles.headlineStyle4
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("22:00 AM",
                          style: AppStyles.headlineStyle4
                              .copyWith(color: Colors.white)),
                      Text("Departure Time",
                          style: AppStyles.headlineStyle4
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("21",
                          style: AppStyles.headlineStyle4
                              .copyWith(color: Colors.white)),
                      Text("Septamber",
                          style: AppStyles.headlineStyle4
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
