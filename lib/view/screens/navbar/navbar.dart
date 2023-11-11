import 'package:dicoding/shared/themes/themes.dart';
import 'package:dicoding/view/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: LxpAppBar(
      //   leading: SizedBox(width: 25.0, child: Assets.images.lxpLogo.image()),
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.notifications_rounded),
      //       onPressed: () {},
      //     ),
      //     IconButton(
      //       icon: const Icon(Icons.person_rounded),
      //       onPressed: () {},
      //     ),
      //   ],
      // ),
      /* AppBar(
        backgroundColor: AppColors.primary.pr01,
        leading: Assets.images.pngajuanLogo.image(width: 20.0),
        actions: [
          Text('ABC'),
          Text('ABC'),
        ],
      ), */

      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Beranda',
            selectedIcon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.notes),
            label: 'Pelatihan-Ku',
            selectedIcon: Icon(
              Icons.notes,
              color: Colors.blue,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Akun',
            selectedIcon: Icon(
              Icons.person,
              color: Colors.blue,
            ),
          ),
        ],
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
      body: <Widget>[
        const HomeScreen(),
        Container(
          color: AppColors.neutral.ne01,
          alignment: Alignment.center,
          child: const Text('Pelatihanku'),
        ),
        Container(
          color: AppColors.neutral.ne01,
          alignment: Alignment.center,
          child: const Text('Profile'),
        ),
      ][currentPageIndex],
    );
  }
}
