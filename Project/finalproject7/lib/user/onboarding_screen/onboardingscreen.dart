import 'package:finalproject7/user/onboarding_screen/widgets/header.dart';
import 'package:finalproject7/user/onboarding_screen/widgets/next_page_button.dart';
import 'package:finalproject7/user/onboarding_screen/widgets/onboarding_page_indicator.dart';
import 'package:finalproject7/user/onboarding_screen/widgets/pages/community/community_dark_card_content.dart';
import 'package:finalproject7/user/onboarding_screen/widgets/pages/community/community_light_card_content.dart';
import 'package:finalproject7/user/onboarding_screen/widgets/pages/community/community_text_column.dart';
import 'package:finalproject7/user/onboarding_screen/widgets/pages/onboarding_page.dart';
import 'package:finalproject7/user/onboarding_screen/widgets/pages/relationships/relationships_dark_card_content.dart';
import 'package:finalproject7/user/onboarding_screen/widgets/pages/relationships/relationships_light_card_content.dart';
import 'package:finalproject7/user/onboarding_screen/widgets/pages/relationships/relationships_text_column.dart';
import 'package:finalproject7/user/onboarding_screen/widgets/pages/work/work_dark_card_content.dart';
import 'package:finalproject7/user/onboarding_screen/widgets/pages/work/work_light_card_content.dart';
import 'package:finalproject7/user/onboarding_screen/widgets/pages/work/work_text_column.dart';
import 'package:flutter/material.dart';
import '../../admin/adminlogin.dart';
import '../constants.dart';
import '../login/login.dart';


class Onboarding extends StatefulWidget
{
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding>
{
  int _currentPage = 1;

  bool get isFirstPage => _currentPage == 1;

  Widget _getPage() {
    switch (_currentPage) {
      case 1:
        return const OnboardingPage(
          number: 1,
          lightCardChild: CommunityLightCardContent(),
          darkCardChild: CommunityDarkCardContent(),
          textColumn: CommunityTextColumn(),
        );
      case 2:
        return const OnboardingPage(
          number: 2,
          lightCardChild: EducationLightCardContent(),
          darkCardChild: EducationDarkCardContent(),
          textColumn: EducationTextColumn(),
        );
      case 3:
        return const OnboardingPage(
          number: 3,
          lightCardChild: WorkLightCardContent(),
          darkCardChild: WorkDarkCardContent(),
          textColumn: WorkTextColumn(),
        );
      default:
        throw Exception("Page with number '$_currentPage' does not exist.");
    }
  }
  void _setNextPage(int nextPageNumber) {
    setState(() {
      _currentPage = nextPageNumber;
    });
  }

  void _nextPage() {
    switch (_currentPage) {
      case 1:
        _setNextPage(2);
        break;
      case 2:
        _setNextPage(3);
        break;
      case 3:
        _goToLogin();
        break;
    }
  }
  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
      backgroundColor: kBrown,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kPaddingL),
          child: Column(
            children: <Widget>[
              Header(onSkip: _goToLogin),
              Expanded(child: _getPage()),
              OnboardingPageIndicator(
                currentPage: _currentPage,
                child: NextPageButton(onPressed: _nextPage),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _goToLogin()
  {
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AdminLoginApp()));

    //AdminLoginApp
  }
}
