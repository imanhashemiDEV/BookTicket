import 'package:barcode_widget/barcode_widget.dart';
import 'package:bookticket/screens/ticket_view.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:bookticket/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/thick_container.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding:
                  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
              children: [
                const Gap(10),
                Text(
                  "Ticket",
                  style: AppStyles.headlineStyle1,
                ),
                const Gap(20),
                const TicketTabs(righTtext: "InComing", leftText: 'UpComing'),
                const Gap(20),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: SizedBox(
                    width: size.width * 0.8,
                    height: 200,
                    child: Container(
                      margin: const EdgeInsets.only(right: 16),
                      child: Column(
                        children: [
                          // show blue part of cart
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(21),
                                  topRight: Radius.circular(21),
                                ),
                                color: Colors.white),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("THN",
                                        style: AppStyles.headlineStyle3
                                            .copyWith(color: Colors.black)),
                                    const Spacer(),
                                    ThickContainer(),
                                    Expanded(
                                        child: Stack(
                                      children: [
                                        SizedBox(
                                          height: 24,
                                          child: LayoutBuilder(builder:
                                              (BuildContext context,
                                                  BoxConstraints constraints) {
                                            return Flex(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                mainAxisSize: MainAxisSize.max,
                                                direction: Axis.horizontal,
                                                children: List.generate(
                                                    (constraints.constrainWidth() /
                                                            6)
                                                        .floor(),
                                                    (index) => const SizedBox(
                                                          width: 3,
                                                          height: 1,
                                                          child: DecoratedBox(
                                                            decoration:
                                                                BoxDecoration(
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                        )));
                                          }),
                                        ),
                                        Center(
                                          child: Transform.rotate(
                                              angle: 1.5,
                                              child: const Icon(
                                                  Icons.local_airport_rounded,
                                                  color: Colors.black)),
                                        ),
                                      ],
                                    )),
                                    const ThickContainer(),
                                    const Spacer(),
                                    Text("SHZ",
                                        style: AppStyles.headlineStyle3
                                            .copyWith(color: Colors.black)),
                                  ],
                                ),
                                const Gap(3),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      child: Text("Tehran",
                                          style: AppStyles.headlineStyle4
                                              .copyWith(color: Colors.black)),
                                    ),
                                    Text("22:00 AM",
                                        style: AppStyles.headlineStyle4
                                            .copyWith(color: Colors.black)),
                                    SizedBox(
                                      width: 100,
                                      child: Text("London",
                                          textAlign: TextAlign.end,
                                          style: AppStyles.headlineStyle4
                                              .copyWith(color: Colors.black)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // bottom part of cart
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("1 May",
                                        style: AppStyles.headlineStyle4
                                            .copyWith(color: Colors.black)),
                                    Text("Date",
                                        style: AppStyles.headlineStyle4
                                            .copyWith(color: Colors.black)),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("22:00 AM",
                                        style: AppStyles.headlineStyle4
                                            .copyWith(color: Colors.black)),
                                    Text("Departure Time",
                                        style: AppStyles.headlineStyle4
                                            .copyWith(color: Colors.black)),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text("21",
                                        style: AppStyles.headlineStyle4
                                            .copyWith(color: Colors.black)),
                                    Text("Septamber",
                                        style: AppStyles.headlineStyle4
                                            .copyWith(color: Colors.black)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: BarcodeWidget(
                    data: "www.google.com",
                    barcode: Barcode.code128(),
                    drawText: false,
                    color: Colors.black,
                    width: double.infinity,
                    height: 80,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
