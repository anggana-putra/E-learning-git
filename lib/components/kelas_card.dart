import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sertifikasiku/values/color.dart';

class kelas_card extends StatelessWidget {
  const kelas_card({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.price_coret,
    required this.kelas_detail,
    required this.rating,
    required this.where,
    required this.review_count,
  }) : super(key: key);
  final String title;
  final String image;
  final String price;
  final String price_coret;
  final String kelas_detail;
  final String rating;
  final String review_count;
  final Widget where;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image(
                width: double.infinity,
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
            const SizedBox(height: 10),
            Text(title,
                style: const TextStyle(
                    fontFamily: 'Bold',
                    height: 1.5,
                    fontSize: 13,
                    color: headlineColor)),
            const SizedBox(height: 5),
            RichText(
              text: TextSpan(
                text: price,
                style: const TextStyle(
                    fontFamily: 'Bold', fontSize: 14, color: accentColor),
                children: [
                  const WidgetSpan(child: SizedBox(width: 10)),
                  TextSpan(
                      text: "\n$price_coret",
                      style: const TextStyle(
                          fontSize: 11,
                          decoration: TextDecoration.lineThrough,
                          fontFamily: 'Semibold',
                          color: disabledColor)),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Text(kelas_detail,
                style: const TextStyle(
                    fontFamily: 'Medium',
                    height: 1.5,
                    fontSize: 12,
                    color: textColor)),
            const SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/star.svg', height: 20),
                const SizedBox(width: 5),
                RichText(
                  text: TextSpan(
                    text: rating,
                    style: const TextStyle(
                        fontFamily: 'Bold', fontSize: 13, color: headlineColor),
                    children: [
                      const WidgetSpan(child: SizedBox(width: 10)),
                      TextSpan(
                          text: "($review_count Review)",
                          style: const TextStyle(
                              fontSize: 12,
                              fontFamily: 'Medium',
                              color: textColor)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: () {
        if (where != null) {
          Navigator.push(context, CupertinoPageRoute(builder: (context) {
            return where;
          }));
        }
      },
    );
  }
}
