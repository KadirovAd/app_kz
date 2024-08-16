import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OrderDetailView extends StatelessWidget {
  const OrderDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          const Icon(Icons.share, color: Colors.black),
          SizedBox(width: 2.w),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Оператор керек екы бала ертенге Хундай 140 экскаватор 87477779055 Алматы',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2.h),
            _buildInfoRow('Раздел', 'Водитель'),
            _buildInfoRow('Тип техники', 'Колесные экскаваторы'),
            _buildInfoRow('Марка', 'HYUNDAI'),
            _buildInfoRow('Модель', 'Hyundai HX220'),
            _buildInfoRow('Цена', 'Договорная'),
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
              'Оператор керек екы бала ертенге Хундай 140 экскаватор 87477779055 Алматы',
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 3.h),
            Text(
              'Автор',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey[300],
                  child: const Icon(Icons.person, size: 30, color: Colors.grey),
                ),
                SizedBox(width: 2.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Алихан',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'ID 20966',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios, color: Colors.black),
              ],
            ),
            SizedBox(height: 2.h),
            Text(
              'Похожие заявки',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2.h),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.grey[200],
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Пожаловаться на заявку',
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Опубликовано 14 08 2024 18:01',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'ID 117',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderDetailView(),
                    ),
                  );
                },
                child: _buildSimilarOrders()),
          ],
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
          Text(
            value,
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSimilarOrders() {
    final similarOrders = [
      {
        'title': 'Требуется оператор на каток 14т грунтовый 87075050497',
        'description': 'Требуется оператор на каток 14т грунтовый 87075050497',
        'location': 'Астана',
        'date': '13.08.2024 12:20',
        'isNew': true,
      },
      {
        'title': 'Оператор нужен на колесный экс 87025301704',
        'description': 'Оператор нужен на колесный экс 87025301704',
        'location': 'Астана',
        'date': '12.08.2024 15:16',
        'isNew': true,
      },
      {
        'title': 'Водитель керек',
        'description': 'Водитель керек,Камаз манипулятор 1990 год...',
        'location': 'Балхаш',
        'date': '09.08.2024 12:41',
        'isNew': true,
      },
      {
        'title':
            'Ассаламу алейкум грунтовый каток оператор Керек каток Жана айлык срочно',
        'description':
            'Ассаламу алейкум грунтовый каток оператор Керек каток Жана айлык срочно',
        'location': 'Шымкент',
        'date': '09.08.2024 11:58',
        'isNew': true,
      },
    ];

    return Column(
      children: similarOrders.map((order) {
        return Container(
          margin: EdgeInsets.only(bottom: 2.h),
          padding: EdgeInsets.all(2.w),
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
              Row(
                children: [
                  Expanded(
                    child: Text(
                      order['title']! as String,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (order['isNew']! as bool)
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 2.w, vertical: 0.5.h),
                      color: Colors.red,
                      child: Text(
                        'NEW',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(height: 1.h),
              Text(
                order['description']! as String,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black87,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 1.h),
              Row(
                children: [
                  Icon(Icons.location_on, size: 16.sp, color: Colors.grey),
                  SizedBox(width: 1.w),
                  Text(
                    order['location']! as String,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    order['date']! as String,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
