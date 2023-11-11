import 'package:carousel_slider/carousel_slider.dart';
import 'package:dicoding/shared/themes/themes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageList = [
    'assets/images/carousel1.png',
    'assets/images/carousel1.png',
    'assets/images/carousel1.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Stack(
        // alignment: Alignment.topCenter,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.blueAccent,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 64, 16, 96),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.yellow,
                    radius: 25,
                    child: Image.asset(
                      'assets/images/avatar.png',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Halo,',
                          style: AppTextStyle.body3.copyWith(
                              color: AppColors.neutral.ne01,
                              fontWeight: FontWeight.w400)),
                      Text('Ahmad Alif Fauzan',
                          style: AppTextStyle.body2.copyWith(
                              color: AppColors.neutral.ne01,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.search, size: 30, color: Colors.white),
                  const SizedBox(
                    width: 16,
                  ),
                  const Icon(Icons.notifications_outlined,
                      size: 30, color: Colors.white)
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset(
              'assets/images/ornamen.png',
              width: 180,
              height: 134,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 208,
            bottom: 0,
            child: SingleChildScrollView(
              // Tambahkan SingleChildScrollView agar konten dapat discroll
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 107,
                      ),
                      Text(
                        'Fitur',
                        style: AppTextStyle.body2
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: 56,
                                child: Image.asset(
                                    'assets/icons/rencana_pelatihan.png'),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Rencana\nPelatihan',
                                style: AppTextStyle.body4,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 56,
                                child: Image.asset(
                                    'assets/icons/layanan_konsultasi.png'),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Layanan\nKonsultasi',
                                style: AppTextStyle.body4,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 56,
                                child: Image.asset(
                                    'assets/icons/nilai_sertifikat.png'),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Nilai\n& Sertifikat',
                                style: AppTextStyle.body4,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 56,
                                child: Image.asset(
                                    'assets/icons/forum_diskusi.png'),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Forum\nDiskusi',
                                style: AppTextStyle.body4,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: 56,
                                child:
                                    Image.asset('assets/icons/penugasan.png'),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Penugasan',
                                style: AppTextStyle.body4,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 56,
                                child:
                                    Image.asset('assets/icons/pelatihanku.png'),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Pelatihan\nKu',
                                style: AppTextStyle.body4,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 56,
                                child: Image.asset(
                                    'assets/icons/simulasi_penilaian.png'),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Simulasi\n& Penilaian',
                                style: AppTextStyle.body4,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (BuildContext context) {
                                    return FractionallySizedBox(
                                      heightFactor: 0.6,
                                      child: Container(
                                        // height: 600,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                          ),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                16, 24, 16, 24),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'Semua Fitur',
                                                    style: AppTextStyle.body2
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                  ),
                                                  const SizedBox(
                                                    height: 16,
                                                  ),
                                                  const SizedBox(
                                                    height: 16,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            width: 56,
                                                            child: Image.asset(
                                                                'assets/icons/rencana_pelatihan.png'),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                            'Rencana\nPelatihan',
                                                            style: AppTextStyle
                                                                .body4,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            width: 56,
                                                            child: Image.asset(
                                                                'assets/icons/layanan_konsultasi.png'),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                            'Layanan\nKonsultasi',
                                                            style: AppTextStyle
                                                                .body4,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            width: 56,
                                                            child: Image.asset(
                                                                'assets/icons/nilai_sertifikat.png'),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                            'Nilai\n& Sertifikat',
                                                            style: AppTextStyle
                                                                .body4,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            width: 56,
                                                            child: Image.asset(
                                                                'assets/icons/forum_diskusi.png'),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                            'Forum\nDiskusi',
                                                            style: AppTextStyle
                                                                .body4,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 16,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            width: 56,
                                                            child: Image.asset(
                                                                'assets/icons/penugasan.png'),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                            'Penugasan',
                                                            style: AppTextStyle
                                                                .body4,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            width: 56,
                                                            child: Image.asset(
                                                                'assets/icons/pelatihanku.png'),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                            'Pelatihan\nKu',
                                                            style: AppTextStyle
                                                                .body4,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            width: 56,
                                                            child: Image.asset(
                                                                'assets/icons/simulasi_penilaian.png'),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                            'Simulasi\n& Penilaian',
                                                            style: AppTextStyle
                                                                .body4,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            width: 56,
                                                            child: Image.asset(
                                                                'assets/icons/lainnya.png'),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                            'Lainnya',
                                                            style: AppTextStyle
                                                                .body4,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 24,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            width: 56,
                                                            child: Image.asset(
                                                                'assets/icons/rencana_pelatihan.png'),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                            'Rencana\nPelatihan',
                                                            style: AppTextStyle
                                                                .body4,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            width: 56,
                                                            child: Image.asset(
                                                                'assets/icons/layanan_konsultasi.png'),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                            'Layanan\nKonsultasi',
                                                            style: AppTextStyle
                                                                .body4,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            width: 56,
                                                            child: Image.asset(
                                                                'assets/icons/nilai_sertifikat.png'),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                            'Nilai\n& Sertifikat',
                                                            style: AppTextStyle
                                                                .body4,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            width: 56,
                                                            child: Image.asset(
                                                                'assets/icons/forum_diskusi.png'),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                            'Forum\nDiskusi',
                                                            style: AppTextStyle
                                                                .body4,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 16,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            width: 56,
                                                            child: Image.asset(
                                                                'assets/icons/penugasan.png'),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                            'Penugasan',
                                                            style: AppTextStyle
                                                                .body4,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            width: 56,
                                                            child: Image.asset(
                                                                'assets/icons/pelatihanku.png'),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                            'Pelatihan\nKu',
                                                            style: AppTextStyle
                                                                .body4,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            width: 56,
                                                            child: Image.asset(
                                                                'assets/icons/simulasi_penilaian.png'),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                            'Simulasi\n& Penilaian',
                                                            style: AppTextStyle
                                                                .body4,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            width: 56,
                                                            child: Image.asset(
                                                                'assets/icons/lainnya.png'),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                            'Lainnya',
                                                            style: AppTextStyle
                                                                .body4,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 56,
                                  child:
                                      Image.asset('assets/icons/lainnya.png'),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  'Lainnya',
                                  style: AppTextStyle.body4,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Katalog',
                        style: AppTextStyle.body2
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      // Daftar katalog yang dapat di-scroll
                      CarouselSlider.builder(
                        options: CarouselOptions(
                          enlargeCenterPage: false,
                          enableInfiniteScroll: true,
                          height: 163,
                          aspectRatio: 16 / 9,
                          scrollDirection: Axis.horizontal,
                          // scrollPhysics: const NeverScrollableScrollPhysics(),
                          viewportFraction: 0.8,
                          pauseAutoPlayOnTouch: true,
                          autoPlayAnimationDuration: const Duration(seconds: 1),
                          autoPlay: true,
                        ),
                        itemCount: imageList.length,
                        itemBuilder: (context, i, id) {
                          return GestureDetector(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                imageList[i],
                                width: 340,
                                fit: BoxFit.contain,
                              ),
                            ),
                            onTap: () {},
                          );
                        },
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: 140,
            right: 16,
            child: Container(
              width: 328,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white, // Ganti warna container sesuai kebutuhan
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dapatkan Sertifikat',
                          style: AppTextStyle.body2
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Dapatkan program sertifikat\nprofesional yang tepat\nuntuk Anda.',
                          style: AppTextStyle.body4
                              .copyWith(color: AppColors.neutral.ne06),
                        )
                      ],
                    ),
                    Image.asset('assets/images/content1.png')
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
