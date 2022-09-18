import 'package:flutter/material.dart';

import '../../../shared/context/size.dart';
import '../../../shared/dummy/brand_dumy.dart';

class BrandComponent extends StatelessWidget {
  const BrandComponent({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .11,
      width: width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final model = BrandDummy.brandDummy[index];
          return Container(
            padding: EdgeInsets.all(30),
            width: 280.0,
            height: 70.0,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Image.asset(model.image),
          );
        },
        separatorBuilder: (context, index) => AppSize.appH10,
        itemCount: BrandDummy.brandDummy.length,
      ),
    );
  }
}
