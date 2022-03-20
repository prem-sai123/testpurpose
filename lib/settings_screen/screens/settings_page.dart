import 'package:flutter/material.dart';
import 'package:testpurpose/settings_screen/screens/api_call.dart';
import 'package:testpurpose/settings_screen/screens/api_user_model.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  ApiCall userList = ApiCall();
  int listLength = 0;
  List<ApiUserModel> list1 = [];
  List<ApiUserModel> list2 = [];
  @override
  void initState() {
    super.initState();
    userList.fetchApiPosts().then((value) {
      setState(() {
        list1.addAll(value);
        list2 = list1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Users'),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size(50, 50),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search User',
                    contentPadding: EdgeInsets.only(left: 10),
                  ),
                  onChanged: (text) {
                    setState(() {
                      list2 = list1.where((element) {
                        var name = element.name!.toLowerCase();
                        return name.toLowerCase().contains(text);
                      }).toList();
                    });
                  },
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white),
              ),
            ),
          ),
        ),
        body: FutureBuilder<List<ApiUserModel>>(
          future: userList.fetchApiPosts(),
          builder: (context, snapshot) {
            listLength = list2.length;
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: double.infinity,
                    height: 35,
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '# $listLength',
                          textAlign: TextAlign.start,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )),
                    color: Colors.grey.shade200),
                Expanded(
                  child: ListView.builder(
                    itemCount: listLength,
                    itemBuilder: (context, index) {
                      return _buildListItem(snapshot, index);
                    },
                  ),
                ),
              ],
            );
          },
        ));
  }

  Card _buildListItem(AsyncSnapshot<List<ApiUserModel>> snapshot, int index) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.all(0),
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.purple, borderRadius: BorderRadius.circular(30)),
          child: Center(
              child: Text(
            list2[index].id.toString(),
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
        title: Center(child: Text(list2[index].name.toString())),
      ),
    );
  }
}

Future refetchList(ApiCall userList) {
  userList.fetchApiPosts();
  return Future.delayed(const Duration(seconds: 3));
}
