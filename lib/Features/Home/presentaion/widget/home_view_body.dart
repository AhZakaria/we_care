import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sart_up_project/Features/Home/presentaion/widget/categories_widget.dart';
import 'package:sart_up_project/Features/Home/presentaion/widget/custom_app_bar.dart';
import 'package:sart_up_project/core/widgets/custom_search_text_field.dart';
import 'package:sart_up_project/constants.dart';
import 'package:sart_up_project/core/utils/Assets.dart';
import 'package:sart_up_project/core/utils/size_config.dart';
import 'package:sart_up_project/core/widgets/space_box.dart';
import 'package:sart_up_project/styles.dart';

import 'home_view_header.dart';
import 'offer_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeViewHeader(),
          CategoriesWidget(),
          SpaceBox(
            height: 2,
          ),
          SpaceBox(),
          OffersWidget(),
        ],
      ),
    );
  }
}
