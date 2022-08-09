import 'package:flutter/material.dart';

import '../../../core/components/title_and_action_button.dart';
import 'checkout_address_card.dart';

class AddressSelector extends StatelessWidget {
  const AddressSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndActionButton(
          title: 'Select Delivery Address',
          actionLabel: 'Add New',
          onTap: () {},
          isHeadline: false,
        ),
        AddressCard(
          label: 'Home Address',
          phoneNumber: '(309) 071-9396-939',
          address: '1749 Custom Road, Chhatak',
          isActive: false,
          onTap: () {},
        ),
        AddressCard(
          label: 'Office Address',
          phoneNumber: '(309) 071-9396-939',
          address: '1749 Custom Road, Chhatak',
          isActive: true,
          onTap: () {},
        )
      ],
    );
  }
}
