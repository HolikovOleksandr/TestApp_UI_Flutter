import 'package:flutter/material.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/resources/fonts.dart';
import 'package:test_exercise/resources/pathes.dart';
import 'package:test_exercise/src/ui/widgets/category_item.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';

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

class CategoriesListView extends BaseStatelessWidget {
  const CategoriesListView({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  return CategoryItem(
                    color: categoryList[index].color,
                    lable: categoryList[index].text,
                    icon: categoryList[index].icon,
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
