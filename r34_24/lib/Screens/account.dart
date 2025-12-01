import 'package:flutter/material.dart';
import 'package:r34_24/widgets/account_menu_item.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.grey.shade200,
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Name of user',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.edit, size: 18, color: Colors.green),
                        ],
                      ),
                      const Text(
                        'email@gmail.com',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: const [
                  AccountMenuItem(icon: Icons.receipt_long_outlined, title: 'Orders'),
                  AccountMenuItem(icon: Icons.person_outline, title: 'My Details'),
                  AccountMenuItem(icon: Icons.location_on_outlined, title: 'Delivery Address'),
                  AccountMenuItem(icon: Icons.credit_card_outlined, title: 'Payment Methods'),
                  AccountMenuItem(icon: Icons.local_offer_outlined, title: 'Promo Cord'),
                  AccountMenuItem(icon: Icons.notifications_outlined, title: 'Notifications'),
                  AccountMenuItem(icon: Icons.help_outline, title: 'Help'),
                  AccountMenuItem(icon: Icons.info_outline, title: 'About'),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF1FDF6),
                    foregroundColor: Colors.green,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                      side: const BorderSide(color: Colors.green, width: 1.5),
                    ),
                  ),
                  child: const Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
