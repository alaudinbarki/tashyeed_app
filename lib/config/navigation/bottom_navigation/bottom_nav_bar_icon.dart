import 'package:flutter/material.dart';
import '/config/config.dart';

class BottomNavBarIcon extends StatelessWidget {
  const BottomNavBarIcon({
    super.key,
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.isSelected,
  });

  final IconData unselectedIcon;
  final IconData selectedIcon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final Color displayIconColor =
        isSelected ? colorScheme.tertiaryContainer : colorScheme.primary;
    final IconData displayIcon = isSelected ? selectedIcon : unselectedIcon;
    return Icon(
      displayIcon,
      size: Dimensions.iconSizeSmall,
      color: displayIconColor,
    );
  }
}
