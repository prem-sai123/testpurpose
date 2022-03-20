import 'package:flutter/material.dart';
import 'package:testpurpose/login_screen/data/model/ad_user.dart';

class HomePage extends StatelessWidget {
  final ADUser userObj;
  const HomePage({Key? key, required this.userObj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imgUrl =
        "https://media.threatpost.com/wp-content/uploads/sites/103/2019/09/26105755/fish-1.jpg";
    return Scaffold(
      appBar: homeScreenAppBarBuilder(userObj,context),
      body: Center(
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              TextButton(
                child: const Text('View'),
                onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: () => Navigator.of(context).pop(),
                            child: const Icon(Icons.close,color: Colors.red,)),
                      ],
                    ),
                    content: Image.network(imgUrl, height: 450),
                  ),
                ),
              ),
            ]),
            Text(userObj.userid!),
          ],
        ),
      ),
    );
  }
}

AppBar homeScreenAppBarBuilder(ADUser userObj, BuildContext context) {
  return AppBar(
    title: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('welcome',style: Theme.of(context).textTheme.bodyText1,),
        const SizedBox(width: 5),
        Text(userObj.username ?? '',style: Theme.of(context).textTheme.headline5,)
      ],
    ),
  );
}
