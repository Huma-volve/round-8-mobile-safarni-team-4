import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';
import 'package:round_8_mobile_safarni_team4/features/bottom_nav_bar/presentation/views/widgets/dynamic_bar_painter.dart';
import 'package:round_8_mobile_safarni_team4/features/compare/presentation/view/compare_view.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/presentation/view/favorite_view.dart';
import 'package:round_8_mobile_safarni_team4/features/home/presentation/view/home_view.dart';
// استورد باقي الشاشات هنا (Favorite و Compare إذا كانت موجودة)

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<BottomNavBar> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  late AnimationController _controller;
  late Animation<double> _animation;

  // 1. قائمة الصفحات التي سيتم التنقل بينها
  final List<Widget> _pages = [
    const HomeView(),           // Index 0
    const FavoriteView(), // Index 1
    const CompareView() ,  // Index 2
    const Center(child: Text("Map")),         // Index 3 (المرتبطة بـ Maps أو Search)
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _animation = Tween<double>(begin: 0, end: 0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  void _onTap(int index) {
    _animation = Tween<double>(
      begin: _selectedIndex.toDouble(),
      end: index.toDouble(),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.forward(from: 0);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBody: true, // للسماح للـ Body بالظهور خلف منحنى البار الشفاف

      // 2. عرض الصفحة المختارة باستخدام IndexedStack للحفاظ على حالة الصفحات
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),

      bottomNavigationBar: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),

            ),

            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // رسم الخلفية مع التقوس المتحرك
                CustomPaint(
                  size: Size(width, 90.h),
                  painter: DynamicBarPainter(position: _animation.value),
                ),

                Positioned(
                  top: 0,
                  left: (width / 4) * _animation.value + (width / 8) - 28,
                  child: Container(
                    width: 44.w,
                    height: 44.h,
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [ Color(0xFF3F83F8), Color(0xFFA4CAFE)],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: SvgPicture.asset(_getIcon(_selectedIndex), color: Colors.white,

                    ),
                  ),
                ),
                // الأزرار
                Positioned(
                  bottom: 15,
                  width: width,
                  child: Row(
                    children: [
                      _buildItem(0, "Home", 'assets/icons/home.svg'),
                      _buildItem(1, "Favorite",'assets/icons/favo.svg'),
                      _buildItem(2, "Compare",'assets/icons/compare.svg'),
                      _buildItem(3, "Maps",'assets/icons/maps.svg'),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildItem(int index, String label, String icon) {
    bool isSelected = _selectedIndex == index;
    return Expanded(
      child: GestureDetector(
        onTap: () => _onTap(index),
        behavior: HitTestBehavior.opaque,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: isSelected ? 0 : 1,
              child: SvgPicture.asset(icon, color: Colors.grey,
              height: 18.h,
                width: 18.w,
              )

              // Icon(icon, color: Colors.grey),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style:
              AppThemes.light.textTheme.titleMedium!.copyWith(
                color: isSelected ? const Color(0xFF1E429F) :AppColors.black[70],
                fontSize: 12.sp,
                fontWeight: FontWeight.w400
              )

            ),
          ],
        ),
      ),
    );
  }

  String _getIcon(int index) {
    switch (index) {
      case 0: return 'assets/icons/home.svg';
      case 1: return 'assets/icons/favo.svg';
      case 2: return 'assets/icons/compare.svg';
      case 3: return 'assets/icons/maps.svg';
      default: return 'assets/icons/home.svg';
    }
  }
}

// الرسام (نفس الكود الخاص بك مع تعديل بسيط للارتفاعات ليناسب الـ Navigation)
