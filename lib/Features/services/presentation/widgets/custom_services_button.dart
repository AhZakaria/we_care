import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants.dart';
import '../../../../core/widgets/custom_general_button.dart';
import '../../../../core/widgets/space_box.dart';
import '../../../../styles.dart';
import '../manger/cubit/selected_services_cubit.dart';

class CustomServicesViewButton extends StatelessWidget {
  const CustomServicesViewButton({
    Key? key, required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedServicesCubit, SelectedServicesState>(
      builder: (context, state) {
        var selectedService = state is SelectedServicesChange
            ? state.numberOfSelectedServices
            : 0;
        return CustomButton(
          onTap: onTap,
          text: 'Continue',
          gradient: kLinearGradient,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpaceBox(),
              Text(
                'Continue',
                style: Styles.buttonText,
              ),
              AnimatedCrossFade(
                crossFadeState: selectedService == 0
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 250),
                firstChild: const SizedBox(),
                secondChild: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SpaceBox(
                      width: 2,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(999),
                        ),
                        padding: EdgeInsets.all(4),
                        child: Text(
                          '$selectedService',
                          style: Styles.bodyText1,
                        )),
                    SpaceBox(
                      width: .5,
                    ),
                    Text(
                      'items',
                      style: Styles.bodyText1,
                    ),
                  ],
                ),
              ),
              SpaceBox(),
            ],
          ),
        );
      },
    );
  }
}
