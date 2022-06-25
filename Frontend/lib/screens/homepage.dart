import 'package:flutter/material.dart';
import 'package:hackathon/screens/recomdations.dart';
import 'package:hackathon/widgets/button.dart';
import '../services/HttpRequestDemo.dart';
import '../widgets/clearAppBar.dart';
import '../widgets/firestoreStream.dart';
import 'apiScrap.dart';
import 'auth/login.dart';
import 'more_detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: clearAppBarWithButtion(
          text: '',
          fontSize: 1,
          whaticon: Icons.backspace_outlined,
          onPressed: () {
            ///TODO: Add a proper sign out idk how to do this yet so do the on pressed
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 2,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/beach.jpg"),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Welcome Back",
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Spacer(),
            // Streaming(
            //   whatData: 'test',
            //   height: 200,
            //   stream: 'test',
            //   onPressed: () =>
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => MoreDetail()),
            //       ),
            // ),
            Spacer(
              flex: 1,
            ),
            SizedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Recomdations()),
              ),
              text: "Travel\n Recommendations",
              width: 200,
              height: 75,
              fontSize: 15,
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
