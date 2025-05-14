import 'package:flutter/material.dart';

class ErshadatScreen extends StatefulWidget {
  const ErshadatScreen({super.key});

  @override
  State<ErshadatScreen> createState() => _ErshadatScreenState();
}

class _ErshadatScreenState extends State<ErshadatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            color: Colors.transparent.withAlpha(30),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/guide.jpg"))),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "عراض متلازمة داون",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "Arial"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '''
                أغلبية الأولاد الذين يعانون من متلازمة داون يتميزون بـما يأتي:
                ملامح وجه مميزة مثل الشكل الجانبي المسطح، الأذنين الصغيرتين، العينين المائلتين والفم الصغير.
                رقبة ويدين وساقين قصيرة
                ضعف في العضلات ومفاصل مرخية، وفي مرحلة الطفولة المتأخرة يتحسن مستوى التوتر العضلي (Muscle tone) عادةً.
                نسبة الذكاء أدنى من المعدل العام
                '''
                          .trim(),
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "أسباب وعوامل خطر متلازمة داون",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "Arial"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '''
من أسباب متلازمة داون هي مشكلة ما في الكروموسومات (Chromosomes) في جسم الجنين قبل ولادته بوقت طويل جدًا، فمنظومة الكروموسومات هذه تشكل جزءًا مهمًا في خلايا الجسم، إذ تحتوي على المادة والمعلومات الوراثية للإنسان وهي المعروفة باسم الحمض النووي الريبوزي المنزوع الأكسجين (Deoxyribonucleic acid - DNA).

في العادة يوجد في جسم الجنين السليم الطبيعي 46 كروموسومًا في كل خلية جسدية أما الجنين الذي يعاني من متلازمة داون فتحتوي خلاياه على 47 كروموسومًا، وفي أحيان نادرة جدًا، يمكن لخلل وراثي آخر أن يؤدي إلى متلازمة داون حيث أن الكرومسوم الإضافي السابع والأربعون يؤدي إلى حدوث تغيير في تطور عقل الجنين وجسمه

''',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
