import 'package:flutter/material.dart';
import 'package:school_app/constant.dart';
import 'package:school_app/widgets/custom_button_drawer.dart';
import 'package:school_app/widgets/custom_divider.dart';

import 'home_admin.dart';
import 'notifications.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<String> classes = [
    'الصف الاول',
    'الصف الثاني',
    'الصف الثالث',
  ];
  final List<String> nameOfTeacher = [
    'اسم الاستاذ',
    'اسم الاستاذ',
    'اسم الاستاذ',
  ];
  final List<String> count = [
    '1',
    '2',
    '3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      endDrawer: Drawer(
        width: MediaQuery.of(context).size.width*0.7,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Column(
            children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(flex: 2,),
                Image.asset('assets/images/img_5.png',scale: 3,),
                const Spacer(),
                IconButton(onPressed: (){},
                    icon:const Icon(Icons.confirmation_num_sharp),),
              ],
            ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0),
                child: Column(
                  children: [
                    const CustomButtonDrawer(
                      text: 'الادارة',
                      pathImage: 'assets/images/img_7.png',
                    ),
                    const SizedBox(height: 8,),
                    const CustomDivider(),
                    const SizedBox(height: 12,),
                    const CustomButtonDrawer(
                      text: 'المدرسين',
                      pathImage: 'assets/images/img_8.png',
                    ),
                    const SizedBox(height: 8,),
                    const CustomDivider(),
                    ListView.builder(
                      shrinkWrap: true,
                        itemCount: nameOfTeacher.length,
                        itemBuilder:(context,index)=>
                            Text(nameOfTeacher[index],
                              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 16
                    ),
                            textAlign: TextAlign.right,),
                    ),
                    const SizedBox(height: 8,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('اضافة مدرس',style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontSize: 16
                        ),),
                        const SizedBox(width: 6,),
                        Image.asset('assets/images/img_3.png',scale: 2,),
                      ],
                    ),
                    const SizedBox(height: 12,),
                    const CustomButtonDrawer(
                      crossAxisAlignmentUpdate: CrossAxisAlignment.center,
                      text: 'الطلاب',
                      pathImage: 'assets/images/img_9.png',
                    ),
                    const SizedBox(height: 8,),
                    const CustomDivider(),
                    const SizedBox(height: 8,),
                    const CustomButtonDrawer(
                      text: 'الاعدادات',
                      pathImage: 'assets/images/img_10.png',
                    ),
                    const SizedBox(height: 8,),
                    const CustomDivider(),
                  ],
                ),
              ),
          ],),
        )
      ),
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)
              => NotificationsScreen()),
            );
          },
          child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/img_2.png',
                scale: 2,
              )),
        ),
        title: const Text(
          'مدرستي',
        ),
        actions: [
          Builder(
            builder: (context) {
              return InkWell(
                onTap: (){
                  Scaffold.of(context).openEndDrawer();
                },
                child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/img_1.png',
                      scale: 2,
                    )),
              );
            }
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFFFFFFF),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(1, 1),
                        blurRadius: 2,
                        color: Color(0xFFC2C2C2),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'الصفوف',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: ()=> navigateTo(context, HomeAdminScreen()),
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 7),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 12),
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF6F6F6),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  Text(
                                    'اضافة صف جديد',
                                    style: Theme.of(context).textTheme.bodyText1,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    'assets/images/img_3.png',
                                    scale: 2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: ()=> navigateTo(context, HomeAdminScreen()),
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 7),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 12),
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF6F6F6),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  Text(
                                    'اضافة صف جديد',
                                    style: Theme.of(context).textTheme.bodyText1,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    'assets/images/img_3.png',
                                    scale: 2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                ListView.builder(
                  itemCount: classes.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 7),
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFFFFFF),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(1, 1),
                            blurRadius: 2,
                            color: Color(0xFFC2C2C2),
                          )
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Image.asset(
                                'assets/images/img_4.png',
                                scale: 2,
                              )),
                          const SizedBox(width: 10,),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Image.asset(
                                'assets/images/img_5.png',
                                scale: 1.8,
                              )),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 8),
                                child: Text(
                                  classes[index],
                                  style:
                                      Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                                 const SizedBox(height: 56,),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      count[index],
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
