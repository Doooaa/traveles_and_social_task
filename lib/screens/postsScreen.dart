import 'package:flutter/material.dart';
import 'package:traveles_and_social_task/classes/posts.dart';
class postScreen extends StatelessWidget {
  final List<Posts> products;

  const postScreen(this.products, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildProductCard(),
    );
  }

  Widget buildProductCard() {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: products.map((product) => ProductCard(product)).toList(),
        ));
  }
}

class ProductCard extends StatelessWidget {
  final Posts product;

  const ProductCard(
    this.product, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
           SizedBox(height: 20,),
          Container(
            
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(

              children: [  
                Row(
                  children: [
                     Container(
                        width: 100,
                        height: 100,
                        child: Image.network(
                          product.url,
                          width: 400,
                         
                        ),
                      ),
                    // Column(
                    //   children: [Text(product.name), Text(product.date.toString())],
                    // ),
                              
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => ProductDetails(product: product),
                        //   ),
                        // );
                        Navigator.pushNamed(context, "/post-details",
                            arguments: product);
                      },
                      child: const Text("View post Details"),
                    )
                  ],
                ),
               
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
    required this.product,
  });

  final Posts product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(color: Colors.black12),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
            icon: const Icon(Icons.menu_rounded),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/Profile");
            },
            icon: const Icon(Icons.person),
          ),
        ]),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "post details",
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: double.infinity,
                    height: 400,
                    child: Image.network(
                      product.url,
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        product.name,
                      ),
                      Text(
                        "${product.date}",
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: Container(
        decoration: const BoxDecoration(color: Colors.black12),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
            icon: const Icon(Icons.menu_rounded),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/Profile");
            },
            icon: const Icon(Icons.person),
          ),
        ]),
      ),
      appBar: AppBar(title: Text("My Account"),centerTitle: true,),
      body: Column(children: [
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
            ClipRRect(
              borderRadius: BorderRadius.circular(100.0), 
              
              child: Image.network('https://th.bing.com/th/id/OIP.Q_vZZcSYOaPMcxnXMQQ99QHaE8?pid=ImgDet&rs=1', // Replace with your image URL or use AssetImage for local images
                      width: 200, // Adjust the width as needed
                      height: 200, // Adjust the height as needed
                      fit: BoxFit.cover, // You can use different BoxFit values as per your requirement
                      
                     ),
                    )
            //Image.network("https://th.bing.com/th/id/OIP.Q_vZZcSYOaPMcxnXMQQ99QHaE8?pid=ImgDet&rs=1",width: 100)

            
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("name",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),),
          ],
        ),
        SizedBox(height: 40,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 40,
              //color: Color.fromARGB(31, 44, 43, 43),
              decoration: BoxDecoration(color:Color.fromARGB(31, 44, 43, 43) ,borderRadius:BorderRadius.all(Radius.circular(10))),
              
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.bookmark),
                  SizedBox(width: 20,),
                  Text("Bookmarks",style: TextStyle(fontSize:20 ),),
                  SizedBox(width: 115,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 40,
              //color: Color.fromARGB(31, 44, 43, 43),
              decoration: BoxDecoration(color:Color.fromARGB(31, 44, 43, 43) ,borderRadius:BorderRadius.all(Radius.circular(10))),
              
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.comment),
                  SizedBox(width: 20,),
                  Text("My comments",style: TextStyle(fontSize:20 ),),
                  SizedBox(width: 85,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 40,
              //color: Color.fromARGB(31, 44, 43, 43),
              decoration: BoxDecoration(color:Color.fromARGB(31, 44, 43, 43) ,borderRadius:BorderRadius.all(Radius.circular(10))),
              
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.account_circle),
                  SizedBox(width: 20,),
                  Text("Account Details",style: TextStyle(fontSize:20 ),),
                  SizedBox(width: 80,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  )
                ],
              )
            )
          ],
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 40,
              //color: Color.fromARGB(31, 44, 43, 43),
              decoration: BoxDecoration(color:Color.fromARGB(31, 44, 43, 43) ,borderRadius:BorderRadius.all(Radius.circular(10))),
              
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.bookmark),
                  SizedBox(width: 20,),
                  Text("Bookmarks",style: TextStyle(fontSize:20 ),),
                  SizedBox(width: 100,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        
        
        
      ]),
    );
  }
}