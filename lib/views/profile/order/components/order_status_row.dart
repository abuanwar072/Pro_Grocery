import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/enums/dummy_order_status.dart';
import 'order_details_vertical_step_indicator.dart';

class OrderStatusRow extends StatelessWidget {
  const OrderStatusRow({
    Key? key,
    required this.status,
    required this.date,
    required this.time,
    this.isActive = false,
    this.isStart = false,
    this.isEnd = false,
  }) : super(key: key);

  final OrderStatus status;
  final String date;
  final String time;
  final bool isStart;
  final bool isActive;
  final bool isEnd;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment:
          isStart ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: isActive ? _orderColor() : Colors.grey,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: SvgPicture.asset(_orderIcon()),
        ),
        VerticalStepIndicator(
          isStart: isStart,
          isActive: isActive,
          isEnd: isEnd,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _orderStatus(),
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.black,
                    ),
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    date,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    time,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Color _orderColor() {
    switch (status) {
      case OrderStatus.confirmed:
        return const Color(0xFF45AF2A);
      case OrderStatus.processing:
        return const Color(0xFFEDC125);
      case OrderStatus.shipped:
        return const Color(0xFF2652ED);
      case OrderStatus.delivery:
        return const Color(0xFF30DFB8);
      case OrderStatus.cancelled:
        return const Color(0xFFFF1F1F);

      default:
        return Colors.red;
    }
  }

  String _orderStatus() {
    switch (status) {
      case OrderStatus.confirmed:
        return 'Order Confirmed';
      case OrderStatus.processing:
        return 'Order Processing';
      case OrderStatus.shipped:
        return 'Order Shipped';
      case OrderStatus.delivery:
        return 'Order Delivered';
      case OrderStatus.cancelled:
        return 'Order Cancelled';

      default:
        return 'Order null';
    }
  }

  String _orderIcon() {
    switch (status) {
      case OrderStatus.confirmed:
        return AppIcons.orderConfirmed;
      case OrderStatus.processing:
        return AppIcons.orderProcessing;
      case OrderStatus.shipped:
        return AppIcons.orderShipped;
      case OrderStatus.delivery:
        return AppIcons.orderDelivered;
      case OrderStatus.cancelled:
        return AppIcons.delete;

      default:
        return AppIcons.delete;
    }
  }
}
