import 'package:flutter/material.dart';
import 'package:makassar_coding_4_12/const/data.dart';
import 'package:makassar_coding_4_12/const/theme.dart';
import 'package:makassar_coding_4_12/pages/detail_page.dart';
import 'package:makassar_coding_4_12/widgets/submenu_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false, ///untuk page yang tidak discroll
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20, 
              left: 24, 
              right: 24, 
            bottom: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello',
                          style: TextStyle(
                            fontSize: 16,
                            color: greyTextColor,
                            fontFamily: 'Poppins Regular'
                          ),
                        ),
                        const SizedBox(height: 6,),
                        Text('Hi Rum',
                          style: TextStyle(
                            fontSize: 20,
                            color: blackTextColor,
                            fontFamily: 'Poppins Bold',
                            fontWeight: FontWeight.w700
                          ),
                        )
                      ],
                    ),
                    Image.asset('assets/img_photo_user.png',
                      height: 56,
                      width: 56,
                    )
                  ],
                ),
                const SizedBox(height: 27,),
                ///card blue
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => const DetailPage(index: 0,),
                      )
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ClipOval(                     
                              child: Container(
                                color: whiteColor,
                                child: Image.asset(doctorData[0]['photo'],
                                  height: 48,
                                  width: 48,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(doctorData[0]['name'],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: whiteColor,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                                const SizedBox(height: 4,),
                                Text(doctorData[0]['job_desc'],
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: whiteColor,
                                    fontWeight: FontWeight.w400
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                            const Icon(Icons.keyboard_arrow_right,
                              size: 36,
                              color: Colors.white,
                            )
                          ],
                        ),
                        const SizedBox(height: 16,),
                        const Divider(
                          color: Color.fromRGBO(255, 255, 255, 0.15),
                        ),
                        const SizedBox(height: 16,),
                        Row(
                          children: [
                            Image.asset('assets/ic_calendar.png',
                              height: 16,
                              width: 16,
                            ),
                            const SizedBox(width: 8,),
                            Text('Sunday, 12 June',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: whiteColor
                              ),
                            ),
                            const SizedBox(width: 12,),
                            Image.asset('assets/ic_clock.png',
                              height: 16,
                              width: 16,
                            ),
                            const SizedBox(width: 8,),
                            Text('11:00-12:00 AM',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: whiteColor
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                ///kolom pencarian
                TextField(
                  controller: searchController,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: blackTextColor
                    ),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: textFieldColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: textFieldColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    fillColor: textFieldColor,
                    filled: true,
                    hintText: 'Search doctor or health issue',
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: greyTextColor
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset('assets/ic_search.png', height: 24, width: 24,),
                    ),
                  ),
                ),
                const SizedBox(height: 24,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubmenuHome(
                      image: 'assets/ic_covid.png', 
                      title: 'Covid 19'
                    ),
                    SubmenuHome(
                      image: 'assets/ic_doctor.png', 
                      title: 'Doctor'
                    ),
                    SubmenuHome(
                      image: 'assets/ic_medicine.png', 
                      title: 'Medicine'
                    ),
                    SubmenuHome(
                      image: 'assets/ic_hospital.png', 
                      title: 'Hospital'
                    ),
                  ],
                ),
                const SizedBox(height: 32,),
                Text('Near Doctor',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: blackTextColor
                  ),
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => const DetailPage(index: 1,),
                      )
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16, 
                      vertical: 20
                    ),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                        color: shadowColor,
                        offset: const Offset(
                          0.1,
                          0.1,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 1.0,
                      ),
                      ]
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ClipOval(                     
                              child: Container(
                                color: whiteColor,
                                child: Image.asset(doctorData[1]['photo'],
                                  height: 48,
                                  width: 48,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(doctorData[1]['name'],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: blackTextColor,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                                const SizedBox(height: 4,),
                                Text(doctorData[0]['job_desc'],
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: greyTextColor,
                                    fontWeight: FontWeight.w400
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                            Image.asset('assets/ic_location.png',
                              height: 16,
                              width: 16,
                            ),
                            const SizedBox(width: 8,),
                            Text('${doctorData[1]['distance']} KM',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: greyTextColor
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20.5,),
                        const Divider(
                          color: Color(0xffF5F5F5),
                        ),
                        const SizedBox(height: 20.5,),
                        Row(
                          children: [
                            Image.asset('assets/ic_clock.png',
                              height: 16,
                              width: 16,
                              color: orangeColor,
                            ),
                            const SizedBox(width: 8,),
                            Text('4,8 (120 Reviews)',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: orangeColor
                              ),
                            ),
                            const SizedBox(width: 12,),
                            Image.asset('assets/ic_clock.png',
                              height: 16,
                              width: 16,
                              color: blueColor,
                            ),
                            const SizedBox(width: 8,),
                            Text('Open at 17.00',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: blueColor
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}