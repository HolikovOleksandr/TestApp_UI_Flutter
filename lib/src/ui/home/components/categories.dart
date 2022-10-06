import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/resources/fonts.dart';
import 'package:test_exercise/resources/pathes.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Категории',
            style: AppFonts.size18SemiBold.copyWith(
              color: AppColor.white,
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            child: SizedBox(
              height: 88,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: SizedBox(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 56,
                                height: 56,
                                decoration: BoxDecoration(
                                  // TODO: shadow shine
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: categoryList[index].color,
                                    width: 3,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SvgPicture.asset(
                                categoryList[index].icon,
                              ),
                            ],
                          ),
                          Text(
                            categoryList[index].text,
                            maxLines: 2,
                            softWrap: true,
                            style: AppFonts.size12Regular.copyWith(
                              color: AppColor.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryModel {
  Color color;
  String icon;
  String text;

  CategoryModel({
    required this.color,
    required this.icon,
    required this.text,
  });
}

List<CategoryModel> categoryList = [
  CategoryModel(
    color: AppColor.red,
    icon: AppIcons.marcetplase,
    text: 'Маркетплейсы',
  ),
  CategoryModel(
    color: AppColor.pink,
    icon: AppIcons.clothes,
    text: 'Одежда и украшения',
  ),
  CategoryModel(
    color: AppColor.ornage,
    icon: AppIcons.flower,
    text: 'Красота и здоровье',
  ),
  CategoryModel(
    color: AppColor.yellow,
    icon: AppIcons.airplane,
    text: 'Путешествия',
  ),
  CategoryModel(
    color: AppColor.purple,
    icon: AppIcons.delivery,
    text: 'Услуги',
  ),
];
