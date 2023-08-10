import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    super.key,
  });

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: currentPage,
      onTap: (index) {
        setState(() {
          currentPage = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          label: '',
          icon: SvgPicture.asset(
              'assets/vectors/home-${currentPage == 0 ? 'bold' : 'outline'}.svg'),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: SvgPicture.asset(
              'assets/vectors/search-${currentPage == 1 ? 'bold' : 'outline'}.svg'),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: SvgPicture.asset(
              'assets/vectors/add-square-${currentPage == 2 ? 'bold' : 'outline'}.svg'),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: SvgPicture.asset(
              'assets/vectors/video-play-${currentPage == 3 ? 'bold' : 'outline'}.svg'),
        ),
        BottomNavigationBarItem(
          label: '',
          icon:
              Icon(currentPage == 4 ? Icons.person_2 : Icons.person_2_outlined),
        ),
      ],
    );
  }
}
