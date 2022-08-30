import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:masonry_grid/masonry_grid.dart';
import 'package:sertifikasiku/components/category_card.dart';
import 'package:sertifikasiku/components/kelas_card.dart';
import 'package:sertifikasiku/pages/detail_kelas.dart';
import 'package:sertifikasiku/pages/index.dart';
import 'package:sertifikasiku/values/color.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  BerandaPageState createState() => BerandaPageState();
}

class BerandaPageState extends State<BerandaPage> {
  static final List<String> imgSlider = [
    'slide_1.jpeg',
    'slide_2.jpeg',
    'slide_3.jpeg',
    'slide_4.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Stack(children: [
            Image(
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
              image: const AssetImage('assets/images/home.png'),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('assets/images/logo_white.svg',
                          height: 35),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 10.4, bottom: 10.4, left: 12, right: 12),
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.26),
                                  borderRadius: BorderRadius.circular(13)),
                              child: Badge(
                                padding: const EdgeInsets.all(6),
                                elevation: 0,
                                badgeColor: badgeColor,
                                child: SvgPicture.asset(
                                    'assets/images/keranjang.svg',
                                    height: 22),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 12, right: 12),
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.26),
                                  borderRadius: BorderRadius.circular(13)),
                              child: Badge(
                                padding: const EdgeInsets.all(6),
                                elevation: 0,
                                badgeColor: badgeColor,
                                child: SvgPicture.asset(
                                    'assets/images/notification.svg',
                                    height: 22),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: const [
                      Text("Hai, Sobat Belajar",
                          style: TextStyle(
                              fontFamily: 'Medium',
                              fontSize: 16,
                              color: Colors.white)),
                      SizedBox(width: 10),
                      Image(
                        image: AssetImage('assets/images/hand.png'),
                        height: 20,
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          autofocus: false,
                          style: const TextStyle(
                              fontSize: 16, color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Ionicons.search,
                                color: Colors.white, size: 20),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.26),
                            hintText: 'Cari Kelas',
                            hintStyle: const TextStyle(
                                fontSize: 14, color: Colors.white),
                            contentPadding: const EdgeInsets.only(
                                left: 14.0,
                                bottom: 14.0,
                                top: 14.0,
                                right: 14.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0)),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0)),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.only(
                              top: 12, bottom: 12, left: 13, right: 13),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.26),
                              borderRadius: BorderRadius.circular(13)),
                          child: SvgPicture.asset('assets/images/filter.svg',
                              height: 25),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 235),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        bottom: 20, top: 30, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Kategori",
                            style: TextStyle(
                                fontFamily: 'Bold',
                                fontSize: 15,
                                color: headlineColor)),
                        Text("Lihat Semua",
                            style: TextStyle(
                                fontFamily: 'Medium',
                                fontSize: 13,
                                color: primaryColor))
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryCard(
                            label: "Design",
                            image: 'assets/images/design.svg',
                            context: context,
                            where: const IndexPage()),
                        CategoryCard(
                            label: "Coding",
                            image: 'assets/images/coding.svg',
                            context: context,
                            where: const IndexPage()),
                        CategoryCard(
                            label: "Marketing",
                            image: 'assets/images/marketing.svg',
                            context: context,
                            where: const IndexPage()),
                        CategoryCard(
                            label: "Business",
                            image: 'assets/images/business.svg',
                            context: context,
                            where: const IndexPage()),
                        CategoryCard(
                            label: "Seni",
                            image: 'assets/images/seni.svg',
                            context: context,
                            where: const IndexPage()),
                        CategoryCard(
                            label: "Finance",
                            image: 'assets/images/finance.svg',
                            context: context,
                            where: const IndexPage()),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  CarouselSlider(
                      items: imgSlider.map((fileImage) {
                        return Container(
                          margin: const EdgeInsets.all(0),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            child: Image.asset(
                              'assets/images/$fileImage',
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }).toList(),
                      options: CarouselOptions(
                        height: 90,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      )),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.only(
                        bottom: 20, top: 30, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Kelas Populer",
                            style: TextStyle(
                                fontFamily: 'Bold',
                                fontSize: 15,
                                color: headlineColor)),
                        Text("Lihat Semua",
                            style: TextStyle(
                                fontFamily: 'Medium',
                                fontSize: 13,
                                color: primaryColor))
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                            width: 185,
                            child: kelas_card(
                                title: "Bangun website dari 0 dengan Vue JS",
                                image: 'assets/images/kelas_thumbnail_1.png',
                                price: "Rp. 200.000",
                                price_coret: "Rp. 1.200.000",
                                kelas_detail: "23 Video, 10 Jam",
                                rating: "4.7",
                                review_count: "1230",
                                where: DetailKelasPage())),
                        SizedBox(
                          width: 185,
                          child: kelas_card(
                            title: "Sukses ngiklan cermat di marketplace",
                            image: 'assets/images/kelas_thumbnail_2.png',
                            price: "Rp. 200.000",
                            price_coret: "Rp. 1.200.000",
                            kelas_detail: "23 Video, 10 Jam",
                            rating: "4.7",
                            review_count: "1230",
                            where: DetailKelasPage(),
                          ),
                        ),
                        SizedBox(
                          width: 185,
                          child: kelas_card(
                            title: "Bangun website dari 0 dengan Vue JS",
                            image: 'assets/images/kelas_thumbnail_1.png',
                            price: "Rp. 200.000",
                            price_coret: "Rp. 1.200.000",
                            kelas_detail: "23 Video, 10 Jam",
                            rating: "4.7",
                            review_count: "1230",
                            where: DetailKelasPage(),
                          ),
                        ),
                        SizedBox(
                          width: 185,
                          child: kelas_card(
                            title: "Sukses ngiklan cermat di marketplace",
                            image: 'assets/images/kelas_thumbnail_2.png',
                            price: "Rp. 200.000",
                            price_coret: "Rp. 1.200.000",
                            kelas_detail: "23 Video, 10 Jam",
                            rating: "4.7",
                            review_count: "1230",
                            where: DetailKelasPage(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.only(
                        bottom: 20, top: 30, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Belajar Bisnis",
                            style: TextStyle(
                                fontFamily: 'Bold',
                                fontSize: 15,
                                color: headlineColor)),
                        Text("Lihat Semua",
                            style: TextStyle(
                                fontFamily: 'Medium',
                                fontSize: 13,
                                color: primaryColor))
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          width: 185,
                          child: kelas_card(
                            title: "Bangun website dari 0 dengan Vue JS",
                            image: 'assets/images/kelas_thumbnail_1.png',
                            price: "Rp. 200.000",
                            price_coret: "Rp. 1.200.000",
                            kelas_detail: "23 Video, 10 Jam",
                            rating: "4.7",
                            review_count: "1230",
                            where: DetailKelasPage(),
                          ),
                        ),
                        SizedBox(
                          width: 185,
                          child: kelas_card(
                            title: "Sukses ngiklan cermat di marketplace",
                            image: 'assets/images/kelas_thumbnail_2.png',
                            price: "Rp. 200.000",
                            price_coret: "Rp. 1.200.000",
                            kelas_detail: "23 Video, 10 Jam",
                            rating: "4.7",
                            review_count: "1230",
                            where: DetailKelasPage(),
                          ),
                        ),
                        SizedBox(
                          width: 185,
                          child: kelas_card(
                            title: "Bangun website dari 0 dengan Vue JS",
                            image: 'assets/images/kelas_thumbnail_1.png',
                            price: "Rp. 200.000",
                            price_coret: "Rp. 1.200.000",
                            kelas_detail: "23 Video, 10 Jam",
                            rating: "4.7",
                            review_count: "1230",
                            where: DetailKelasPage(),
                          ),
                        ),
                        SizedBox(
                          width: 185,
                          child: kelas_card(
                            title: "Sukses ngiklan cermat di marketplace",
                            image: 'assets/images/kelas_thumbnail_2.png',
                            price: "Rp. 200.000",
                            price_coret: "Rp. 1.200.000",
                            kelas_detail: "23 Video, 10 Jam",
                            rating: "4.7",
                            review_count: "1230",
                            where: DetailKelasPage(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
