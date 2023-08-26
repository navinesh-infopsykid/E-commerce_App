import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';




import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:testtt/Amazon.dart';

import 'package:testtt/Z-Pro/2-game.dart';
import 'package:testtt/ageee.dart';
import 'package:testtt/color.dart';
import 'package:testtt/insta.dart';
import 'package:testtt/new%20app/map.dart';
import 'package:testtt/new%20app/tamil%20audio.dart';
import 'package:testtt/new%20app/tamil.dart';
import 'package:testtt/new%20app/tamilhome.dart';
import 'package:testtt/new%20app/tamilletters.dart';
import 'package:testtt/new%20app/tamillettersm.dart';
import 'package:testtt/new%20pro.dart';
import 'package:testtt/page.dart';

import 'package:testtt/pro%20spotify.dart';
import 'package:testtt/product.dart';
import 'package:testtt/samone.dart';
import 'package:testtt/splash%20screen.dart';
import 'package:testtt/theme.dart';

import 'Z-Pro/3-game.dart';
import 'Z-Pro/4-new.dart';
import 'Z-Pro/5-game.dart';
import 'Z-Pro/game.dart';
import 'addlist.dart';
import 'BMI.dart';

import 'Task2.dart';
import 'addlist.dart';
import 'agecalc.dart';
import 'animation.dart';
import 'calc.dart';
import 'list.dart';
import 'model/apione.dart';
import 'model/apitwo.dart';
import 'new app/paint.dart';


// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(ChatApp());
// }
//
// class ChatApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Chat App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ChatScreen(),
//     );
//   }
// }

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {


  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  bool ison = false;

  @override
  Widget build(BuildContext context)
  {
    return ChangeNotifierProvider(
        create: (_) => ThemeModel(),
        child: Consumer<ThemeModel>(
        builder: (context, ThemeModel themeNotifier, child)
    {
      return MaterialApp(
        title: 'Navi works',
        debugShowCheckedModeBanner: false,
        theme: themeNotifier.isDark ? darktheme : lighttheme,

        home:  maps(),
        builder: (context, index) =>
            ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(context, index!),
              maxWidth: 1200,
              minWidth: 450,

              defaultScale: true,
              breakpoints: [
                const ResponsiveBreakpoint.resize(450, name: MOBILE),
                const ResponsiveBreakpoint.autoScale(450, name: MOBILE),
                const ResponsiveBreakpoint.resize(450, name: TABLET),
                const ResponsiveBreakpoint.autoScale(450, name: TABLET),
                const ResponsiveBreakpoint.resize(450, name: DESKTOP),
                const ResponsiveBreakpoint.autoScale(450, name: DESKTOP),
              ],
            ),

      );
    }));
  }
}
