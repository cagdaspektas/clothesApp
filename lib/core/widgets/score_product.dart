 import 'package:flutter/material.dart';

Container scoringproduct() {
    return Container(
                                decoration: BoxDecoration(
                                    color: Color(0xff494D7E),
                                    borderRadius:
                                        BorderRadiusDirectional.circular(20)),
                                height: 50,
                                width: 70,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.star, color: Colors.yellow),
                                    Text('4.7')
                                  ],
                                ));
  }