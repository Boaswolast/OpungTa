import 'package:getdrive_v11/presentation/slash_screen/slash_screen.dart';
import 'package:getdrive_v11/presentation/slash_screen/binding/slash_binding.dart';
import 'package:getdrive_v11/presentation/on_boarding_one_screen/on_boarding_one_screen.dart';
import 'package:getdrive_v11/presentation/on_boarding_one_screen/binding/on_boarding_one_binding.dart';
import 'package:getdrive_v11/presentation/on_boarding_two_screen/on_boarding_two_screen.dart';
import 'package:getdrive_v11/presentation/on_boarding_two_screen/binding/on_boarding_two_binding.dart';
import 'package:getdrive_v11/presentation/on_boarding_three_screen/on_boarding_three_screen.dart';
import 'package:getdrive_v11/presentation/on_boarding_three_screen/binding/on_boarding_three_binding.dart';
import 'package:getdrive_v11/presentation/on_boarding_four_screen/on_boarding_four_screen.dart';
import 'package:getdrive_v11/presentation/on_boarding_four_screen/binding/on_boarding_four_binding.dart';
import 'package:getdrive_v11/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:getdrive_v11/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:getdrive_v11/presentation/forget_the_password_screen/forget_the_password_screen.dart';
import 'package:getdrive_v11/presentation/forget_the_password_screen/binding/forget_the_password_binding.dart';
import 'package:getdrive_v11/presentation/notification_set_successfully_screen/notification_set_successfully_screen.dart';
import 'package:getdrive_v11/presentation/notification_set_successfully_screen/binding/notification_set_successfully_binding.dart';
import 'package:getdrive_v11/presentation/notification_screen/notification_screen.dart';
import 'package:getdrive_v11/presentation/notification_screen/binding/notification_binding.dart';
import 'package:getdrive_v11/presentation/complete_profile_screen/complete_profile_screen.dart';
import 'package:getdrive_v11/presentation/complete_profile_screen/binding/complete_profile_binding.dart';
import 'package:getdrive_v11/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:getdrive_v11/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:getdrive_v11/presentation/access_location_screen/access_location_screen.dart';
import 'package:getdrive_v11/presentation/access_location_screen/binding/access_location_binding.dart';
import 'package:getdrive_v11/presentation/home_container_screen/home_container_screen.dart';
import 'package:getdrive_v11/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:getdrive_v11/presentation/maps_screen/maps_screen.dart';
import 'package:getdrive_v11/presentation/maps_screen/binding/maps_binding.dart';
import 'package:getdrive_v11/presentation/maps_one_screen/maps_one_screen.dart';
import 'package:getdrive_v11/presentation/maps_one_screen/binding/maps_one_binding.dart';
import 'package:getdrive_v11/presentation/maps_parking_slot_1_screen/maps_parking_slot_1_screen.dart';
import 'package:getdrive_v11/presentation/maps_parking_slot_1_screen/binding/maps_parking_slot_1_binding.dart';
import 'package:getdrive_v11/presentation/maps_navigation_screen/maps_navigation_screen.dart';
import 'package:getdrive_v11/presentation/maps_navigation_screen/binding/maps_navigation_binding.dart';
import 'package:getdrive_v11/presentation/maps_details_screen/maps_details_screen.dart';
import 'package:getdrive_v11/presentation/maps_details_screen/binding/maps_details_binding.dart';
import 'package:getdrive_v11/presentation/apps_recently_parking_active_tab_container_screen/apps_recently_parking_active_tab_container_screen.dart';
import 'package:getdrive_v11/presentation/apps_recently_parking_active_tab_container_screen/binding/apps_recently_parking_active_tab_container_binding.dart';
import 'package:getdrive_v11/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:getdrive_v11/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String slashScreen = '/slash_screen';

  static const String onBoardingOneScreen = '/on_boarding_one_screen';

  static const String onBoardingTwoScreen = '/on_boarding_two_screen';

  static const String onBoardingThreeScreen = '/on_boarding_three_screen';

  static const String onBoardingFourScreen = '/on_boarding_four_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String forgetThePasswordScreen = '/forget_the_password_screen';

  static const String notificationSetSuccessfullyScreen =
      '/notification_set_successfully_screen';

  static const String notificationScreen = '/notification_screen';

  static const String completeProfileScreen = '/complete_profile_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String accessLocationScreen = '/access_location_screen';

  static const String profilePage = '/profile_page';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String mapsScreen = '/maps_screen';

  static const String mapsOneScreen = '/maps_one_screen';

  static const String mapsParkingSlot1Screen = '/maps_parking_slot_1_screen';

  static const String mapsNavigationScreen = '/maps_navigation_screen';

  static const String mapsDetailsScreen = '/maps_details_screen';

  static const String appsHistoryPaymentPage = '/apps_history_payment_page';

  static const String appsHistoryPaymentTabContainerPage =
      '/apps_history_payment_tab_container_page';

  static const String appsRecentlyParkingActivePage =
      '/apps_recently_parking_active_page';

  static const String appsRecentlyParkingActiveTabContainerScreen =
      '/apps_recently_parking_active_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: slashScreen,
      page: () => SlashScreen(),
      bindings: [
        SlashBinding(),
      ],
    ),
    GetPage(
      name: onBoardingOneScreen,
      page: () => OnBoardingOneScreen(),
      bindings: [
        OnBoardingOneBinding(),
      ],
    ),
    GetPage(
      name: onBoardingTwoScreen,
      page: () => OnBoardingTwoScreen(),
      bindings: [
        OnBoardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onBoardingThreeScreen,
      page: () => OnBoardingThreeScreen(),
      bindings: [
        OnBoardingThreeBinding(),
      ],
    ),
    GetPage(
      name: onBoardingFourScreen,
      page: () => OnBoardingFourScreen(),
      bindings: [
        OnBoardingFourBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: forgetThePasswordScreen,
      page: () => ForgetThePasswordScreen(),
      bindings: [
        ForgetThePasswordBinding(),
      ],
    ),
    GetPage(
      name: notificationSetSuccessfullyScreen,
      page: () => NotificationSetSuccessfullyScreen(),
      bindings: [
        NotificationSetSuccessfullyBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: completeProfileScreen,
      page: () => CompleteProfileScreen(),
      bindings: [
        CompleteProfileBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: accessLocationScreen,
      page: () => AccessLocationScreen(),
      bindings: [
        AccessLocationBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: mapsScreen,
      page: () => MapsScreen(),
      bindings: [
        MapsBinding(),
      ],
    ),
    GetPage(
      name: mapsOneScreen,
      page: () => MapsOneScreen(),
      bindings: [
        MapsOneBinding(),
      ],
    ),
    GetPage(
      name: mapsParkingSlot1Screen,
      page: () => MapsParkingSlot1Screen(),
      bindings: [
        MapsParkingSlot1Binding(),
      ],
    ),
    GetPage(
      name: mapsNavigationScreen,
      page: () => MapsNavigationScreen(),
      bindings: [
        MapsNavigationBinding(),
      ],
    ),
    GetPage(
      name: mapsDetailsScreen,
      page: () => MapsDetailsScreen(),
      bindings: [
        MapsDetailsBinding(),
      ],
    ),
    GetPage(
      name: appsRecentlyParkingActiveTabContainerScreen,
      page: () => AppsRecentlyParkingActiveTabContainerScreen(),
      bindings: [
        AppsRecentlyParkingActiveTabContainerBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SlashScreen(),
      bindings: [
        SlashBinding(),
      ],
    )
  ];
}
