import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transporter/core/assets/images/images.dart';
import 'package:transporter/core/constants/constants.dart';
import 'package:transporter/core/screen%20size/screen_size.dart';
import 'transporter_provider.dart';

class TransporterPage extends StatelessWidget {
  const TransporterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TransporterProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<TransporterProvider>();
    final state = provider.state;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
              padding: EdgeInsets.only(right: width(context) / 1.46),
              child: const Text(
                "Transport",
                style: TextStyle(
                    fontFamily: fontKanit,
                    fontSize: 22,
                    color: Colors.redAccent),
              )),
          SizedBox(
            height: height(context) / 4,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  width: width(context) / 1.8,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.redAccent),
                      image: DecorationImage(
                          image: AssetImage(Images.map), fit: BoxFit.fill)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "From:\n(Cairo' Elzayton' 18 Elasbagh)",
                        style: TextStyle(
                            fontFamily: fontKanit,
                            fontSize: 14,
                            color: Colors.orangeAccent),
                      ),
                      Text(
                        "To:\n(Giza' Eltalbaya' 18 elharam)",
                        style: TextStyle(
                            fontFamily: fontKanit,
                            fontSize: 14,
                            color: Colors.redAccent),
                      ),
                      Text(
                        "159 L.E",
                        style: TextStyle(
                            fontFamily: fontKanit,
                            fontSize: 25,
                            color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: width(context) / 1.4),
            child: const Text(
              "Product",
              style: TextStyle(
                  fontFamily: fontKanit, fontSize: 22, color: Colors.redAccent),
            ),
          ),
          SizedBox(
            height: height(context) / 2,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.all(6),
                  width: width(context) / 1.8,
                  // height: height(context) / 2,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.redAccent),
                  ),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        width: width(context) / 1.43,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "From:\n(Cairo' Elzayton' 18 Elasbagh)",
                              style: TextStyle(
                                  fontFamily: fontKanit,
                                  fontSize: 14,
                                  color: Colors.orangeAccent),
                            ),
                            Text(
                              "To:\n(Giza' Eltalbaya' 18 elharam)",
                              style: TextStyle(
                                  fontFamily: fontKanit,
                                  fontSize: 14,
                                  color: Colors.redAccent),
                            ),
                            Text(
                              "Item data:\n(Barista machine)\n(80 kg)",
                              style: TextStyle(
                                  fontFamily: fontKanit,
                                  fontSize: 14,
                                  color: Colors.redAccent),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        width: width(context) / 4.7,
                        child: const Text(
                          "4500 L.E",
                          style: TextStyle(
                              fontFamily: fontKanit,
                              fontSize: 20,
                              color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
