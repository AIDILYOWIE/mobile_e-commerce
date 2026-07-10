import "package:flutter/material.dart";
import "package:mobile_ecommerce/common/widgets/image_text_widgets/vertical_image_text.dart";
import "package:mobile_ecommerce/utils/constants/colors.dart";
import "package:mobile_ecommerce/utils/constants/image_strings.dart";


class EHomeCategories extends StatelessWidget {
  const EHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return  EVerticalImageText(image: EImages.sportCategorie, title: 'sport', textColor: EColors.white, backgroundColor: EColors.white, onTap: (){},);
        },
      ),
    );
  }
}