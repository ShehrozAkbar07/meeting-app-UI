
import 'package:drive_app/src/Pupil_Screens/Payment_Pay/pay.dart';
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Relative Logs/write.dart';


class PaymentPay extends StatefulWidget {
  const PaymentPay({Key? key}) : super(key: key);

  @override
  State<PaymentPay> createState() => _PaymentPayState();
}

class _PaymentPayState extends State<PaymentPay>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(children: [
              SizedBox(
                height: size.height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: ((context) => Pupil())));
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 22,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.26,
                    ),
                    const Text(
                      'Payment',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Center(
                child: Container(
                  height: size.height * 0.067,
                  width: size.width * 0.87,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(200, 234, 229, 229)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TabBar(
                            unselectedLabelColor: Colors.black,
                            labelColor: Color(AppColors.primary),
                            indicatorPadding: EdgeInsets.zero,
                            indicatorWeight: 0,
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicator: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: const  Color.fromARGB(255, 231, 221, 221)
                                        .withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 4), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(28)),
                            controller: tabController,
                            tabs: [
                               Container(
                                height: 20,
                                child: const Tab(
                                  text: 'Pay',
                                ),
                              ),
                              const Tab(
                                text: 'Payments',
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: TabBarView(controller: tabController, children: const [
                Pay1(),
                Write(),
              ]))
            ]),
          ),
        ),
      ),
    );
  }
}
