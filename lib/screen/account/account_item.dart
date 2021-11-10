import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:websafe_svg/websafe_svg.dart';

class AccountItem extends StatelessWidget {
  final String name;
  final Widget icon;
  final String id;
  final String destination;
  const AccountItem(this.name, this.icon, this.id, this.destination, {Key? key}) : super(key: key);

  Widget getWidget (String id) {
    switch(id) {
      case "5":
        return Text('1.0.0', style: TextStyle(color: const Color(0xFF7D7D7D), fontSize: 16.sp));
      case "6":
        return Container();
      default:
        return WebsafeSvg.asset("assets/icons/ic_forward.svg");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: () => Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(left: 25.w),
                        child: icon
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: Text(name, style: TextStyle(
                          color: const Color(0xFF7D7D7D),
                          fontSize: 16.sp
                        )
                        )
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, destination);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(right: 25.w),
                          child: getWidget(id)
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 21,
              ),
              Container(
                height: 1,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                color: const Color(0xFFF2F2F2),
              )
            ],
          ),
        )
    );
  }
}
