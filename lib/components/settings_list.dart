import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sertifikasiku/values/color.dart';

GestureDetector settingList(
    BuildContext context, String name, String icon, Widget widget) {
  return GestureDetector(
    onTap: () {
      if (widget != null) {
        Navigator.push(context, CupertinoPageRoute(builder: (context) {
          return widget;
        }));
      }
    },
    child: Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFFD2ECF7)),
            child: SvgPicture.asset(icon, height: 24, color: primaryColor),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * .05),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(name,
                      style: const TextStyle(
                          fontFamily: 'Medium',
                          fontSize: 15,
                          color: Color(0xFF000000))),
                ),
                const Icon(
                  Ionicons.chevron_forward,
                  color: Colors.black,
                  size: 23,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
