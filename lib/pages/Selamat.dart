import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sertifikasiku/pages/beranda.dart';
import 'package:sertifikasiku/pages/pelatihanku.dart';
import 'package:sertifikasiku/pages/tryout.dart';
import 'package:sertifikasiku/values/color.dart';
import 'package:sertifikasiku/pages/index.dart';
import 'package:ionicons/ionicons.dart';

class SelamatPage extends StatefulWidget {
  const SelamatPage({Key? key}) : super(key: key);

  @override
  State<SelamatPage> createState() => _SelamatPageState();
}

class _SelamatPageState extends State<SelamatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment(0, 0.5),
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.22,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/Selamat.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(52, 83, 185, 102),
                                      borderRadius: BorderRadius.circular(60)),
                                ),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: accentColor,
                                      borderRadius: BorderRadius.circular(60)),
                                ),
                                SvgPicture.asset(
                                  'assets/images/Check.svg',
                                  height: 40,
                                  width: 40,
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  RichText(
                                      text: const TextSpan(
                                          style: TextStyle(
                                            fontFamily: 'bold',
                                            fontSize: 18,
                                          ),
                                          children: [
                                        TextSpan(
                                            text: "Selamat, Kamu Lulus!",
                                            style:
                                                TextStyle(color: headlineColor))
                                      ])),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  RichText(
                                      textAlign: TextAlign.center,
                                      text: const TextSpan(
                                          style: TextStyle(
                                            fontFamily: 'medium',
                                            fontSize: 13,
                                          ),
                                          children: [
                                            TextSpan(
                                                text:
                                                    "Kamu telah menyelesaikan Try Out Certified Securities Analyst (CSA) Batch 1.",
                                                style:
                                                    TextStyle(color: textColor))
                                          ])),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(
                                      text: const TextSpan(
                                          style: TextStyle(
                                            fontFamily: 'bold',
                                            fontSize: 15,
                                          ),
                                          children: [
                                        TextSpan(
                                            text: "Nilai kamu",
                                            style:
                                                TextStyle(color: headlineColor))
                                      ])),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  RichText(
                                      text: const TextSpan(
                                          style: TextStyle(
                                            fontFamily: 'bold',
                                            fontSize: 35,
                                          ),
                                          children: [
                                        TextSpan(
                                            text: "95",
                                            style:
                                                TextStyle(color: primaryColor))
                                      ])),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.60,
                                    child: RichText(
                                        textAlign: TextAlign.center,
                                        text: const TextSpan(
                                            style: TextStyle(
                                              fontFamily: 'medium',
                                              fontSize: 13,
                                            ),
                                            children: [
                                              TextSpan(
                                                  text:
                                                      "Sertifikatmu akan tersedia di menu sertifikatku pada menu Akunku",
                                                  style: TextStyle(
                                                      color: textColor))
                                            ])),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Icon(
                                          Ionicons.star,
                                          color: borderColor,
                                        ),
                                        Icon(
                                          Ionicons.star,
                                          color: borderColor,
                                        ),
                                        Icon(
                                          Ionicons.star,
                                          color: borderColor,
                                        ),
                                        Icon(
                                          Ionicons.star,
                                          color: borderColor,
                                        ),
                                        Icon(
                                          Ionicons.star,
                                          color: borderColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    height: 90,
                                    width: MediaQuery.of(context).size.width *
                                        0.75,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        counterStyle: const TextStyle(
                                          height: double.minPositive,
                                        ),
                                        counterText: "",
                                        hintText:
                                            "Beritahu kami agar bisa melayani anda lebih baik",
                                        hintStyle: const TextStyle(
                                            fontFamily: 'medium',
                                            fontSize: 12,
                                            color: disabledColor),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            borderSide: const BorderSide(
                                                color: accentColor, width: 1)),
                                        contentPadding: const EdgeInsets.only(
                                            left: 25,
                                            right: 25,
                                            top: 20,
                                            bottom: 20),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            borderSide: const BorderSide(
                                                color: const Color.fromARGB(
                                                    255, 226, 226, 226),
                                                width: 1)),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            borderSide: const BorderSide(
                                                color: Color.fromARGB(
                                                    255, 226, 226, 226),
                                                width: 1)),
                                      ),
                                      keyboardType: TextInputType.multiline,
                                      maxLines: 8,
                                      maxLength: 1000,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.75,
                                    child: ElevatedButton(
                                      onPressed: () => Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (_) =>
                                                  const IndexPage())),
                                      child: RichText(
                                          textAlign: TextAlign.center,
                                          text: const TextSpan(
                                              style: TextStyle(
                                                fontFamily: 'semibold',
                                                fontSize: 14,
                                              ),
                                              children: [
                                                TextSpan(
                                                    text: "Selesai",
                                                    style: TextStyle(
                                                        color: Colors.white))
                                              ])),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
