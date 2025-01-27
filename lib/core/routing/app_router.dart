import 'package:champs/core/routing/routes.dart';
import 'package:champs/features/auth/login/ui/check_with_code_login.dart';
import 'package:champs/features/home_screen/ui/home_screen.dart';
import 'package:champs/features/on_boarding/on_boarding_view.dart';
import 'package:champs/features/search_screens/ui/result_search.dart';
import 'package:champs/features/search_screens/ui/search_screen.dart';
import 'package:champs/features/sessions_screen/ui/show_session_dedails.dart';
import 'package:champs/screens/accepted_order_screen.dart';
import 'package:champs/screens/achievements_screen.dart';
import 'package:champs/screens/add_certificate_screen.dart';
import 'package:champs/screens/add_experience_screen.dart';
import 'package:champs/features/chat_screen/ui/chat_screen.dart';
import 'package:champs/screens/book_your_session.dart';
import 'package:champs/screens/contacts_screen.dart';
import 'package:champs/features/auth/login/ui/correct_login.dart';
import 'package:champs/screens/edit_certificate_screen.dart';
import 'package:champs/screens/edit_experience_screen.dart';
import 'package:champs/screens/edit_profile_screen.dart';
import 'package:champs/features/auth/login/ui/enter_email_forget_password.dart';
import 'package:champs/screens/join_as_guide_instructions_screen.dart';
import 'package:champs/screens/join_as_guide_screen.dart';
import 'package:champs/screens/mente_profile_screen.dart';
import 'package:champs/screens/mentor_profile_screen.dart';
import 'package:champs/screens/more_menu.dart';
import 'package:champs/features/notification/ui/notifcation_screen.dart';
import 'package:champs/screens/rejected_order_screen.dart';
import 'package:champs/features/auth/register/ui/sign_up_screen.dart';
import 'package:champs/screens/under_review_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static BuildContext? currentContext = navigatorKey.currentContext;

  Route generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.editProfileScreen:
        return MaterialPageRoute(builder: (_) => const EditProfileScreen());
      case Routes.addCertificateScreen:
        return MaterialPageRoute(builder: (_) => const AddCertificateScreen());
      case Routes.addExperienceScreen:
        return MaterialPageRoute(builder: (_) => const AddExperienceScreen());
      case Routes.editCertificateScreen:
        return MaterialPageRoute(builder: (_) => const EditCertificateScreen());
      case Routes.editExperienceScreen:
        return MaterialPageRoute(builder: (_) => const EditExperienceScreen());
      case Routes.underReviewScreen:
        return MaterialPageRoute(builder: (_) => const UnderReviewScreen());
      case Routes.rejectedOrderScreen:
        return MaterialPageRoute(builder: (_) => const RejectedOrderScreen());
      case Routes.acceptedOrderScreen:
        return MaterialPageRoute(builder: (_) => const AcceptedOrderScreen());
      case Routes.joinAsGuideScreen:
        return MaterialPageRoute(builder: (_) => const JoinAsGuideScreen());
      case Routes.joinAsGuideScreenInstructions:
        return MaterialPageRoute(
            builder: (_) => const JoinAsGuideInstructionsScreen());
      case Routes.moreMenuScreen:
        return MaterialPageRoute(builder: (_) => const MoreMenu());
      case Routes.achievementsScreen:
        return MaterialPageRoute(builder: (_) => const AchievementsScreen());
      case Routes.contactsScreen:
        return MaterialPageRoute(builder: (_) => const ContactsScreen());
      case Routes.notificationsScreen:
        return MaterialPageRoute(builder: (_) => const NotifcationScreen());
        case Routes.chatScreen:
        return MaterialPageRoute(builder: (_) => const ChatScreen());
        case Routes.enterEmailForPasswordResetScreen:
        return MaterialPageRoute(builder: (_) => const EnterEmailForgetPassword());
        case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreenForNavagationBar());
        case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case Routes.correctLogin:
        return MaterialPageRoute(builder: (_) => const CorrectLogin());
      case Routes.checkWithCodeLogin:
        return MaterialPageRoute(builder: (_) => const CheckWithCodeLogin());
      case Routes.menteProfileScreen:
        return MaterialPageRoute(builder: (_) => const MenteProfileScreen());
        case Routes.bookYourSession:
        return MaterialPageRoute(builder: (_) => const BookYourSession());
        case Routes.showSessionDetails:
        return MaterialPageRoute(builder: (_) => const ShowSessionDetails());
      case Routes.searchScreen:
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case Routes.resultSearchScreen:
        return MaterialPageRoute(builder: (_) => const ResultSearch());
      case Routes.mentorProfileScreen:
        return MaterialPageRoute(builder: (_) => const MentorProfileScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

