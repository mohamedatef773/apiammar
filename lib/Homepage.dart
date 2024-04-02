import 'package:apiammar/services/api_services.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News App")),
      body: FutureBuilder(future: ApiServices().fetchArticle(), builder: (context, snapshot) =>
      snapshot.hasData
          ? ListView.builder(itemCount:snapshot.data!.length ,itemBuilder:(context, index) =>
        Column(
          children: [
            Text(snapshot.data![index].title ?? "Ammar Abdelhalem"),
            SizedBox(height: 30,),
            Image.network(snapshot.data![index].urlToImage ?? "https://media.licdn.com/dms/image/D4D03AQE0_PyVsOyEIw/profile-displayphoto-shrink_800_800/0/1694438019926?e=1717632000&v=beta&t=-kynPbgdJSkxia4WhYxW_DXy1OXpmtNTPMjPyGC4vt4")
          ],
        ),

      )
        : Center(child: CircularProgressIndicator()),),
    );
  }
}
