import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/review_and_checkin_widget/check_in_and_out_body.dart';

class CheckInAndOutScreen extends StatelessWidget {
  const CheckInAndOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //    backgroundColor: Colors.red,
      body: Stack(
        children: [
          CheckInAndOutBody(),
          Positioned(
            // top: MediaQuery.of(context).size.height * 0.30,
            left: 0,
            right: 0,
            bottom: 0,
            child: BottomSheet(),
          ),
        ],
      ),
    );
  }
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff1E429F),
              fixedSize: const Size(270, 50),
              //foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const BottomSheetCheckOutList();
                },
              );
            },
            child: const Text(
              "Continue",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class BottomSheetCheckOutList extends StatelessWidget {
  const BottomSheetCheckOutList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(3, (index) => const BottomSheetCheckOutItem()),
    );
  }
}

class BottomSheetCheckOutItem extends StatelessWidget {
  const BottomSheetCheckOutItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        title: const Text("Adults"),
        subtitle: const Text("Ages 18 Or Above"),
        trailing: SizedBox(
          width: 120, // 👈 MUST provide a width, not just height
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomContainerIcon(
                onPressed: () {},
                icon: Icons.remove,
                cackGroundIconColor: Colors.grey[100]!,
                iconColor: Colors.black,
              ),
              const SizedBox(width: 5),
              const Text(
                "1",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 5),
              CustomContainerIcon(
                onPressed: () {},
                icon: Icons.add,
                cackGroundIconColor: const Color(0xff1E429F),
                iconColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContainerIcon extends StatelessWidget {
  const CustomContainerIcon({
    super.key,
    required this.icon,
    required this.cackGroundIconColor,
    required this.iconColor,
    required this.onPressed,
  });
  final IconData icon;
  final Color cackGroundIconColor;
  final Color iconColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cackGroundIconColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: iconColor),
      ),
    );
  }
}
