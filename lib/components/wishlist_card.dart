import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:masonry_grid/masonry_grid.dart';
import 'package:sertifikasiku/values/color.dart';

GestureDetector wishlistCard(String image, String name, String category,
    String price, BuildContext context) {
  return GestureDetector(
    // onTap: () {
    //   Navigator.push(context, CupertinoPageRoute(builder: (context) {
    //     return const UndanganDetailPage();
    //   }));
    // },
    child: Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.only(bottom: 20, top: 20, left: 15, right: 15),
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
                image: AssetImage(image),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                          fontFamily: 'Bold', fontSize: 14, color: accentColor),
                      children: [
                        TextSpan(
                            text: "Rp. $price",
                            style: const TextStyle(color: accentColor)),
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
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 10.4, bottom: 10.4, left: 12, right: 12),
                    decoration: BoxDecoration(
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.circular(13)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/keranjang.svg',
                            color: primaryColor, height: 20),
                        const SizedBox(width: 10),
                        Text("+ Keranjang",
                            style: TextStyle(color: primaryColor, fontSize: 12, fontFamily: 'Semibold')),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 10.4, bottom: 10.4, left: 12, right: 12),
                  decoration: BoxDecoration(
                      border: Border.all(color: dangerColor),
                      borderRadius: BorderRadius.circular(13)),
                  child:
                      SvgPicture.asset('assets/images/delete.svg', height: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
