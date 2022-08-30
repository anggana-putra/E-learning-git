import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sertifikasiku/pages/akunku.dart';
import 'package:sertifikasiku/pages/beranda.dart';
import 'package:sertifikasiku/pages/pelatihanku.dart';
import 'package:sertifikasiku/pages/transaksiku.dart';
import 'package:sertifikasiku/pages/wishlistku.dart';
import 'package:sertifikasiku/values/color.dart';
import 'package:sertifikasiku/pages/detail_kelas.dart';
import 'package:sertifikasiku/pages/detail_belajar.dart';
import 'package:sertifikasiku/pages/tryout.dart';
import 'package:flutter/cupertino.dart';

class RouterClass extends StatelessWidget {
  const RouterClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(onGenerateRoute: (RouteSettings settings) {
      switch (settings.name) {
        case '/':
          return CupertinoPageRoute(
              builder: (_) => const IndexPage(), settings: settings);
        case 'DetailKelas':
          return CupertinoPageRoute(
              builder: (_) => const DetailKelasPage(), settings: settings);
      }
    });
  }
}

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  IndexPageState createState() => IndexPageState();
}

class IndexPageState extends State<IndexPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    const BerandaPage(),
    const PelatihankuPage(),
    const TransaksikuPage(),
    const WishlistkuPage(),
    const AkunkuPage(),
    const DetailKelasPage(),
    DetailBelajarPage(),
    const tryOutPage()
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: bottomNavbar(),
        body: _pages.elementAt(_selectedIndex),
      ),
    );
  }

  Container bottomNavbar() {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(color: Color.fromARGB(255, 237, 237, 237), blurRadius: 10)
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        elevation: 0,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: primaryColor,
        unselectedItemColor: disabledColor,
        unselectedFontSize: 9.5,
        selectedFontSize: 9.5,
        unselectedLabelStyle: const TextStyle(fontFamily: 'Semibold'),
        selectedLabelStyle: const TextStyle(fontFamily: 'Semibold'),
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: SvgPicture.asset('assets/images/beranda.svg'),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: SvgPicture.asset('assets/images/beranda_filled.svg',
                  color: primaryColor),
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: SvgPicture.asset('assets/images/pelatihanku.svg'),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: SvgPicture.asset('assets/images/pelatihanku_filled.svg',
                  color: primaryColor),
            ),
            label: 'Pelatihanku',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: SvgPicture.asset('assets/images/transaksiku.svg'),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: SvgPicture.asset('assets/images/transaksiku_filled.svg',
                  color: primaryColor),
            ),
            label: 'Transaksiku',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: SvgPicture.asset('assets/images/wishlist.svg'),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: SvgPicture.asset('assets/images/wishlist_filled.svg',
                  color: primaryColor),
            ),
            label: 'Wishlistku',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: SvgPicture.asset('assets/images/akunku.svg'),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: SvgPicture.asset('assets/images/akunku_filled.svg',
                  color: primaryColor),
            ),
            label: 'Akunku',
          ),
        ],
      ),
    );
  }
}
