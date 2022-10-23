import 'package:astrology_application/helpperclass.dart';
import 'package:astrology_application/models/sign_Name.dart';
import 'package:astrology_application/utils/appRoutes.dart';
import 'package:astrology_application/utils/signlist.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ASTROLOGY"),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.light_mode_outlined),
          ),
        ],
      ),
      body: Container(
        height: 600,
        alignment: Alignment.center,
        child: ListView.builder(
            itemCount: signList.length,
            itemBuilder: (context, i) {
              return Card(
                elevation: 3,
                child: ListTile(
                  isThreeLine: true,
                  subtitle: Text(
                    signList[i].subtitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  title: Text(signList[i].name),
                  leading: Image.network(signList[i].image),
                  trailing: TextButton(
                      child: const Text("View More"),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes().detailsPage,
                          arguments: SingNames(
                            image: signList[i].image,
                            name: signList[i].name,
                            subtitle: signList[i].subtitle,
                          ),
                        );
                      }),
                ),
              );
            }),
      ),
    );
  }
}
