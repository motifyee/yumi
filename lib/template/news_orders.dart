import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yumi/bloc/order/order_bloc.dart';
import 'package:yumi/model/meal_model.dart';
import 'package:yumi/model/order_model/order_model.dart';
import 'package:yumi/template/order_card.dart';
import 'package:yumi/template/pagination_template.dart';

class NewsOrders extends StatelessWidget {
  const NewsOrders(
      {super.key,
      required this.menuTarget,
      required this.apiKey,
      required this.orderCardTargetPage});

  final MenuTarget menuTarget;
  final String apiKey;
  final OrderCardTargetPage orderCardTargetPage;

  @override
  Widget build(BuildContext context) {
    return PaginationTemplate(
        scrollDirection: Axis.vertical,
        loadDate: () {
          context.read<OrderBloc>().add(OrderEvent.getRequest(apiKey: apiKey));
        },
        child: BlocConsumer<OrderBloc, OrderState>(
          listener: (context, state) {},
          builder: (context, state) {
            List<OrderModel> orders = state.orders;
            if (orderCardTargetPage == OrderCardTargetPage.driverReceived) {
              orders = state.orders
                  .where((o) => menuTarget == MenuTarget.order
                      ? DateTime.now()
                              .difference(DateTime.parse(o.createdDate ?? ''))
                              .inMinutes <=
                          2
                      : DateTime.now()
                              .difference(DateTime.parse(o.createdDate ?? ''))
                              .inMinutes <=
                          24)
                  .toList();
            }
            return Column(
              children: [
                for (var order in orders)
                  OrderCard(
                    order: order,
                    orderCardTargetPage: orderCardTargetPage,
                    getApiKey: apiKey,
                    menuTarget: menuTarget,
                  ),
              ],
            );
          },
        ));
  }
}
