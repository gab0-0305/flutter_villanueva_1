import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_villanueva_1/screens/home_screen.dart';
import 'package:flutter_villanueva_1/screens/newsfeed_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Facebook Replication',
        initialRoute: '/home',
        routes: {
          '/home': (context) => const HomeScreen(),
          '/newsfeed': (context) => const NewsfeedScreen(),
        },
      ),
    );
  }
}
