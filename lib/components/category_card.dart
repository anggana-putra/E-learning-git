import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sertifikasiku/values/color.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.label,
    required this.image,
    required this.where,
    required this.context,
  }) : super(key: key);
  final String label;
  final String image;
  final BuildContext context;
  final Widget where;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (where != null) {
          Navigator.push(context, CupertinoPageRoute(builder: (context) {
            return where;
          }));
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 17, bottom: 17, left: 17, right: 17),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.09), blurRadius: 15)
                  ],
                  borderRadius: BorderRadius.circular(20)),
              child: SvgPicture.asset(image, height: 30),
            ),
            const SizedBox(height: 10),
            Text(label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: 'Semibold',
                    fontSize: 12,
                    height: 1.5,
                    color: headlineColor))
          ],
        ),
      ),
    );
  }
}
