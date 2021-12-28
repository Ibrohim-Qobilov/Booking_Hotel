import 'package:booking_hotel/core/components/export_page.dart';
import './profile_page_view_model.dart';

class ProfilePageView extends ProfilePageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      backgroundColor: MainColor.kWhite,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(40.0),
            ),
            profileMethod(
                "https://images.unsplash.com/photo-1640558378987-74741517e220?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMjF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                "Nimadur ism"),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Padding(
                  padding:
                      EdgeInsets.only(top: getProportionateScreenHeight(5.0)),
                  child: Container(
                    height: getProportionateScreenHeight(55),
                    width: getProportionateScreenWidth(55),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: getProportionateScreenHeight(15.0),
                        bottom: getProportionateScreenHeight(15.0),
                      ),
                      child: SvgPicture.asset(
                        IconName.yourFavorite,
                        color: MainColor.pink,
                        height: getProportionateScreenHeight(10),
                        width: getProportionateScreenWidth(10.0),
                      ),
                    ),
                  ),
                ),
                title: Text(
                  "Your Favorite",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(20),
                      color: MainColor.kBlacText),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(
                    top: getProportionateScreenHeight(8.0),
                    bottom: getProportionateScreenHeight(8.0),
                  ),
                  child: Container(
                    height: getProportionateScreenHeight(55),
                    width: getProportionateScreenWidth(55),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(
                        IconName.payment,
                        color: MainColor.pink,
                        height: getProportionateScreenHeight(10),
                        width: getProportionateScreenWidth(10.0),
                      ),
                    ),
                  ),
                ),
                title: Text(
                  "Payment",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(20),
                      color: MainColor.kBlacText),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(
                    top: getProportionateScreenHeight(6.0),
                    bottom: getProportionateScreenHeight(6.0),
                  ),
                  child: Container(
                    height: getProportionateScreenHeight(55),
                    width: getProportionateScreenWidth(55),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(
                        IconName.help,
                        color: MainColor.pink,
                        height: getProportionateScreenHeight(10),
                        width: getProportionateScreenWidth(10.0),
                      ),
                    ),
                  ),
                ),
                title: Text(
                  "Help",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(20),
                      color: MainColor.kBlacText),
                ),
              ),
            ),
          InkWell(
            onTap: (){},
              child: ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(
                    top: getProportionateScreenHeight(6.0),
                    bottom: getProportionateScreenHeight(6.0),
                  ),
                  child: Container(
                    height: getProportionateScreenHeight(55),
                    width: getProportionateScreenWidth(55),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(
                        IconName.promotions,
                        color: MainColor.pink,
                        height: getProportionateScreenHeight(10),
                        width: getProportionateScreenWidth(10.0),
                      ),
                    ),
                  ),
                ),
                title: Text(
                  "Promotions",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(20),
                      color: MainColor.kBlacText),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Padding(
                  padding:
                      EdgeInsets.only(top: getProportionateScreenHeight(6.0),
                        bottom: getProportionateScreenHeight(6.0),),
                  child: Container(
                    height: getProportionateScreenHeight(55),
                    width: getProportionateScreenWidth(55),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(
                        IconName.setting,
                        color: MainColor.pink,
                        height: getProportionateScreenHeight(10),
                        width: getProportionateScreenWidth(10.0),
                      ),
                    ),
                  ),
                ),
                title: Text(
                  "Setting",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(20),
                      color: MainColor.kBlacText),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
