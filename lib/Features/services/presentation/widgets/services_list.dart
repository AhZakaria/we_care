import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sart_up_project/Features/services/presentation/widgets/services_list_item.dart';

class ServicesList extends StatelessWidget {
  const ServicesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(0),
      itemCount: 4,
      itemBuilder: (context, index) {
        // return Text('hello');
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          child: ServicesListItem(),
        );
      },
    );
  }
}
