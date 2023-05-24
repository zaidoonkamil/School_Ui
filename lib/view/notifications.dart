import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key? key}) : super(key: key);

  final List<String> time=[
    'دقيقة 1 ',
    'دقيقة 6 ',
    'دقيقة 2 ',
  ];
  final List<String> name=[
    'اسم الاستاذ',
    'اسم الاستاذ',
    'اسم الاستاذ',
  ];
  final List<String> duty=[
    'قام باضافة واجب جديد',
    'قام باضافة واجب جديد',
    'قام باضافة واجب جديد',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('الاشعارات'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: name.length,
            itemBuilder: (context,index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 8
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(time[index],
                            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontSize: 12, // New font size
                            ),
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                name[index],
                                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF222222),
                                  fontSize: 18
                                ),
                              ),
                              Text(duty[index],
                                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                  fontSize: 15
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10,),
                          ClipOval(
                            child: Image.asset('assets/images/img_6.png',scale: 2,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
