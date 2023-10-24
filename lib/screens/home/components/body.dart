import 'dart:ui';

import 'package:dicoding_submission/models/Product.dart';
import 'package:dicoding_submission/screens/home/components/categories.dart';
import 'package:dicoding_submission/screens/home/components/home_header.dart';
import 'package:dicoding_submission/screens/home/components/icon_counter.dart';
import 'package:dicoding_submission/screens/home/components/popular_items.dart';
import 'package:dicoding_submission/screens/home/components/promo_banner.dart';
import 'package:dicoding_submission/screens/home/components/search_field.dart';
import 'package:dicoding_submission/screens/home/components/section_title.dart';
import 'package:dicoding_submission/screens/home/components/special_offer_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            HomeHeader(),
            SizedBox(height: 20),
            PromoBanner(),
            SizedBox(height: 20),
            Categories(),
            SizedBox(height: 20),
            SectionTitle(text: 'Special For You', press: () {}),
            SizedBox(height: 10),
            SpecialOffers(),
            SizedBox(height: 20),
            SectionTitle(text: 'Popular Items', press: () {}),
            SizedBox(height: 20),
            PopularItems()
          ],
        ),
      ),
    );
  }
}
