import 'package:flutter/material.dart';
import 'package:traveles_and_social_task/classes/posts.dart';
import 'package:traveles_and_social_task/classes/class_blog.dart';


class HomePage extends StatelessWidget {
  final Object? pageInfo;
  

   HomePage(
    this.pageInfo,{ 
    super.key,  
  });

  @override
  Widget build(BuildContext context) {
    final pageInfo = this.pageInfo as Map? ?? {};
   // final x = this.infogenerateScreen as Map? ?? {};
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.black12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/", );
              },
              icon: Icon(Icons.menu_rounded),
            ),
            // IconButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, "/postScreen",arguments: Blogs.Listblos);
            //   },
            //   icon: Icon(Icons.time_to_leave),
            // ),

            
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/postScreen",
                    arguments: Posts.prods);
              },
              icon: Icon(Icons.production_quantity_limits),
            ),
          
            
         
          ],
        ),
      ),
      body: Container(
        child: Text(
          pageInfo['description'] ?? "",
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
        ),
      ),
      appBar: AppBar(title: Text(pageInfo["title"] ?? "Entry Page")),
    );
  }
}
