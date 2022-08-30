import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sertifikasiku/pages/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:sertifikasiku/pages/pelatihanku.dart';
import 'package:sertifikasiku/values/color.dart';
import 'package:ionicons/ionicons.dart';

GestureDetector PembelajaranCard(String nomber, String title, String study,
    String done, BuildContext context) {
  return GestureDetector(
    onTap: () {},
    child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: const [
              BoxShadow(
                  blurRadius: 60,
                  color: Color.fromARGB(29, 57, 90, 108),
                  offset: Offset(1, 8))
            ]),
        child: Card(
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  fontFamily: 'bold',
                                  fontSize: 12,
                                  color: textColor),
                              children: [
                            TextSpan(
                                text: "$nomber",
                                style: TextStyle(color: Colors.white))
                          ])),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontFamily: 'bold',
                                    fontSize: 13,
                                    color: textColor),
                                children: [
                              TextSpan(
                                  text: "$title",
                                  style: TextStyle(color: Colors.black))
                            ])),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 160,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                          fontFamily: 'medium',
                                          fontSize: 11,
                                          color: textColor),
                                      children: [
                                    TextSpan(
                                        text: "$study pembelajaran",
                                        style: TextStyle(color: textColor))
                                  ])),
                              SvgPicture.asset(
                                'assets/images/dot.svg',
                                height: 6,
                                width: 6,
                              ),
                              RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                          fontFamily: 'semibold',
                                          fontSize: 11,
                                          color: textColor),
                                      children: [
                                    TextSpan(
                                        text: "$done Selesai",
                                        style: TextStyle(color: accentColor))
                                  ])),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(Ionicons.chevron_up)
              ],
            ),
          ),
        )),
  );
}
