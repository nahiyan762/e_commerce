import 'package:flutter/material.dart';
import 'package:qcoom_shopping/constants.dart';
import 'package:qcoom_shopping/size_config.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
          color: Colors.white,
          border: Border.all(width: 1, color: primaryColor)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 7,
            child: Padding(
              padding: EdgeInsets.only(left: 16, right: 4),
              child: Container(
                child: TextFormField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 8),
                    border: InputBorder.none,
                    hintText: 'Search',
                  ),
                  style: TextStyle(
                    fontSize: 16,
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            ),
          Expanded(
            flex: SizeConfig.isMobile(context) ? 2 : 1,
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                    color: Colors.white,
                    border: Border.all(width: 1, color: primaryColor),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [secondaryColor, primaryColor],
                    )),
                child: Center(
                    child: WebsafeSvg.asset("assets/icons/ic_search.svg",
                        width: 24, height: 24)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
