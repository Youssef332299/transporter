import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transporter/screens/register/widgets/customer_or_transporter/components/circles.dart';
import 'customer_or_transporter_provider.dart';

class CustomerOrTransporterPage extends StatelessWidget {
  const CustomerOrTransporterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CustomerOrTransporterProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<CustomerOrTransporterProvider>();
    final state = provider.state;

    return const Scaffold(
      body: Circles()
    );
  }
}
