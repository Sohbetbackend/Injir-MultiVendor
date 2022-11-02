// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';

class SearchPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 14, right: 8, bottom: 8),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: TextField(
                          style: const TextStyle(fontFamily: josefinSansMedium, color: Colors.black, fontSize: 20),
                          cursorColor: kPrimaryColor,
                          onTap: () {},
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              IconlyLight.search,
                              size: 26,
                              color: Colors.black,
                            ),
                            filled: true,
                            isDense: true,
                            hintText: "Найти в Injir".tr,
                            // hintText: "search".tr,
                            contentPadding: const EdgeInsets.only(left: 50),
                            hintStyle: TextStyle(fontFamily: josefinSansMedium, fontSize: 18, color: Colors.grey.shade500),
                            fillColor: Colors.grey.withOpacity(0.3),
                            border: OutlineInputBorder(
                              borderRadius: borderRadius15,
                              borderSide: BorderSide(color: Colors.grey.withOpacity(0.3), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: borderRadius15,
                              borderSide: BorderSide(color: Colors.grey.withOpacity(0.3), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: borderRadius15,
                              borderSide: BorderSide(color: Colors.grey.withOpacity(0.3), width: 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ExpansionTile(
                      title: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 15),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(color: index % 2 == 0 ? kPrimaryColor.withOpacity(0.2) : kPrimaryColor2.withOpacity(0.2), borderRadius: borderRadius10),
                                    margin: const EdgeInsets.all(8),
                                  ),
                                ),
                                Center(
                                  child: Image.asset(
                                    "assets/images/searchPage/${index + 1}.png",
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Text(
                              categories[index]["categoryName"],
                              style: const TextStyle(color: Colors.black, fontSize: 16, fontFamily: josefinSansSemiBold),
                            ),
                          ),
                        ],
                      ),
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      childrenPadding: EdgeInsets.zero,
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: categories[index]["subСategory"].length,
                          itemBuilder: (BuildContext context, int indexx) {
                            return GestureDetector(
                              onTap: () {
                                // Get.to(() => const ShowAllProducts());
                              },
                              child: Padding(
                                padding: EdgeInsets.only(right: 8, top: 8, left: Get.size.width / 5, bottom: indexx == categories[index]["subСategory"].length - 1 ? 20 : 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(categories[index]["subСategory"][indexx], textAlign: TextAlign.start, style: const TextStyle(color: Colors.black, fontSize: 16, fontFamily: josefinSansMedium)),
                                    Icon(
                                      IconlyBroken.arrowRightCircle,
                                      color: Colors.black,
                                      size: 18,
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                      ],
                      collapsedIconColor: Colors.grey,
                      collapsedTextColor: Colors.black,
                      iconColor: Colors.grey,
                      textColor: Colors.black,
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return dividerr();
                  },
                ),
              )
            ],
          )),
    );
  }

  List categories = [
    {
      "categoryName": "Придумано Яндекс.Лавкой",
      "count": 2,
      "subСategory": ["Всё <<Из Лавки>>", "Новое"]
    },
    {
      "categoryName": "Готовая еда",
      "count": 5,
      "subСategory": [
        "Готовим на заказ",
        "Основное меню",
        "Пекарня и кондитерская",
        "Горячмй кофе",
        "Здоровый рацион",
      ]
    },
    {
      "categoryName": "Овощной прилавок",
      "count": 2,
      "subСategory": [
        "Овощи, грибьы и зелень",
        "Фрукты и ягоды",
      ]
    },
    {
      "categoryName": "Молочный прилавок",
      "count": 5,
      "subСategory": [
        "Молоко, масло и яйца",
        "Сыры",
        "Кефир сметана, творог",
        "Йогурты и десерты",
        "Молояное для детей",
      ]
    },
    {
      "categoryName": "Булочная",
      "count": 3,
      "subСategory": [
        "Хлеб",
        "Выпечка",
        "Хлебйы",
      ]
    },
    {
      "categoryName": "Вода и напитки",
      "count": 5,
      "subСategory": [
        "Вода",
        "Соки и морсы",
        "Газировка",
        "Холодный чай и кофе",
        "Энергетики и пиво",
      ]
    },
    {
      "categoryName": "Сладкое и снеки",
      "count": 7,
      "subСategory": [
        "Снеки",
        "Сухофрукты и орехи",
        "Шоколад и конфети",
        "Торты, печенье, вафли",
        "Пастила и мармелад",
        "Вареные, мёд и пасты",
        "Оеденцы и жваяка",
      ]
    },
    {
      "categoryName": "Мясо,птица,рыба",
      "count": 4,
      "subСategory": [
        "Мясо и птица",
        "Колбаса и сосиски",
        "Консервы",
        "Рыба и морепродукты",
      ]
    },
    {
      "categoryName": "Заморозка",
      "count": 7,
      "subСategory": [
        "Мороженое",
        "Пельмени и вареники",
        "Овощи и ягоды",
        "Полуфабрикаты",
        "Рыба и морепродукты",
        "Десерты",
        "Лёд и кое-что ещё",
      ]
    },
    {
      "categoryName": "Здоровый образ жизни",
      "count": 5,
      "subСategory": [
        "Без мяса и молоко",
        "Вкусно и полезно",
        "Вода и напитки",
        "Спорт",
        "Без глютена",
      ]
    },
    {
      "categoryName": "Бакалея",
      "count": 5,
      "subСategory": [
        "Макароны, крупы и мука",
        "Хлопья и мюсои",
        "Чай и кофе",
        "Масло, соусы, специи",
        "Консервы",
      ]
    },
    {
      "categoryName": "Для детей",
      "count": 3,
      "subСategory": [
        "Питание",
        "вода и напитки",
        "Гигиена и уход",
      ]
    },
    {
      "categoryName": "Для животных",
      "count": 2,
      "subСategory": [
        "Для кошек",
        "Для собак",
      ]
    },
    {
      "categoryName": "Дом, милый дом",
      "count": 7,
      "subСategory": [
        "Гигиена",
        "Бумага и салфетки",
        "Косметика и уход",
        "Уборка и стирка",
        "Для готовки и хранения",
        "Батарейки и лампочки",
        "Полезные мелочи",
      ]
    },
    {
      "categoryName": "Очень надо",
      "count": 5,
      "subСategory": [
        "Аптечка",
        "Носки и колготки",
        "Всё для пикника и вечеринки",
        "Для школы и офиса",
        "Магазин Яндекса",
      ]
    },
  ];
}
