import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../constants.dart';
import '../widgets/selected_services_view_body.dart';

class SelectedServicesView extends StatelessWidget {
  const SelectedServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SelectedServicesViewBody(),
    );
  }
}
