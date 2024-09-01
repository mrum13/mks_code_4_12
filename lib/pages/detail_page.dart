import 'package:flutter/material.dart';
import 'package:makassar_coding_4_12/const/data.dart';
import 'package:makassar_coding_4_12/const/theme.dart';

class DetailPage extends StatelessWidget {
  final int index;

  const DetailPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              margin: const EdgeInsets.fromLTRB(18, 7, 18, 27),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromRGBO(0, 0, 0, 0.1)),
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.keyboard_arrow_left_rounded),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          iconSize: 36,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: ClipOval(
                            child: Image.asset(
                              doctorData[index]['photo'],
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        Text(
                          doctorData[index]['name'],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: blackTextColor),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          doctorData[index]['job_desc'],
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: greyTextColor),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/ic_work.png',
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              '${doctorData[index]['experience']} Tahun',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: greyTextColor),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            Image.asset(
                              'assets/ic_like.png',
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              doctorData[index]['like'],
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: greyTextColor),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 26),
                    width: double.infinity,
                    color: priceContainerColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rp.${doctorData[index]['price']}',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: blackTextColor),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 15),
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: greenColor)),
                          child: Text(
                            'Termurah',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: greenColor),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/ic_edu.png',
                                height: 24,
                                width: 24,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Akademi',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: blackTextColor),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    doctorData[index]['education'],
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: greyTextColor),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/ic_hospital2.png',
                                height: 24,
                                width: 24,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bekerja di',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: blackTextColor),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    doctorData[index]['work_place'],
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: greyTextColor),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Spacer(),
                          Align(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(double.infinity, 39),
                                  backgroundColor: secondBlueColor,
                                ),
                                child: Text(
                                  'Chat Sekarang',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: blueColor),
                                )),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}
