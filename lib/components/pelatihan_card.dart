import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:masonry_grid/masonry_grid.dart';
import 'package:sertifikasiku/pages/beranda.dart';
import 'package:sertifikasiku/pages/detail_belajar.dart';
import 'package:sertifikasiku/pages/detail_kelas.dart';
import 'package:sertifikasiku/values/color.dart';

GestureDetector pelatihanCard(String image, String name, String category,
    String start, String end, double percentage, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context, CupertinoPageRoute(builder: (_) => DetailBelajarPage()));
    },
    child: Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.only(bottom: 23, top: 15, left: 15, right: 15),
      decoration: const BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.09), blurRadius: 15)
          ],
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image(
                width: 70,
                height: 70,
                fit: BoxFit.cover,
                image: AssetImage('assets/images/kelas_thumbnail_1.png'),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Flexible(
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                          fontFamily: 'Bold', fontSize: 13, color: textColor),
                      children: [
                        TextSpan(
                            text: name,
                            style: const TextStyle(
                                color: headlineColor, height: 1.5)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/sertifikasi_profesi.svg',
                          height: 30),
                      const SizedBox(width: 10),
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                              fontFamily: 'Medium',
                              fontSize: 12,
                              color: textColor),
                          children: [
                            TextSpan(
                                text: category,
                                style: const TextStyle(color: textColor)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                            fontFamily: 'Semibold',
                            fontSize: 12,
                            color: headlineColor),
                        children: [
                          TextSpan(
                              text: "Progress Kelas",
                              style: const TextStyle(color: headlineColor)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: LinearProgressIndicator(
                          value: percentage / 100,
                          backgroundColor: Color(0xFFf3f3f3),
                          color: primaryColor,
                          minHeight: 8,
                        )),
                    const SizedBox(height: 15),
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                            fontFamily: 'Medium',
                            fontSize: 12,
                            color: textColor),
                        children: [
                          TextSpan(
                              text: "$start / $end Selesai",
                              style: const TextStyle(
                                  color: textColor, fontFamily: 'Semibold')),
                          TextSpan(
                              text: " ($percentage%)",
                              style: const TextStyle(
                                  color: headlineColor, fontFamily: 'Bold')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              SvgPicture.asset('assets/images/play.svg', height: 30),
            ],
          ),
        ],
      ),
    ),
  );
}
