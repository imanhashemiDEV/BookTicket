import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);
  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(280),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
                color: AppStyles.primaryColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage("assets/images/${hotel['image']}"),
                  fit: BoxFit.cover,
                )),
          ),
          const Gap(10),
          Text(hotel['name'], style: AppStyles.headlineStyle2),
          const Gap(5),
          Text(hotel['place'], style: AppStyles.headlineStyle2),
          const Gap(5),
          Text("\$${hotel['price']} per Night",
              style: AppStyles.headlineStyle2),
        ],
      ),
    );
  }
}
