import 'package:app_kz/src/presentations/home_views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OrderView extends StatefulWidget {
  const OrderView({super.key});

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Дизельный насос высокого давления',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          const Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
          SizedBox(width: 2.w),
          const Icon(
            Icons.ios_share,
            color: Colors.black,
          ),
          SizedBox(width: 2.w),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Дизельный насос высокого давления',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Прочие запчасти',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 1.w),
                  Text(
                    '300 000 ₸',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Image.asset(
                'assets/images/turbo.jpg',
                fit: BoxFit.fill,
                width: double.infinity,
              ),
              SizedBox(height: 2.h),
              _buildInfoRow('Подходит к технике (типы техники)',
                  'Экскаваторы-погрузчики, Гусеничные экскаваторы'),
              _buildInfoRow(
                  'Подходит к технике (типы марок)', 'KOMATSU, XCMG, HITACHI'),
              _buildInfoRow('Артикул', '3417677X'),
              _buildInfoRow('Состояние запчасти', 'Новая'),
              _buildInfoRow('В наличии', 'Есть'),
              _buildInfoRow('Город', 'Алматы'),
              SizedBox(height: 2.h),
              Text(
                'Описание',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 1.h),
              Text(
                'Подача в день заказа. Бесплатная доставка на место. Наличий и безналичный расчет. Без посредников. Доставка в день обращения.',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                'Рекомендуем вам',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
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
                child: const Expanded(
                  child: ProductGrid(),
                ),
              ),
              SizedBox(height: 2.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Flexible(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
