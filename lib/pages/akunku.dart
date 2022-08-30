import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sertifikasiku/components/settings_list.dart';
import 'package:sertifikasiku/pages/sertifikatku.dart';
import 'package:sertifikasiku/pages/splash.dart';
import 'package:sertifikasiku/values/color.dart';

class AkunkuPage extends StatefulWidget {
  const AkunkuPage({Key? key}) : super(key: key);

  @override
  AkunkuPageState createState() => AkunkuPageState();
}

class AkunkuPageState extends State<AkunkuPage> {
  bool NotifIsChecked = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20, top: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              SvgPicture.asset('assets/images/akunku.svg',
                                  height: 30, color: primaryColor),
                              const SizedBox(width: 15),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                        fontFamily: 'Bold',
                                        fontSize: 20,
                                        color: textColor),
                                    children: [
                                      TextSpan(
                                          text: "Akunku",
                                          style:
                                              TextStyle(color: headlineColor)),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                            const SizedBox(height: 20),
                            Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.09),
                                      blurRadius: 15)
                                ],
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/akunku_background.png')),
                                color: const Color(0xFFf8f8f8),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, bottom: 20, left: 20, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                            width: 35,
                                            height: 35,
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/images/user.png'),
                                            )),
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .04),
                                        Container(
                                          margin: const EdgeInsets.only(top: 7),
                                          child: Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text("Daffa Prayoga",
                                                      style: TextStyle(
                                                          fontFamily: 'Bold',
                                                          fontSize: 15,
                                                          color:
                                                              headlineColor)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 15),
                                    Container(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: const TextSpan(
                                            style: TextStyle(
                                                fontFamily: 'Semibold',
                                                fontSize: 13,
                                                color: textColor),
                                            children: [
                                              TextSpan(
                                                  text:
                                                      "Sebarkan kodemu buat\ndapatkan bonus!",
                                                  style: TextStyle(
                                                      color: textColor,
                                                      height: 1.3)),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                        RichText(
                                          text: const TextSpan(
                                            style: TextStyle(
                                                fontFamily: 'Medium',
                                                fontSize: 12,
                                                color: textColor),
                                            children: [
                                              TextSpan(
                                                  text: "Kode Referral",
                                                  style: TextStyle(
                                                      color: textColor)),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/images/gift.svg',
                                                height: 24),
                                            const SizedBox(width: 8),
                                            RichText(
                                              text: const TextSpan(
                                                style: TextStyle(
                                                    fontFamily: 'Medium',
                                                    fontSize: 13,
                                                    color: textColor),
                                                children: [
                                                  TextSpan(
                                                      text: "KDieirwjDC",
                                                      style: TextStyle(
                                                          color: primaryColor,
                                                          fontFamily:
                                                              'Semibold')),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(width: 16),
                                            GestureDetector(
                                              onTap: () {},
                                              child: SvgPicture.asset(
                                                  'assets/images/copy.svg',
                                                  height: 22),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            settingList(
                                context,
                                "Sertifikatku",
                                "assets/images/sertifikatku.svg",
                                const SertifikatkuPage()),
                            settingList(context, "Profileku",
                                "assets/images/akunku.svg", const SplashPage()),
                            settingList(
                                context,
                                "Ganti Password",
                                "assets/images/ganti_password.svg",
                                const SplashPage()),
                            settingList(context, "FAQ", "assets/images/faq.svg",
                                const SplashPage()),
                            settingList(
                                context,
                                "Help Center",
                                "assets/images/help_center.svg",
                                const SplashPage()),
                            settingList(
                                context,
                                "Layanan & Privasi",
                                "assets/images/layanan_privasi.svg",
                                const SplashPage()),
                            const SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(context,
                                //     CupertinoPageRoute(builder: (context) {
                                //   return const SignInPage();
                                // }));
                              },
                              child: Container(
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFBE9E9),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      SizedBox(width: 10),
                                      Text("Logout",
                                          style: TextStyle(
                                              fontFamily: 'Semibold',
                                              fontSize: 15,
                                              color: dangerColor))
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
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
