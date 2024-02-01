import 'package:eco_tracker_frontend/theme.dart';
import 'package:eco_tracker_frontend/widgets/aksi_card.dart';
import 'package:eco_tracker_frontend/widgets/informasi_card.dart';
import 'package:eco_tracker_frontend/widgets/pie_chart_indicator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List _aksiCard = [
    AksiCard(
      color: backgroundColor4,
      imageLogo: 'assets/image_calculator.png',
      name: 'Kalkulator',
      textStyle: whiteTextStyle,
    ),
    AksiCard(
      color: tertiaryColor,
      imageLogo: 'assets/image_book.png',
      name: 'Wawasan',
      textStyle: whiteTextStyle,
    ),
    AksiCard(
      color: backgroundColor5,
      imageLogo: 'assets/image_wallet.png',
      name: 'Simpanan',
      textStyle: whiteTextStyle,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height + 500,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        backgroundColor1,
                        backgroundColor2,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: const [0.08, 0.65]),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 60),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello, Mirza',
                              style: tertiaryTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: semiBold,
                              ),
                            ),
                            Text(
                              'Welcome Back!',
                              style: primaryTextStyle.copyWith(
                                fontSize: 25,
                                fontWeight: bold,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/icon_lonceng.png',
                                fit: BoxFit.cover,
                                width: 46,
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 17,
                                  height: 17,
                                  decoration: BoxDecoration(
                                    color: alertColor,
                                    borderRadius: BorderRadius.circular(1000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: defaultMargin),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 208,
                      child: Stack(
                        children: [
                          Container(
                            height: 178,
                            width: MediaQuery.of(context).size.width,
                            padding:
                                EdgeInsets.symmetric(horizontal: defaultMargin),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: const DecorationImage(
                                image:
                                    AssetImage('assets/image_home_kotak1.png'),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade400,
                                  blurRadius: 6,
                                  offset: const Offset(4, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/icon_hari_ini.png',
                                      width: 20,
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      '70% hari ini',
                                      style: primaryTextStyle.copyWith(
                                        fontSize: 15,
                                        fontWeight: medium,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                SizedBox(
                                  width: 126,
                                  height: 90,
                                  child: PieChartIndicator(),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/icon_candlestick.png',
                              width: 170,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/image_home_background.png',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height + 130,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 364),
                  Padding(
                    padding: EdgeInsets.only(left: defaultMargin),
                    child: Text(
                      'Aksi',
                      style: primaryTextStyle.copyWith(
                        fontSize: 25,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 151,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _aksiCard.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                              left: index == 0 ? defaultMargin : 0),
                          child: _aksiCard[index],
                        );
                      },
                    ),
                  ),
                  SizedBox(height: defaultMargin),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Informasi',
                          style: primaryTextStyle.copyWith(
                            fontSize: 25,
                            fontWeight: medium,
                          ),
                        ),
                        Text(
                          'See all...',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 15,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Column(
                      children: [
                        SizedBox(height: defaultMargin / 2),
                        InformasiCard(
                          image: 'assets/image_emisi1.png',
                          day: 'Kam',
                          date: 21,
                          month: 'Des',
                          year: 2023,
                          title:
                              'Apa Itu Emisi Karbon? Kenali Penyebab, Dampak, dan Cara Menguranginya',
                        ),
                        InformasiCard(
                          image: 'assets/image_emisi2.png',
                          day: 'Rab',
                          date: 16,
                          month: 'Agu',
                          year: 2023,
                          title:
                              'Pabrik Semen Buka Suara Soal Polusi Udara di Jabodetabek',
                        ),
                        InformasiCard(
                          image: 'assets/image_emisi3.png',
                          day: 'Rab',
                          date: 23,
                          month: 'Agu',
                          year: 2023,
                          title:
                              'Polusi Jakarta, Industri Berupaya Kendalikan Emisi dan Tekan Polusi',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
