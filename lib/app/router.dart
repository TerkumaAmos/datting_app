import 'package:datting_app/features/auth%20/presentation/screens/add_photo.dart';
import 'package:datting_app/features/auth%20/presentation/screens/birthday_screen.dart';
import 'package:datting_app/features/auth%20/presentation/screens/create_account_screen.dart';
import 'package:datting_app/features/auth%20/presentation/screens/enter_num.dart';
import 'package:datting_app/features/auth%20/presentation/screens/gender_selector.dart';
import 'package:datting_app/features/auth%20/presentation/screens/login_screen.dart';
import 'package:datting_app/features/auth%20/presentation/screens/opt_screen.dart';
import 'package:datting_app/features/auth%20/presentation/screens/select_screen.dart';
import 'package:datting_app/features/auth%20/presentation/screens/sign_in_screen.dart';
import 'package:datting_app/features/auth%20/presentation/screens/verify_screen.dart';
import 'package:datting_app/features/shared%20/presentation/screens/home_page_screen.dart';
import 'package:datting_app/features/shared%20/presentation/screens/match_profile.dart';
import 'package:datting_app/features/shared%20/presentation/screens/match_screen.dart';
import 'package:datting_app/features/shared%20/presentation/screens/onboarding/onboarding_screen3.dart';
import 'package:datting_app/features/shared%20/presentation/screens/string_premium.dart';
import 'package:datting_app/features/shared%20/presentation/splash_screen.dart';
import 'package:datting_app/shared/widgets/pageview/onboarding_pageview.dart';
import 'package:go_router/go_router.dart';


class RouteNames{
  static const onboard = 'onboard';
  static const login = 'login';
  static const createAccount ='createAccount';
  static const enterNum =' enterNum';
  static const splash = 'splash';
  static const signIn ='signIn';
  static const opt ='opt';
  static const genderSelector ='genderSelector';
  static const birthday ='birthday';
  static const onboard2 ='oonboard2';
  static const verify = 'verify';
  static const addPhoto = 'addPhoto';
  static const selectScreen = 'selectScreen';
  static const home = 'home';
  static const match = 'match';
  static const matchScreen = 'matchScreen';
  static const stringPremium = 'stringPremium';

}

final GoRouter router =GoRouter(
  initialLocation: '/stringPremium',
  
  routes:[
  GoRoute(
      path: '/splash',
      name: RouteNames.splash,
      builder: (context, state) =>  SplashScreen(),
    ),
    GoRoute(
      path: '/onboard',
      name: RouteNames.onboard,
      builder: (context, state) =>  OnboardingScreen(),
    ),
    GoRoute(
      path: '/login',
      name: RouteNames.login,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/createAccount',
      name: RouteNames.createAccount,
      builder: (context, state) =>  CreateAccountScreen(),

    ),
    GoRoute(
      path: '/enterNum',
      name: RouteNames.enterNum,
      builder: (context, state) => EnterNumScreen(),
    ),
    GoRoute(
      path: '/signIn',
      name: RouteNames.signIn,
      builder: (context, state) =>  SignInScreen(),
    ),
    GoRoute(
      path: '/opt',
      name: RouteNames.opt,
      builder: (context, state) =>  OptScreen(),
    ),
    GoRoute(
      path: '/genderSelector',
      name: RouteNames.genderSelector,
      builder: (context, state) =>  GenderSelectorScreen(),
    ),
     GoRoute(
      path: '/birthday',
      name: RouteNames.birthday,
      builder: (context, state) =>  BirthdayScreen(),
    ),
    
    GoRoute(
      path: '/onboard2',
      name: RouteNames.onboard2,
      builder: (context, state) =>  OnboardingScreen3(),
    ),
     
    GoRoute(
      path: '/verify',
      name: RouteNames.verify,
      builder: (context, state) =>  VerifyScreen(),
    ),
     
    GoRoute(
      path: '/addPhoto',
      name: RouteNames.addPhoto,
      builder: (context, state) =>  AddPhotoScreen(),
    ),
     
    GoRoute(
      path: '/selectScreen',
      name: RouteNames.selectScreen,
      builder: (context, state) => SelectScreen(),
    ),
    GoRoute(
      path: '/home',
      name: RouteNames.home,
      builder: (context, state) =>HomePageScreen(),
    ),
    GoRoute(
      path: '/match',
      name: RouteNames.match,
      builder: (context, state) =>MatchProfileScreen(),
    ),
    GoRoute(
      path: '/matchScreen',
      name: RouteNames.matchScreen,
      builder: (context, state) =>MatchScreen(),
    ),
    
     GoRoute(
      path: '/stringPremium',
      name: RouteNames.stringPremium,
      builder: (context, state) =>StringPremiumScreen(),
    ),
    
    
    
    
  ]
   );