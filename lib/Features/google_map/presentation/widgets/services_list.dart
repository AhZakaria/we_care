import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sart_up_project/Features/Home/manger/cubit/google_map_cubit.dart';
import 'package:sart_up_project/Features/google_map/presentation/widgets/service_card.dart';

import '../../../../core/utils/size_config.dart';

class GoogleMapServicesList extends StatelessWidget {
  const GoogleMapServicesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.defaultSize * 29,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  BlocProvider.of<GoogleMapCubit>(context).ChangeLocation();
                },
                child: ServiceCard());
          }),
    );
  }
}
