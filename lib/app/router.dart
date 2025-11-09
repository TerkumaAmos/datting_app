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

import 'package:datting_app/features/shared%20/presentation/screens/app_setting.dart';
import 'package:datting_app/features/shared%20/presentation/screens/app_setting2.dart' show AppSetting2Screen;
import 'package:datting_app/features/shared%20/presentation/screens/chat_screen.dart';
import 'package:datting_app/features/shared%20/presentation/screens/contact_us.dart';
import 'package:datting_app/features/shared%20/presentation/screens/home_page_screen.dart';
import 'package:datting_app/features/shared%20/presentation/screens/likes_screen.dart';
import 'package:datting_app/features/shared%20/presentation/screens/match_profile.dart';
import 'package:datting_app/features/shared%20/presentation/screens/match_screen.dart';
import 'package:datting_app/features/shared%20/presentation/screens/message_Screen.dart';
import 'package:datting_app/features/shared%20/presentation/screens/onboarding/onboarding_screen3.dart';
import 'package:datting_app/features/shared%20/presentation/screens/privacy_policy.dart';
import 'package:datting_app/features/shared%20/presentation/screens/string_premium.dart';
import 'package:datting_app/features/shared%20/presentation/splash_screen.dart';

import 'package:datting_app/shared/widgets/pageview/onboarding_pageview.dart';
import 'package:go_router/go_router.dart';

class RouteNames {
  static const onboard = 'onboard';
  static const login = 'login';
  static const createAccount = 'createAccount';
  static const enterNum = 'enterNum';
  static const splash = 'splash';
  static const signIn = 'signIn';
  static const opt = 'opt';
  static const genderSelector = 'genderSelector';
  static const birthday = 'birthday';
  static const onboard2 = 'onboard2';
  static const verify = 'verify';
  static const addPhoto = 'addPhoto';
  static const selectScreen = 'selectScreen';
  static const home = 'home';
  static const match = 'match';
  static const matchScreen = 'matchScreen';
  static const stringPremium = 'stringPremium';
  static const appSettings = 'appSettings';
  static const appSettings2 = 'appSettings2';
  static const contact = 'contact';
  static const privacy = 'privacy';
  static const messages = 'messages';
  static const chatscreen = 'chatscreen';
  static const likes = 'likes'; 
}

final GoRouter router = GoRouter(
  initialLocation: '/matchScreen',
  routes: [
    GoRoute(
      path: '/splash',
      name: RouteNames.splash,
      builder: (context, state) =>  SplashScreen(),
    ),
    GoRoute(
      path: '/onboard',
      name: RouteNames.onboard,
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: '/login',
      name: RouteNames.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/createAccount',
      name: RouteNames.createAccount,
      builder: (context, state) => const CreateAccountScreen(),
    ),
    GoRoute(
      path: '/enterNum',
      name: RouteNames.enterNum,
      builder: (context, state) => const EnterNumScreen(),
    ),
    GoRoute(
      path: '/signIn',
      name: RouteNames.signIn,
      builder: (context, state) => const SignInScreen(),
    ),
    GoRoute(
      path: '/opt',
      name: RouteNames.opt,
      builder: (context, state) => const OptScreen(),
    ),
    GoRoute(
      path: '/genderSelector',
      name: RouteNames.genderSelector,
      builder: (context, state) => const GenderSelectorScreen(),
    ),
    GoRoute(
      path: '/birthday',
      name: RouteNames.birthday,
      builder: (context, state) => const BirthdayScreen(),
    ),
    GoRoute(
      path: '/onboard2',
      name: RouteNames.onboard2,
      builder: (context, state) => const OnboardingScreen3(),
    ),
    GoRoute(
      path: '/verify',
      name: RouteNames.verify,
      builder: (context, state) => const VerifyScreen(),
    ),
    GoRoute(
      path: '/addPhoto',
      name: RouteNames.addPhoto,
      builder: (context, state) => const AddPhotoScreen(),
    ),
    GoRoute(
      path: '/selectScreen',
      name: RouteNames.selectScreen,
      builder: (context, state) => const SelectScreen(),
    ),
    GoRoute(
      path: '/home',
      name: RouteNames.home,
      builder: (context, state) => const HomePageScreen(),
    ),
    GoRoute(
      path: '/match',
      name: RouteNames.match,
      builder: (context, state) => const MatchProfileScreen(),
    ),
    GoRoute(
      path: '/matchScreen',
      name: RouteNames.matchScreen,
      builder: (context, state) => const MatchScreen(),
    ),
    GoRoute(
      path: '/stringPremium',
      name: RouteNames.stringPremium,
      builder: (context, state) => const StringPremiumScreen(),
    ),
    GoRoute(
      path: '/appSettings',
      name: RouteNames.appSettings,
      builder: (context, state) => const AppSettingScreen(),
    ),
    GoRoute(
      path: '/appSettings2',
      name: RouteNames.appSettings2,
      builder: (context, state) => const AppSetting2Screen(),
    ),
    GoRoute(
      path: '/contact',
      name: RouteNames.contact,
      builder: (context, state) => const ContactUsScreen(),
    ),
    GoRoute(
      path: '/privacy',
      name: RouteNames.privacy,
      builder: (context, state) => const PrivacyPolicyScreen(),
    ),
    GoRoute(
      path: '/messages',
      name: RouteNames.messages,
      builder: (context, state) => const MessageScreen(),
    ),
    GoRoute(
      path: '/chatscreen',
      name: RouteNames.chatscreen,
      builder: (context, state) => const ChatScreen(),
    ),
    GoRoute(
      path: '/likes',
      name: RouteNames.likes,
      builder: (context, state) => const LikesScreen(),
    ),
  ],
);