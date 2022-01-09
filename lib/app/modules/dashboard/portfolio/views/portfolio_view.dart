import 'package:flutter/material.dart';
import 'package:starter/app/theme/styles.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(
            'Portfolio',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.left,
          ),
          DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: TabBar(
              isScrollable: false,
              controller: null,
              tabs: [
                Tab(
                  child: Text(
                    'Holdings',
                    style: Styles.tsPrimaryColorRegular14,
                  ),
                ),
                Tab(
                  child: Text(
                    'Positions',
                    style: Styles.tsPrimaryColorRegular14,
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Invested',
                            style: Styles.tsPrimaryColorRegular14,
                          ),
                          Text(
                            '60,124',
                            style: Styles.tsPrimaryColorRegular18,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Current',
                            style: Styles.tsPrimaryColorRegular14,
                          ),
                          Text(
                            '81,314',
                            style: Styles.tsPrimaryColorRegular18,
                          )
                        ],
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('P&L',style: Styles.tsPrimaryColorRegular18,),
                      Row(
                        children: [
                          Text('+21,312',style: Styles.tsPrimaryColorRegular18,),
                          Text('(+2.3%)',style: Styles.tsPrimaryColorRegular14,),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
