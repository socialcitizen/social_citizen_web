// import 'package:clmac_dashboard_webapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.5 - 109.0,
      padding: EdgeInsets.only(left: 20.0),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          
          // SizedBox(
          //   height: 20.0,
          // ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height - 200,
              width: MediaQuery.of(context).size.width * 0.4,
              padding: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                ),
              ),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25.0),
                    height: 140.0,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top:30.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Bank Account',
                                 style: GoogleFonts.quicksand(
                                    fontSize: 15.0,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.grey[700]),
                              ),
                              Text(
                                'Available Funds',
                                style: GoogleFonts.quicksand(
                                    fontSize: 15.0, color: Colors.grey[700]),
                              ),                            
                            ],
                          ),
                          SizedBox(
                            height: 10
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                  'Fidelity Bank',
                                   style: GoogleFonts.raleway(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  ),
                                  Row(
                                children: [
                                  Text(
                                    '0098776543',
                                      style: GoogleFonts.raleway(
                                        fontSize: 17.0,
                                        // fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Icon(Icons.arrow_forward_sharp),
                                ],
                              ),

                                ],
                              ),
                              
                              Text(
                                '#590,98.00',
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0, color: Colors.black),
                              ),
                            ],
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                          //   children: [
                          //     Row(
                          //       children: [
                          //         Text(
                          //           '0098776543',
                          //             style: GoogleFonts.raleway(
                          //               fontSize: 20.0,
                          //               fontWeight: FontWeight.bold,
                          //               color: Colors.black),
                          //         ),
                          //         Icon(Icons.arrow_forward_sharp),
                          //       ],
                          //     ),
                          //     Text(''),
                          //   ],
                          // )
                        ],
                      ),
                    ),
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

