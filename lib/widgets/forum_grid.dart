import 'package:flutter/material.dart';

class Forum extends StatelessWidget {
  final List<Map<String, dynamic>> building = [
    {
      'title': 'New ways of losing weight without dieting',
      'callToAction': '/postdetails',
      'suBTitle': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
    },

    {
      'title': 'Insecurity in the Country',
      'callToAction': '/postdetails',
      'suBTitle': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
    },

    {
      'title': 'Outrageous prices for food items ',
      'callToAction': '/postdetails',
      'suBTitle': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
    },

    
    // {
    //   'title': 'App Users',
    //   'callToAction': ''
    // },


    // {
    //   'title': 'Towing Services Payments',
    //   'callToAction': ''
    // },


    // {
    //   'title': 'vehicle Paper Renewal Payments',
    //   'callToAction': ''
    // },


    // {
    //   'title': 'Spare Parts and Merchandise Payments',
    //   'callToAction': ''
    // },

    // {
    //   'title': 'Prices',
    //   'callToAction': ''
    // },
  ];



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
      return Container(
            // color: Colors.blue,
            padding: const EdgeInsets.all(4.0),
            margin: EdgeInsets.all(30.0),
            child: GridView.builder(
              shrinkWrap: true,
              // physics: ScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: building.length ,
              itemBuilder: (BuildContext context, int index) {
                final currentItem = building[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, currentItem['callToAction']).toString();
                  },
                  child: Card(
                    // color: Colors.blue,
                    elevation: 2.0,
                    child: Container(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[  
                                Image.asset('assets/images/arms.png', width: size.width * 0.15),                        
                                SizedBox(
                                  height: size.height * 0.06,
                                ),
                                Text(currentItem['title'], 
                                style:  TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                                ),
                                Text(currentItem['suBTitle'], 
                                // style:  TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                                ),
                              ],
                          ),
                    ),
                  ),
                );
              },
            ),
          );
    
  }
}