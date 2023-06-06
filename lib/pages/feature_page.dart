import 'package:ds_example/ds/ds_border_radius.dart';
import 'package:ds_example/ds/ds_divider_thickness.dart';
import 'package:ds_example/ds/ds_opacity.dart';
import 'package:ds_example/ds/ds_shadow.dart';
import 'package:ds_example/ds/ds_sizing.dart';
import 'package:ds_example/ds/ds_spacing.dart';
import 'package:flutter/material.dart';

import '../ds/ds_button.dart';
import '../ds/ds_color.dart';
import '../ds/ds_text_style.dart';

class BankAppPage extends StatelessWidget {
  const BankAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(DsSpacing.medium),
              decoration: BoxDecoration(
                color: DsColor.surface,
                boxShadow: [DsShadows.medium],
              ),
              child: Stack(
                children: [
                  const Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    child: Align(
                      child: Image(
                        image: AssetImage(
                          'assets/images/flutter_bank_logo.png',
                        ),
                        fit: BoxFit.fill,
                        height: DsSizing.largest,
                        width: DsSizing.largest,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Welcome,\n John Doe!',
                      style: DsTextStyle.heading2.copyWith(
                        color: DsColor.onBackground,
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: _ProfileImage(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: DsSpacing.extraLarge),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  SizedBox(width: DsSpacing.medium),
                  _AmountCard(
                    title: 'Account Balance',
                    amount: 'R\$ 5.000,00',
                  ),
                  SizedBox(width: DsSpacing.medium),
                  _AmountCard(
                    title: 'Last Incomes',
                    amount: 'R\$ 357,43',
                  ),
                  SizedBox(width: DsSpacing.medium),
                ],
              ),
            ),
            const SizedBox(height: DsSpacing.extraLarge),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: DsSpacing.medium),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Transactions',
                    style: DsTextStyle.heading2.copyWith(
                      color: DsColor.onBackground,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: DsSpacing.medium),
                    child: Icon(
                      Icons.calendar_month,
                      color: DsColor.onBackground,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: DsSpacing.large),
            Divider(
              thickness: DsDividerThickness.medium,
              color: DsColor.divider.withOpacity(DsOpacity.low),
              height: 0,
            ),
            Expanded(
              child: ListView(
                children: const [
                  SizedBox(height: DsSpacing.large),
                  _TransactionCard(
                    icon: Icons.shopping_cart,
                    title: 'Online Purchase',
                    amount: '- R\$ 50,00',
                    date: 'May 28, 2023',
                  ),
                  SizedBox(height: DsSpacing.medium),
                  _TransactionCard(
                    icon: Icons.restaurant,
                    title: 'Restaurant Bill',
                    amount: '- R\$ 80,00',
                    date: 'May 27, 2023',
                  ),
                  SizedBox(height: DsSpacing.medium),
                  _TransactionCard(
                    icon: Icons.local_gas_station,
                    title: 'Gas Refill',
                    amount: '- R\$ 30,00',
                    date: 'May 26, 2023',
                  ),
                  SizedBox(height: DsSpacing.extraLarge * 3),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          bottom: DsSpacing.medium,
          left: DsSpacing.medium,
          right: DsSpacing.medium,
          child: ElevatedButton(
            onPressed: () {
              // View All Transactions
            },
            style: DsButton.primaryButtonStyle(),
            child: const Text(
              'View All Transactions',
            ),
          ),
        ),
      ],
    );
  }
}

class _AmountCard extends StatelessWidget {
  final String title;
  final String amount;
  const _AmountCard({
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(DsSpacing.large),
      margin: const EdgeInsets.symmetric(
        vertical: DsSpacing.extraSmall,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DsBorderRadius.large),
        color: DsColor.surface,
        boxShadow: [DsShadows.small],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: DsTextStyle.heading3.copyWith(
              color: DsColor.onBackground,
            ),
          ),
          const SizedBox(height: DsSpacing.small),
          Text(
            amount,
            style: DsTextStyle.heading3.copyWith(
              color: DsColor.successDark,
            ),
          ),
        ],
      ),
    );
  }
}

class _TransactionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String amount;
  final String date;

  const _TransactionCard({
    required this.icon,
    required this.title,
    required this.amount,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(DsSpacing.medium),
      margin: const EdgeInsets.symmetric(horizontal: DsSpacing.large),
      decoration: BoxDecoration(
        color: DsColor.surface,
        borderRadius: BorderRadius.circular(DsBorderRadius.medium),
        boxShadow: [DsShadows.small],
      ),
      child: Row(
        children: [
          Container(
            width: DsSizing.largest,
            height: DsSizing.largest,
            margin: const EdgeInsets.only(right: DsSpacing.medium),
            decoration: BoxDecoration(
              color: DsColor.warning,
              shape: BoxShape.circle,
              boxShadow: [DsShadows.small],
            ),
            child: Icon(
              icon,
              size: DsSizing.largest * 0.5,
              color: DsColor.onBackground,
            ),
          ),
          const SizedBox(width: DsSpacing.medium),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: DsTextStyle.heading3,
                ),
                const SizedBox(height: DsSpacing.small),
                Text(
                  amount,
                  style: DsTextStyle.errorText.copyWith(),
                ),
                const SizedBox(height: DsSpacing.small),
                Text(
                  date,
                  style: DsTextStyle.bodyText.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: DsSizing.mediumSmall,
            color: DsColor.onBackground,
          ),
        ],
      ),
    );
  }
}

class _ProfileImage extends StatelessWidget {
  const _ProfileImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DsSizing.larger,
      height: DsSizing.larger,
      decoration: BoxDecoration(
        color: DsColor.tertiary,
        boxShadow: [DsShadows.medium],
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.person,
        color: DsColor.onTertiary,
        size: DsSizing.largest * 0.6,
      ),
    );
  }
}
