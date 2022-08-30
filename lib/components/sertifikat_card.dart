import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:masonry_grid/masonry_grid.dart';
import 'package:sertifikasiku/values/color.dart';

GestureDetector sertifikatCard(String image, String name, String category,
    bool prakerja, bool lsp, bool bnsp, BuildContext context) {
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
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFefefef)),
                borderRadius: BorderRadius.circular(16),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image(
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
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
                  const SizedBox(height: 10),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                          fontFamily: 'Medium',
                          fontSize: 10.5,
                          color: textColor),
                      children: [
                        TextSpan(
                            text: "Telah lulus sertifikasi yang diuji oleh",
                            style: TextStyle(color: textColor)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      (prakerja == true)
                          ? const Image(
                              height: 25,
                              image: AssetImage('assets/images/prakerja.png'),
                            )
                          : Container(),
                      (prakerja == true)
                          ? const SizedBox(width: 5)
                          : Container(),
                      (bnsp == true)
                          ? const Image(
                              height: 25,
                              image: AssetImage('assets/images/bnsp.png'),
                            )
                          : Container(),
                      (bnsp == true) ? const SizedBox(width: 5) : Container(),
                      (lsp == true)
                          ? const Image(
                              height: 25,
                              image: AssetImage('assets/images/lsp.png'),
                            )
                          : Container(),
                      (lsp == true) ? const SizedBox(width: 5) : Container(),
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
                        SvgPicture.asset('assets/images/download.svg',
                            color: primaryColor, height: 20),
                        const SizedBox(width: 10),
                        const Text("Download Sertifikat",
                            style: TextStyle(
                                color: primaryColor,
                                fontSize: 12,
                                fontFamily: 'Semibold')),
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
                      border: Border.all(color: accentColor),
                      borderRadius: BorderRadius.circular(13)),
                  child:
                      SvgPicture.asset('assets/images/share.svg', height: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
