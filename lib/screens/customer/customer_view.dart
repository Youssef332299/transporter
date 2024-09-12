import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'customer_provider.dart';


class CustomerPage extends StatelessWidget {
  const CustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CustomerProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<CustomerProvider>();
    final state = provider.state;

    return Scaffold(
      body: Column(
        children: [
                    ],
      ),
    );
  }
}