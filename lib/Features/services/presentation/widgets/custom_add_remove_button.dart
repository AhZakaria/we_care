import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sart_up_project/Features/services/presentation/manger/cubit/selected_services_cubit.dart';

import '../../../../constants.dart';

class CustomAddRemoveButtom extends StatelessWidget {
  const CustomAddRemoveButtom({Key? key, this.isLeft = true}) : super(key: key);
  final bool isLeft;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var numberOfSlectedServices =
            BlocProvider.of<SelectedServicesCubit>(context)
                .numberOfSelectedServices;
        if (isLeft && numberOfSlectedServices != 0) {
          BlocProvider.of<SelectedServicesCubit>(context).deSelectService();
        } else {
          BlocProvider.of<SelectedServicesCubit>(context).SelectService();
        }
      },
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: isLeft
              ? const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                )
              : const BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
        ),
        child: Center(
          child: Icon(
            isLeft ? Icons.remove : Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
