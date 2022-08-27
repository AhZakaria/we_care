import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sart_up_project/Features/services/presentation/widgets/selected_service_item.dart';

import '../manger/cubit/selected_services_cubit.dart';
class SelectedServicesList extends StatelessWidget {
  const SelectedServicesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: BlocProvider.of<SelectedServicesCubit>(context)
            .numberOfSelectedServices,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: SelectedServiceItem(),
          );
        });
  }
}