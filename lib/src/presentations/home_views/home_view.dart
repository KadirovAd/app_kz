import 'package:app_kz/src/presentations/home_views/widget/carousel_withIndi_cator.dart';
import 'package:app_kz/src/presentations/home_views/widget/job_card.dart';
import 'package:app_kz/src/presentations/order_detail_view%20/order_detail_view.dart';
import 'package:app_kz/src/presentations/order_view/order_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final categories = <String>[
    'Животные',
    'Птицы',
    'Селхоз техника',
    'Зоо Магазин',
    'Срочно Требуется',
    'Одам в хорошии руки',
  ];

  final icons = <IconData>[
    Icons.pets,
    Icons.flutter_dash,
    Icons.recent_actors,
    Icons.pets,
    Icons.priority_high,
    Icons.location_pin,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(3.w),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Mal Bazar',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            TextField(
              decoration: InputDecoration(
                hintText: 'Поиск по Mal Bazar',
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.deepOrangeAccent,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 1.5.h),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.deepOrange[50],
              ),
            ),
            SizedBox(height: 2.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 12.h,
                      child: const CarouselWithIndicator(),
                    ),
                    SizedBox(height: 2.h),
                    Container(
                      height: 23.h,
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 1.h),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: categories.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 1.w,
                          crossAxisSpacing: 2.w,
                        ),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 7.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.deepOrangeAccent,
                                    width: 0.5.h,
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    icons[index],
                                    color: Colors.deepOrangeAccent,
                                  ),
                                ),
                              ),
                              SizedBox(height: 1.h),
                              Text(
                                categories[index],
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 2.h),
                    _buildSectionHeader(
                      title: 'Заявки',
                      actionLabel: 'Создать заявку',
                      onPressed: () {},
                    ),
                    SizedBox(height: 2.h),
                    SizedBox(
                      height: 40.h,
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 9,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 3 / 2,
                          mainAxisSpacing: 2.w,
                          crossAxisSpacing: 2.w,
                        ),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const OrderDetailView(),
                                ),
                              );
                            },
                            child: const JobCard(
                              title: 'title',
                              description: 'description',
                              status: 'status',
                              location: 'location',
                              isNew: true,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 2.h),
                    _buildSectionHeader(
                      title: 'Oбявление',
                      actionLabel: 'Создать обявление',
                      onPressed: () {},
                    ),
                    SizedBox(height: 2.h),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OrderView(),
                          ),
                        );
                      },
                      child: const Expanded(child: ProductGrid()),
                    ),
                    SizedBox(height: 2.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader({
    required String title,
    required String actionLabel,
    required VoidCallback onPressed,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: Colors.deepOrange.withOpacity(0.1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            actionLabel,
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.deepOrangeAccent,
            ),
          ),
        ),
      ],
    );
  }
}

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(
              children: [
                const Expanded(
                  child: ProductCard(
                    imageUrl: 'assets/images/turbo.jpg',
                    title: 'Турбокомпрессор KOMATSU',
                    subtitle: 'Двигатели, детали двигател...',
                    price: '140 000 ₸',
                    isPremium: true,
                    deliveryLabel: 'ДОСТАВКА ПО КАЗАХСТАНУ',
                    availabilityLabel: 'В НАЛИЧИИ',
                    originalLabel: 'ОРИГИНАЛ',
                    lowPriceLabel: 'НИЗКАЯ ЦЕНА',
                  ),
                ),
                SizedBox(width: 2.w),
                const Expanded(
                  child: ProductCard(
                    imageUrl: 'assets/images/turbo.jpg',
                    title: 'Турбокомпрессор KOMATSU',
                    subtitle: 'Двигатели, детали двигател...',
                    price: '140 000 ₸',
                    isPremium: true,
                    deliveryLabel: 'ДОСТАВКА ПО КАЗАХСТАНУ',
                    availabilityLabel: 'В НАЛИЧИИ',
                    originalLabel: 'ОРИГИНАЛ',
                    lowPriceLabel: 'НИЗКАЯ ЦЕНА',
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
          ],
        );
      },
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String price;
  final bool isPremium;
  final String deliveryLabel;
  final String availabilityLabel;
  final String originalLabel;
  final String lowPriceLabel;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.isPremium,
    required this.deliveryLabel,
    required this.availabilityLabel,
    required this.originalLabel,
    required this.lowPriceLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  imageUrl,
                  width: double.infinity,
                  height: 20.h,
                  fit: BoxFit.cover,
                ),
              ),
              if (isPremium)
                Positioned(
                  top: 1.h,
                  left: 1.w,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                    color: Colors.green,
                    child: Text(
                      'PREMIUM',
                      style: TextStyle(color: Colors.white, fontSize: 12.sp),
                    ),
                  ),
                ),
              Positioned(
                bottom: 1.h,
                left: 1.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (deliveryLabel.isNotEmpty)
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 0.5.h),
                        color: Colors.red,
                        child: Text(
                          deliveryLabel,
                          style:
                              TextStyle(color: Colors.white, fontSize: 10.sp),
                        ),
                      ),
                    if (availabilityLabel.isNotEmpty)
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 0.5.h),
                        color: Colors.red,
                        child: Text(
                          availabilityLabel,
                          style:
                              TextStyle(color: Colors.white, fontSize: 10.sp),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(2.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.sp,
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
