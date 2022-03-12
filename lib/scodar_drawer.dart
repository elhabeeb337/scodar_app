import 'package:flutter/material.dart';
import 'package:scodar_app/Pages/BuyCredit.dart';
import 'package:scodar_app/Pages/home.dart';
import 'package:scodar_app/Pages/settingPage.dart';



class ScodarDrawer extends StatelessWidget {
  const ScodarDrawer({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
      return Theme(
      data: Theme.of(context).copyWith(canvasColor: const Color(0xffC4C4C4)),
      child: Drawer(
           child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _buildDrawerHeader(context),
            _buildPortfolioItem1(context),
            _buildPortfolioItem2(context),
            _buildPortfolioItem3(context),
            _buildPortfolioItem4(context),
            _buildDivider(context),
            _buildPortfolioItem5(context),
          ],
        ),
      ),
    );
  }

  UserAccountsDrawerHeader _buildDrawerHeader(BuildContext) {
    return UserAccountsDrawerHeader(
      decoration: const BoxDecoration(
        color: Color(0xff263238),
      ),
      accountName: const Text(
        'Username',
        style: TextStyle(
          color: Color(0xffC4C4C4),
        ),
      ),
      accountEmail: const Text(
        'Username@example.com',
        style: TextStyle(color: Color(0xffC4C4C4), fontStyle: FontStyle.italic),
      ),
      currentAccountPicture: GestureDetector(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xffC4C4C4),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.person, size: 50.0),
          constraints: const BoxConstraints(maxHeight: 3),
        ),
      ),
    );
  }

  ListTile _buildPortfolioItem1(BuildContext context) {
    return ListTile(
      title: const Text(
        'Home',
        style: TextStyle(color: Color(0xff263238)),
      ),
      leading: const Icon(
        Icons.home,
        color: Color(0xff263238),
      ),
      onTap: (){
        Navigator.of(context).pop();

        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const MyScodarHome(
          ),
          ),
        );
      },
    );

  }

  ListTile _buildPortfolioItem2(BuildContext context) {
    return  ListTile(
      title: const Text(
        'Buy Credit',
        style: TextStyle(color: Color(0xff263238)),
      ),
      leading: const Icon(
        Icons.credit_card,
        color: Color(0xff263238),
      ),
      onTap: (){
        Navigator.of(context).pop();

        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const BuyCredit()),
          );
      },
    );
  }

  ListTile _buildPortfolioItem3(BuildContext context) {
    return const ListTile(
      title: Text(
        'Credit Usage Statistics',
        style: TextStyle(color: Color(0xff263238)),
      ),
      leading: Icon(
        Icons.bar_chart,
        color: Color(0xff263238),
      ),
      );
  }

  ListTile _buildPortfolioItem4(BuildContext context) {
    return ListTile(
      title: const Text(
        'Settings',
        style: TextStyle(color: Color(0xff263238)),
      ),
      leading: const Icon(
        Icons.settings,
        color: Color(0xff263238),
      ),
      onTap: () {
        Navigator.of(context).pop();
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const SettingsPage()),
        );
      },
    );
  }

  Divider _buildDivider(BuildContext context) {
    return const Divider(
      thickness: 1,
      height: 200.0,
      color: Color(0xff263238),
    );
  }

  ListTile _buildPortfolioItem5(BuildContext context) {
    return const ListTile(
      title: Text(
        'Log out',
        style: TextStyle(color: Color(0xff263238)),
      ),
      leading: Icon(
        Icons.logout,
        color: Color(0xff263238),
      ),
    );
  }
}
