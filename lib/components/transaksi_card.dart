import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:masonry_grid/masonry_grid.dart';
import 'package:sertifikasiku/values/color.dart';

GestureDetector transaksiCard(
    String image,
    String name,
    String category,
    String invoice_no,
    String date,
    int status,
    String price,
    BuildContext context) {
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                        fontFamily: 'Semibold',
                        fontSize: 13,
                        color: headlineColor),
                    children: [
                      TextSpan(
                          text: invoice_no,
                          style: const TextStyle(color: headlineColor)),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                        fontFamily: 'Semibold',
                        fontSize: 12,
                        color: headlineColor),
                    children: [
                      TextSpan(
                          text: date,
                          style: const TextStyle(color: disabledColor)),
                    ],
                  ),
                ),
              ]),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFf8f8f8),
                    borderRadius: BorderRadius.circular(30.0)),
                padding: const EdgeInsets.only(
                    top: 3, bottom: 6, left: 20, right: 20),
                child: Text(
                  (status == 1)
                      ? "Belum Dibayar"
                      : (status == 2)
                          ? "Sudah Dibayar"
                          : "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: (status == 1)
                          ? primaryColor
                          : (status == 2)
                              ? accentColor
                              : headlineColor,
                      fontSize: 10,
                      height: 1.7,
                      fontFamily: 'Semibold'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
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
          const SizedBox(height: 20),
          MasonryGrid(column: 2, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                        fontFamily: 'Semibold',
                        fontSize: 11,
                        color: headlineColor),
                    children: [
                      TextSpan(
                          text: "Total Belanja",
                          style: TextStyle(color: disabledColor)),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                        fontFamily: 'Bold', fontSize: 15, color: accentColor),
                    children: [
                      TextSpan(
                          text: "Rp. $price",
                          style: const TextStyle(color: accentColor)),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     CupertinoPageRoute(builder: (context) {
                  //   return const SignInPage();
                  // }));
                },
                child: Text(
                  (status == 1)
                      ? "Bayar Sekarang"
                      : (status == 2)
                          ? "Beri Ulasan"
                          : "",
                  style: const TextStyle(
                    fontSize: 11.0,
                    color: Colors.white,
                    fontFamily: 'Semibold',
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                )),
          ])
        ],
      ),
    ),
  );
}
