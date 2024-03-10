import 'package:flutter/material.dart';
import 'package:yumi/model/meal_model.dart';
import 'package:yumi/template/customer_news.dart';

class CustomerMenuPreScreen extends StatelessWidget {
  const CustomerMenuPreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomerNews(
      menuTarget: MenuTarget.preOrder,
    );

  }
}
