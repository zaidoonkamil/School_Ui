import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:school_app/constant.dart';
import 'package:school_app/view/login.dart';
import 'package:school_app/view/notifications.dart';
import 'package:school_app/widgets/Custom_formtextfield.dart';
import 'package:school_app/widgets/custom_button.dart';
import 'package:school_app/widgets/custom_button_drawer.dart';
import 'package:school_app/widgets/custom_divider.dart';


class HomeAdminScreen extends StatelessWidget {
  HomeAdminScreen({Key? key}) : super(key: key);

  final List<String> name = [
    'اسم الطالب',
    'اسم الطالب',
    'اسم الطالب',
  ];
  final List<String> age = [
    'العمر',
    'العمر',
    'العمر',
  ];
  final String user = 'ss';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationsScreen()),
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
          Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/img_1.png',
                scale: 2,
              ))
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
                  width: double.maxFinite,
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
                            'اسم الدرس',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 7),
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 12),
                            decoration: BoxDecoration(
                                color: const Color(0xFFF6F6F6),
                                borderRadius: BorderRadius.circular(5)),
                            child: const CustomButtonDrawer(
                              crossAxisAlignmentUpdate: CrossAxisAlignment.center,
                              text: 'اضافة ملاحضات',
                              pathImage: 'assets/images/img_3.png',
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              showDialog(
                                  context: context,
                              builder: (BuildContext context) {
                                    return AlertDialog(
                                      content: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            Container(
                                        alignment:Alignment.center,
                                              child: Text(
                                                'اضافة طالب جديد',style:
                                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                                color: const Color(0xFF222222),
                                                fontWeight: FontWeight.bold
                                              ),
                                              ),
                                            ),
                                            const SizedBox(height: 20,),
                                            CustomTextFormField(
                                             text: 'الاسم',
                                             hintText: 'ادخل اسم الطالب',
                                            ),
                                            CustomTextFormField(
                                              text: 'رقم الهاتف',
                                              hintText: 'ادخل رقم الهاتف',
                                            ),
                                            CustomTextFormField(
                                              text: 'العنوان',
                                              hintText: 'ادخل العنوان',
                                            ),
                                            Container(
                                              alignment: Alignment.topRight,
                                              margin: const EdgeInsets.symmetric(
                                                  horizontal: 10, vertical: 7),
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 4, horizontal: 10),
                                              decoration: BoxDecoration(
                                                  color: const Color(0xFFF6F6F6),
                                                  borderRadius: BorderRadius.circular(5)),
                                              child: const CustomButtonDrawer(
                                                crossAxisAlignmentUpdate: CrossAxisAlignment.center,
                                                text: 'ارفاق صورة',
                                                pathImage: 'assets/images/img_11.png',
                                              ),
                                            ),
                                            const SizedBox(height: 10,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: const [
                                                CustomBottom(
                                                  horizontal: 14,
                                                vertical: 5,
                                                sizeCircular:5,
                                                  colorText:Color(0xFFFFFFFF),
                                                  colorBottom: Color(0xFF6B6B6B),
                                                  text: 'الغاء',
                                                ),
                                                CustomBottom(
                                                  horizontal: 18,
                                                  vertical: 5,
                                                  sizeCircular:5,
                                                  colorText:Color(0xFFFFFFFF),
                                                  colorBottom:  Color(0xFF22A39F),
                                                  text: 'حفظ',
                                                ),

                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                              }
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 7),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 10),
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF6F6F6),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const CustomButtonDrawer(
                                crossAxisAlignmentUpdate: CrossAxisAlignment.center,
                                text: 'اضافة طالب جديد',
                                pathImage: 'assets/images/img_3.png',
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
                  itemCount: name.length,
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
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  customButton: Image.asset(
                                    'assets/images/img_4.png',
                                    scale: 2,
                                  ),
                                  items: [

                                    ...MenuItems.firstItems.map(
                                      (item) => DropdownMenuItem<MenuItem>(
                                        value: item,
                                        child: MenuItems.buildItem(item),
                                      ),
                                    ),
                                    const DropdownMenuItem<Divider>(
                                        enabled: false, child: Divider()),
                                    ...MenuItems.secondItems.map(
                                      (item) => DropdownMenuItem<MenuItem>(
                                        value: item,
                                        child: MenuItems.buildItem(item),
                                      ),
                                    ),

                                  ],
                                  onChanged: (value) {
                                    MenuItems.onChanged(
                                        context, value as MenuItem);
                                  },
                                  dropdownStyleData: DropdownStyleData(
                                    width: 160,
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: const Color(0xFFF9F9F9),
                                    ),
                                    elevation: 8,
                                    offset: const Offset(0, 8),
                                  ),
                                  menuItemStyleData: MenuItemStyleData(
                                    customHeights: [
                                      ...List<double>.filled(
                                          MenuItems.firstItems.length, 48),
                                      8,
                                      ...List<double>.filled(
                                          MenuItems.secondItems.length, 48),
                                    ],
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    name[index],
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        ?.copyWith(
                                            color: const Color(0xFF595959),
                                            fontSize: 16),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        age[index],
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            ?.copyWith(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'assets/images/img_6.png',
                                      scale: 1.9,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 30),
                            child: CustomDivider(),
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              Text(
                                '3345@',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(fontSize: 12),
                              ),
                              Text(
                                ' :المعرف',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(fontSize: 14),
                              ),
                              const Spacer(),
                              Text(
                                '12345',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(fontSize: 12),
                              ),
                              Text(
                                ' : كلمة المرور',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(fontSize: 14),
                              ),
                              const Spacer(),
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

class MenuItem {
  final String text;
  final IconData icon;

  const MenuItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [home, share];
  static const List<MenuItem> secondItems = [logout];

  static const home = MenuItem(
    text: 'ارسال رسالة',
    icon: Icons.mail_outline,
  );
  static const share = MenuItem(text: 'تعديل', icon: Icons.edit);
  static const logout = MenuItem(text: 'حذف', icon: Icons.delete_outline);

  static Widget buildItem(MenuItem item) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          item.text,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF6B6B6B),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Icon(item.icon,
            color: item.text == 'حذف'
                ? const Color(0xFFFF1212)
                : const Color(0xFF22A39F),
            size: 18),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.home:
        navigateTo(
            context, const LoginScreen()
        );
        break;
      case MenuItems.share:
        navigateTo(
            context, const LoginScreen()
        );
        break;
      case MenuItems.logout:
        navigateTo(
            context, const LoginScreen()
        );
        break;
    }
  }
}
