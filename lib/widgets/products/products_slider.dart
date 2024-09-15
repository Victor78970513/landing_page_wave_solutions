import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ProductsSlider extends StatelessWidget {
  final List<String> images;
  const ProductsSlider({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        scrollPhysics: const NeverScrollableScrollPhysics(),
        autoPlay: true,
        autoPlayInterval: const Duration(milliseconds: 5000),
        viewportFraction: .999999,
        height: double.infinity,
      ),
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: ClipRRect(
            child: Image(
                image: AssetImage(images[index]),
                fit: BoxFit.fill,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  } else {
                    return Center(
                      child: LoadingAnimationWidget.flickr(
                        leftDotColor: Colors.pink,
                        rightDotColor: Colors.purple,
                        size: 100,
                      ),
                    );
                  }
                }),
          ),
        );
      },
    );
  }
}
