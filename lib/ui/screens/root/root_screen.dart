import 'package:bank_app/core/constant/app_assets.dart';
import 'package:bank_app/core/constant/colors.dart';
import 'package:bank_app/ui/custom_widgets/bottom_navigator_bar.dart';
import 'package:bank_app/ui/screens/root/root_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RootScreen extends StatelessWidget {
  final int? selectedScreen;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  RootScreen({super.key, this.selectedScreen = 0});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RootViewModel(selectedScreen),
      child: Consumer<RootViewModel>(
        builder: (context, model, child) => Scaffold(
          key: _scaffoldKey,
          backgroundColor: whiteColor,

          ///
          /// Start Body
          ///
          body: model.allScreen[model.selectedScreen],

          ///
          /// BottomBar
          ///
          bottomNavigationBar: bottomBar(model),
        ),
      ),
    );
  }

  Widget bottomBar(RootViewModel model) {
    return BottomAppBar(
      color: blueColor,
      elevation: 0.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomBottomNavigator(
            currentIndex: model.selectedScreen,
            indexNumber: 0,
            text: 'Credit',
            image:
                model.selectedScreen == 0 ? AppAssets.wallet : AppAssets.wallet,
            onPressed: () {
              model.updatedScreen(0);
            },
          ),
          CustomBottomNavigator(
            currentIndex: model.selectedScreen,
            indexNumber: 1,
            text: 'Debit',
            image:
                model.selectedScreen == 1 ? AppAssets.wallet : AppAssets.wallet,
            onPressed: () {
              model.updatedScreen(1);
            },
          ),
          CustomBottomNavigator(
            currentIndex: model.selectedScreen,
            indexNumber: 2,
            text: 'History',
            image:
                model.selectedScreen == 2 ? AppAssets.money : AppAssets.money,
            onPressed: () {
              model.updatedScreen(2);
            },
          ),
          // CustomBottomNavigator(
          //   currentIndex: model.selectedScreen,
          //   indexNumber: 3,
          //   text: 'Ask a Vet',
          //   image: model.selectedScreen == 3 ? AppAssets.chat : AppAssets.chat,
          //   onPressed: () {
          //     Get.to(const MessagesScreen());
          //   },
          // ),
          // CustomBottomNavigator(
          //   currentIndex: model.selectedScreen,
          //   indexNumber: 4,
          //   text: 'Menu',
          //   image: model.selectedScreen == 4
          //       ? AppAssets.menu_icon
          //       : AppAssets.menu_icon,
          //   onPressed: () {
          //     _scaffoldKey.currentState?.openEndDrawer();
          //   },
          // ),
        ],
      ),
    );
  }
}
