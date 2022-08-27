import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sart_up_project/Features/services/presentation/manger/cubit/selected_services_cubit.dart';
import 'package:sart_up_project/constants.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/space_box.dart';
import '../../../../styles.dart';

class ServicesListItem extends StatefulWidget {
  ServicesListItem({Key? key}) : super(key: key);

  @override
  State<ServicesListItem> createState() => _ServicesListItemState();
}

class _ServicesListItemState extends State<ServicesListItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isSelected) {
          isSelected = false;
          BlocProvider.of<SelectedServicesCubit>(context).deSelectService();
          setState(() {});
        } else {
          isSelected = true;
          BlocProvider.of<SelectedServicesCubit>(context).SelectService();

          setState(() {});
        }
      },
      child: AnimatedCrossFade(
        firstChild: SelectedService(),
        secondChild: NotSelectedService(),
        crossFadeState:
            isSelected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: const Duration(milliseconds: 500),
      ),
    );
  }
}

class SelectedService extends StatelessWidget {
  const SelectedService({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Color(0xffd7dbe2).withOpacity(.6),
            blurRadius: 30,
            spreadRadius: 4,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: Container(
                color: Colors.white,
                child: Icon(
                  Icons.add,
                  color: kSecondaryColor,
                )),
          ),
          SpaceBox(
            width: 1,
          ),
          SpaceBox(
            width: 1,
          ),
          SizedBox(
            width: SizeConfig.defaultSize * 21,
            child: Text(
              'Lorem Ipsum Dolor Sit Amet, Consetetur Sadipscing Elitr, Sed Diam Nonumy Eirmod Tempor Invidunt Ut Labore Et Dolore Magna Aliquyam Erat, Sed Diam Voluptua',
              maxLines: 2,
              style: Styles.bodyText1.copyWith(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NotSelectedService extends StatelessWidget {
  const NotSelectedService({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: kSecondaryColor,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xffd7dbe2).withOpacity(.6),
            blurRadius: 30,
            spreadRadius: 4,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(999),
                  color: Colors.white,
                  border: Border.all(
                    color: kSecondaryColor,
                  )),
              child: Icon(
                Icons.remove,
                color: kSecondaryColor,
              )),
          SpaceBox(
            width: 1,
          ),
          SpaceBox(
            width: 1,
          ),
          SizedBox(
            width: SizeConfig.defaultSize * 21,
            child: Text(
              'Lorem Ipsum Dolor Sit Amet, Consetetur Sadipscing Elitr, Sed Diam Nonumy Eirmod Tempor Invidunt Ut Labore Et Dolore Magna Aliquyam Erat, Sed Diam Voluptua',
              maxLines: 2,
              style: Styles.bodyText1.copyWith(
                fontSize: 16,
                color: Color(
                  0xff3A3A3A,
                ),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
