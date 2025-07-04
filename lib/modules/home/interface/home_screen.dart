import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';
import 'package:provider/provider.dart';

import 'package:rutea_app/core/theme/app_colors.dart';
import 'package:rutea_app/core/theme/app_sizes.dart';
import 'package:rutea_app/modules/home/domain/home_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rutea',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: AppSizes.fontM,
          ),
        ),
        actions: [
          ValueListenableBuilder(
            valueListenable: homeProvider.currentIndex,
            builder: (context, currentIndex, snapshot) {
              return IconButton(
                onPressed:
                    currentIndex == 1
                        ? () {
                          debugPrint('Añadir auto');
                        }
                        : null,
                icon: currentIndex == 1 ? Icon(UniconsLine.plus) : Container(),
              );
            },
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: homeProvider.currentIndex,
        builder: (_, int index, __) => homeProvider.pages[index],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: AppSizes.paddingS),
          child: ValueListenableBuilder(
            valueListenable: homeProvider.currentIndex,
            builder:
                (_, int index, __) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _BottomNavItem(
                      icon: UniconsLine.map,
                      label: 'Consejos',
                      selected: index == 0,
                      onTap: () => homeProvider.currentIndex.value = 0,
                    ),
                    _BottomNavItem(
                      icon: UniconsLine.car,
                      label: 'Vehículos',
                      selected: index == 1,
                      onTap: () => homeProvider.currentIndex.value = 1,
                    ),
                    _BottomNavItem(
                      icon: UniconsLine.user,
                      label: 'Perfil',
                      selected: index == 2,
                      onTap: () => homeProvider.currentIndex.value = 2,
                    ),
                  ],
                ),
          ),
        ),
      ),
    );
  }
}

class _BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _BottomNavItem({
    required this.icon,
    required this.label,
    required this.onTap,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = selected ? AppColors.primary : AppColors.subtitle;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 24, color: color),
          const SizedBox(height: 4),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: color,
              fontWeight: selected ? FontWeight.bold : FontWeight.normal,
              fontSize: AppSizes.fontXS,
            ),
          ),
        ],
      ),
    );
  }
}
