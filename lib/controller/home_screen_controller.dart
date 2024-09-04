import 'package:e_go_app/model/news_model.dart';
import 'package:e_go_app/view/explore_screen.dart';
import 'package:e_go_app/view/helper_functions/assets.dart';
import 'package:e_go_app/view/news_screen.dart';
import 'package:e_go_app/view/profile_screen.dart';
import 'package:e_go_app/view/remote_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../view/overview_screen.dart';

class HomeScreenController extends GetxController{

  final currentIndex = 0.obs;

  List<Widget> pages = [
    const OverviewScreen(),
    const NewsScreen(),
    const ExploreScreen(),
    const RemoteScreen(),
    const ProfileScreen(),
  ];

  List<NewsModel> newsList = [
    NewsModel(image: MyAssets.newsModel1, title: "e.GO and Athena Consumer Acquisition Corp. Complete Business Combination", description: "Next.e.GO Mobile SE and Athena Consumer Acquisition Corp. today announced the completion of their previously announced business combination. The listed company following the Business Combination is TopCo, and its shares will commence trading on the Nasdaq Stock Market LLC (“Nasdaq”) under the ticker symbol “EGOX”, on October 20, 2023."),
    NewsModel(image: MyAssets.newsModel2, title: "Next.e.GO Mobile SE to Participate Alongside Microsoft at the Hannover Messe Trade Fair", description: "e.GO announces today it is attending the Hannover Messe, Germany, from 17.04.2023 to 21.04.2023 alongside Microsoft, at the Microsoft booth in Hall 17 Booth E06."),
    NewsModel(image: MyAssets.newsModel3, title: "Next.e.GO Mobile SE Announces Signing of Memorandum of Understanding with Trafigura", description: "Next.e.GO Mobile SE today announced that it has entered into a memorandum of understanding with Trafigura, a leading international commodity company, to establish a long-term supply chain management service agreement.")
  ];

  get currentPage => pages[currentIndex.value];

  void changePage(int index) {
    currentIndex.value = index;
  }
}