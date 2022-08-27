import 'package:flutter/material.dart';
import 'package:sart_up_project/core/utils/size_config.dart';

import '../../../../core/widgets/space_box.dart';
import '../../../../styles.dart';
import 'offer_item.dart';

class OffersWidget extends StatelessWidget {
  const OffersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Get Offers now',
            style: Styles.bodyText2.copyWith(
              color: Colors.black,
            ),
          ),
          SpaceBox(
            height: 4,
          ),
          SizedBox(
            height: SizeConfig.defaultSize * 15,
            child: ListView.builder(
                padding: EdgeInsets.all(0),
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return OfferItem();
                }),
          ),
          SpaceBox(
            height: 2,
          ),
        ],
      ),
    );
  }
}
