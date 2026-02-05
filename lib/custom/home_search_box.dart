import 'package:active_ecommerce_cms_demo_app/l10n/l10n.dart';
import 'package:flutter/material.dart';

class HomeSearchBox extends StatelessWidget {
  final BuildContext? context;
  const HomeSearchBox({super.key, this.context});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffE4E3E8),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 63, 63, 63).withOpacity(.12),
            blurRadius: 15,
            spreadRadius: 0.4,
            offset: Offset(0.0, 5.0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/search.png',
              height: 16,
              color: Color(0xff7B7980),
            ),
            SizedBox(width: 10),
            Text(
              AppLocalizations.of(context).search_in_a_gmlah,
              style: TextStyle(fontSize: 13.0, color: Color(0xff7B7980)),
            ),
          ],
        ),
      ),
    );
  }
}
