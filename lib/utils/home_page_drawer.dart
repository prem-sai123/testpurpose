import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({Key? key}) : super(key: key);
  myProgressShower() {
    return Fluttertoast.showToast(
        msg: "This feature is under development \r\n pls wait...!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.indigo,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Drawer(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 5),
          children: [
            const SizedBox(
              height: 100,
              child: Image(
                  image: NetworkImage(
                      'https://assets.jobsforher.com/uploads/v3/companies/employer/4332/foTEXlElzi-1564484497.png')),
            ),
            const Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: const Icon(Icons.cloud_done),
              title: const Text('Easycloud'),
              onTap: () => myProgressShower(),
            ),
            ListTile(
              leading: const Icon(Icons.notes_rounded),
              title: const Text('Lunch Sheet'),
              onTap: () => myProgressShower(),
            ),
            ListTile(
              leading: const Icon(Icons.holiday_village), 
              title: const Text('Request Leave'),
              onTap: () => myProgressShower(),
            ),
            ListTile(
              leading: const Icon(Icons.update),
              title: const Text('Update'),
              onTap: () => myProgressShower(),
            ),
          ],
        ),
      ),
    );
  }
}
