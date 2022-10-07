import 'package:flutter/material.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/resources/fonts.dart';
import 'package:test_exercise/resources/pathes.dart';
import 'package:test_exercise/src/ui/widgets/glasmorphism_container.dart';
import 'package:test_exercise/src/core/base_widgets/base_statless_widget.dart';

class RecomendationModel {
  String price;
  String cashback;
  String name;
  String image;

  RecomendationModel({
    required this.price,
    required this.cashback,
    required this.name,
    required this.image,
  });
}

List<RecomendationModel> recomendations = [
  RecomendationModel(
    cashback: "10",
    name: "Ice Американо",
    price: "50",
    image: AppImages.americano,
  ),
  RecomendationModel(
    cashback: "10",
    name: "Ice Американо",
    price: "50",
    image: AppImages.americano,
  ),
  RecomendationModel(
    cashback: "10",
    name: "Ice Американо",
    price: "50",
    image: AppImages.americano,
  ),
  RecomendationModel(
    cashback: "10",
    name: "Ice Американо",
    price: "50",
    image: AppImages.americano,
  ),
  RecomendationModel(
    cashback: "10",
    name: "Ice Американо",
    price: "50",
    image: AppImages.americano,
  ),
  RecomendationModel(
    cashback: "10",
    name: "Ice Американо",
    price: "50",
    image: AppImages.americano,
  ),
];

class RecomendationList extends BaseStatelessWidget {
  const RecomendationList({Key? key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Рекомендации',
            style: AppFonts.size18SemiBold.copyWith(
              color: AppColor.white,
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recomendations.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: GestureDetector(
                    onTap: () {},
                    child: GlassMorhismContainer(
                      width: 170,
                      height: 160,
                      angelRadius: 20,
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                                child: Image.asset(
                                  recomendations[index].image,
                                  scale: .85,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      recomendations[index].name,
                                      style: AppFonts.size14Regular.copyWith(
                                        color: AppColor.white,
                                      ),
                                    ),
                                    Text(
                                      'Цена: ${recomendations[index].price} \$',
                                      style: AppFonts.size12Regular.copyWith(
                                        color: AppColor.white,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 8),
                              decoration: const BoxDecoration(
                                color: AppColor.blue,
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(16),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // CASHBAK
                                      Text(
                                        "${recomendations[index].cashback} %",
                                        style: AppFonts.size14Bold.copyWith(
                                          color: AppColor.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
