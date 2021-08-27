import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  const TopPage();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _createTopBannerArea(context)
        ],
      ),
    );
  }

  SizedBox _createTopBannerArea(BuildContext context) {
    return SizedBox(
      height: 240,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.8),
        itemBuilder: (context, horizontalIndex) =>
            _buildHorizontalView(context, horizontalIndex),
      ),
    );
  }

  Padding _buildHorizontalView(BuildContext context, int horizontalIndex) {
    final imageUrl =
        'https://source.unsplash.com/random/275x240?sig=$horizontalIndex';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        child: Image.network(imageUrl),
      ),
    );
  }

}
