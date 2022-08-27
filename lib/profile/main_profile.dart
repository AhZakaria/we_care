import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:sart_up_project/Features/Home/manger/cubit/google_map_cubit.dart';
import 'package:sart_up_project/Features/services/presentation/manger/cubit/selected_services_cubit.dart';
import 'package:sart_up_project/generated/l10n.dart';
import 'package:sart_up_project/profile/views/splash_view2.dart';


void main() {
  runApp(WeCare());
}

class WeCare extends StatelessWidget {
  const WeCare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SelectedServicesCubit(),
        ),
        BlocProvider(
          create: (context) => GoogleMapCubit(),
        )
      ],
      child: GetMaterialApp(
        home: SplashView2(),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }
}
