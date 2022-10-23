import 'package:astrology_application/helpperclass.dart';
import 'package:astrology_application/models/astrologyDetails.dart';
import 'package:astrology_application/models/sign_Name.dart';
import 'package:astrology_application/providers/api_provider.dart';
import 'package:astrology_application/views/homeScreen/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as SingNames;
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(args.image),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              args.name,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              args.subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black38,
                fontWeight: FontWeight.w500,
              ),
            ),
            FutureBuilder(
              future:
                  ApiHelper.apiHelper.apiCall(sign: args.name, day: 'today'),
              builder: (context, snapshot) {
                AstrologyDetails? data = snapshot.data;
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Text("Date Range :- ${data?.date_range}",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                      Text("Current Date :- ${data?.current_date}",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }
}
