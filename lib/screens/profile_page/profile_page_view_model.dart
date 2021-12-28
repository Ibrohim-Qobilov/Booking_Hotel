import 'package:booking_hotel/core/components/export_page.dart';

abstract class ProfilePageViewModel extends State<ProfilePage> {
  Container profileMethod(profileImage, profileText) {
    return Container(
          height: getProportionateScreenHeight(70.0),
          decoration: BoxDecoration(
            color: MainColor.kWhite,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: ListTile(
            leading: Padding(
              padding:  EdgeInsets.only(top: getProportionateScreenHeight(5.0)),
              child: Container(
                height: getProportionateScreenHeight(55),
                width: getProportionateScreenWidth(55),
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  image:  DecorationImage(
                    fit: BoxFit.cover,
                    image:  NetworkImage(
                      profileImage,
                    ),
                  ),
                ),
              ),
            ),
            title: Text(profileText,style: TextStyle(fontSize: getProportionateScreenWidth(20),color: MainColor.kBlacText),),
          ),
        );
  }
  // Add your state and logic here
}
