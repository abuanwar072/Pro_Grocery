import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_defaults.dart';

import '../../../core/components/app_back_button.dart';

class AddNewCardPage extends StatefulWidget {
  const AddNewCardPage({Key? key}) : super(key: key);

  @override
  State<AddNewCardPage> createState() => _AddNewCardPageState();
}

class _AddNewCardPageState extends State<AddNewCardPage> {
  late TextEditingController cardNumber;
  late TextEditingController expireDate;
  late TextEditingController cvv;
  late TextEditingController holderName;

  bool rememberMyCard = false;

  onTextChanged(v) {
    if (mounted) setState(() {});
  }

  @override
  void initState() {
    super.initState();
    cardNumber = TextEditingController();
    expireDate = TextEditingController();
    holderName = TextEditingController();
    cvv = TextEditingController();
  }

  @override
  void dispose() {
    cardNumber.dispose();
    expireDate.dispose();
    holderName.dispose();
    cvv.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Add New Card'),
      ),
      backgroundColor: AppColors.cardColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: AppDefaults.padding / 2),
            CreditCardWidget(
              cardNumber: cardNumber.text,
              expiryDate: expireDate.text,
              cardHolderName: holderName.text,
              isHolderNameVisible: true,
              backgroundNetworkImage: 'https://i.imgur.com/AMA5llS.png',
              cvvCode: cvv.text,
              showBackView: false,
              cardType: CardType.visa,
              onCreditCardWidgetChange: (v) {},
              isChipVisible: false,
            ),
            CreditCardForm(
              cardNumber: cardNumber,
              expireDate: expireDate,
              cvv: cvv,
              holderName: holderName,
              rememberMyCard: rememberMyCard,
              onTextChanged: onTextChanged,
              onRememberMyCardChanged: (v) {
                rememberMyCard = !rememberMyCard;
                if (mounted) setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}

class CreditCardForm extends StatelessWidget {
  const CreditCardForm({
    Key? key,
    required this.cardNumber,
    required this.expireDate,
    required this.cvv,
    required this.holderName,
    required this.rememberMyCard,
    required this.onTextChanged,
    required this.onRememberMyCardChanged,
  }) : super(key: key);

  final TextEditingController cardNumber;
  final TextEditingController expireDate;
  final TextEditingController cvv;
  final TextEditingController holderName;
  final bool rememberMyCard;
  final void Function(String?) onTextChanged;
  final void Function(bool v) onRememberMyCardChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDefaults.padding),
      margin: const EdgeInsets.all(AppDefaults.padding),
      decoration: BoxDecoration(
        color: AppColors.scaffoldBackground,
        borderRadius: AppDefaults.borderRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Card Name"),
          const SizedBox(height: 8),
          TextFormField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            controller: holderName,
            onChanged: onTextChanged,
          ),
          const SizedBox(height: AppDefaults.padding),
          const Text("Card Number"),
          const SizedBox(height: 8),
          TextFormField(
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            controller: cardNumber,
            onChanged: onTextChanged,
          ),
          const SizedBox(height: AppDefaults.padding),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Expire Date"),
                    const SizedBox(height: 8),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      controller: expireDate,
                      onChanged: onTextChanged,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppDefaults.padding),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("CVV"),
                    const SizedBox(height: 8),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      controller: cvv,
                      onChanged: onTextChanged,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppDefaults.padding),
          Row(
            children: [
              Text(
                'Remember My Card Details',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.black,
                    ),
              ),
              const Spacer(),
              Transform.scale(
                scale: 0.8,
                child: CupertinoSwitch(
                  value: rememberMyCard,
                  onChanged: onRememberMyCardChanged,
                ),
              )
            ],
          ),
          const SizedBox(height: AppDefaults.padding),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Add Card'),
            ),
          ),
          const SizedBox(height: AppDefaults.padding),
        ],
      ),
    );
  }
}
