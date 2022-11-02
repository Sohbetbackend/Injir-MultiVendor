import 'package:flutter/material.dart';
import 'package:injir/app/constants/constants.dart';

class BannerCard extends StatelessWidget {
  final String image;
  final String name;

  const BannerCard({
    required this.image,
    Key? key,
    required this.name,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        // Get.to(() => BannerProfileView(name, image));
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        width: size.width,
        child: ClipRRect(
          borderRadius: borderRadius20,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          // child: CachedNetworkImage(
          //   fadeInCurve: Curves.ease,
          //   imageUrl: image,
          //   imageBuilder: (context, imageProvider) => Container(
          //     width: size.width,
          //     decoration: BoxDecoration(
          //       borderRadius: borderRadius10,
          //       image: DecorationImage(
          //         image: imageProvider,
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //   ),
          //   placeholder: (context, url) => Center(child: spinKit()),
          //   errorWidget: (context, url, error) => noBannerImage(),
          // ),
        ),
      ),
    );
  }
}
