import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sart_up_project/Features/google_map/domain/models/tap_model.dart';
import 'package:sart_up_project/Features/google_map/presentation/widgets/custom_google_map_tap.dart';
import 'package:sart_up_project/constants.dart';
import 'package:sart_up_project/core/widgets/custom_tap.dart';
import 'package:sart_up_project/core/widgets/space_box.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../styles.dart';

class Filterlist extends StatefulWidget {
  @override
  State<Filterlist> createState() => _FilterlistState();
}

class _FilterlistState extends State<Filterlist> {
  int selectedIndex = 0;

  List<TapModel> taps = [
    TapModel(FontAwesomeIcons.houseChimneyMedical, 'hospital'),
    TapModel(FontAwesomeIcons.flask, 'Lap'),
    TapModel(FontAwesomeIcons.prescriptionBottleMedical, 'Pharmacy'),
    TapModel(FontAwesomeIcons.stethoscope, 'doctor'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.defaultSize * 11 / 1.8,
      child: Row(
        children: [
          GestureDetector(
              onTap: () {
                selectedIndex = taps.length;
                setState(() {});
              },
              child: CustomGoogleMapTap(
                  isSelected: selectedIndex == taps.length, text: 'All')),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: taps.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      selectedIndex = index;
                      setState(() {});
                    },
                    child: CustomGoogleMapTap(
                      padding: 10,
                      icon: taps[index].icon,
                      text: taps[index].text,
                      isSelected: selectedIndex == index,
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
