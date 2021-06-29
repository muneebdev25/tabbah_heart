import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/components/image_and_icons.dart';
import 'package:myapp/components/title_and_price.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/registration.dart';


class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  void initState() {
    super.initState();
    testTimer();
  }
var catBarTitles = [
    'Clothes',
    'Electronic',
    'HouseHold',
    'Appliances',
    'Others'
  ];
  var catBarIcons = [
    Icons.ac_unit,
    Icons.power,
    Icons.house,
    Icons.deck,
    Icons.more
  ];
  var imgLst = [
    'assets/Note20ultra.jpg',
    'assets/Backlit.jpg',
    'assets/MacbookAir.jpg',
    'assets/MacbookPro.jpg',
    'assets/GamingPc.jpg'
  ];
  var imgNameLst = [
    'Note 20 Ultra',
    'Backlit Keyboard',
    'Macbook Air',
    'Macbook Pro',
    'Gaming Pc'
  ];


   getblogdata() async{
     var blogs = [];
     var url = "https://tabbaheart.couponhalf.com/fetchblogs";
     var response = await http.get(Uri.parse(url));
      var jsonData = jsonDecode(response.body);

      for(var i in jsonData){
        BlogModel blog = BlogModel(i['id'],i['title'],i['image'],i['desc'],i['created_at']);
        blogs.add(blog);
      }
      return(blogs);

   }
  
  int counter = 0;
  var lstColor = [Colors.black, Colors.purple];
  int item0 = 1, item1 = 0, item2 = 0, item3 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {

        },
      ),
    ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          onPressed: getblogdata,
          backgroundColor: Color(0xFFDE4B39),
          child: Icon(
            Icons.search,
            size: 40,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    item0 = 1;
                    item1 = 0;
                    item2 = 0;
                    item3 = 0;
                  });
                },
                icon: Icon(Icons.home),
                iconSize: 30,
                color: Color(0xFFDE4B39),
                padding: EdgeInsets.only(left: 28.0),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    item0 = 0;
                    item1 = 1;
                    item2 = 0;
                    item3 = 0;
                  });
                },
                icon: Icon(Icons.favorite),
                iconSize: 30,
                color: lstColor[item1],
                padding: EdgeInsets.only(right: 28.0),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    item0 = 0;
                    item1 = 0;
                    item2 = 1;
                    item3 = 0;
                  });
                },
                icon: Icon(Icons.add_shopping_cart),
                iconSize: 30,
                color: lstColor[item2],
                padding: EdgeInsets.only(left: 28.0),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Registration(),
                    ),
                  );
                },
                icon: Icon(Icons.person),
                iconSize: 30,
                color: lstColor[item3],
                padding: EdgeInsets.only(right: 28.0),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Items',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  'View More',
                  style: TextStyle(color: Colors.purple, fontSize: 13),
                ),
              ),
              SizedBox(
                child: bigCotainer(counter),
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    'More Categories',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: catBarTitles.length,
                    itemBuilder: (context, int index) {
                      return catBar(index);
                    }),
              ),
              ListTile(
                title: Text(
                  'Popular Items',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  'View More',
                  style: TextStyle(color: Colors.purple, fontSize: 13),
                ),
              ),
              FutureBuilder(
                future: getblogdata(),
                builder: (context,snapshot){
                  if(snapshot.data == null){
                    return Container(child: Text("Noting IN API"),);
                  }
                  else return GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 12.0,
                        crossAxisCount: 2,
                        mainAxisSpacing: 10),
                    shrinkWrap: true,
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, int i) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                      blogdetails: snapshot.data[i]),),
                              );
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 3,
                                      spreadRadius: 2)
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.width * 0.28,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      image: DecorationImage(
                                          image: NetworkImage("https://tabbaheart.couponhalf.com/public/backend-assets/images/blogcategories/"+snapshot.data[i].image), fit: BoxFit.fill)),
                                ),
                                ListTile(
                                  title: Text(
                                   snapshot.data[i].title,
                                   
                                    style:
                                        TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  
                                  subtitle: Row(
                                    children: [
                                      SizedBox(height: 30),
                                      // Text(snapshot.data[i].desc),
                                      Text(snapshot.data[i].created_at),
                                      // Text(snapshot.data[i].id),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                      );
                    });
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget bigCotainer(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                spreadRadius: 3,
                blurRadius: 3)
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                image: DecorationImage(
                    image: AssetImage(imgLst[index]), fit: BoxFit.fill),
              ),
            ),
            ListTile(
              title: Text(
                imgNameLst[index],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Star(),
                  Star(),
                  Star(),
                  Star(),
                  Star(),
                  Text(
                    ' 5.0 (23 Reviews)',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget catBar(int index) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 3,
              spreadRadius: 2,
              color: Colors.grey.withOpacity(0.5))
        ],
      ),
      child: ListTile(
        tileColor: Colors.white,
        leading: Icon(
          catBarIcons[index],
          color: Colors.purple,
        ),
        title: Text(
          catBarTitles[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text('5 Items'),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Star() {
    return Icon(
      Icons.star,
      color: Colors.amber,
      size: 12,
    );
  }

  void testTimer() {
    Timer(Duration(seconds: 3), () {
      setState(() {
        if (counter < imgLst.length - 1) {
          if (counter != imgLst.length) {
            counter++;
          }
          testTimer();
        } else {
          counter = 0;
          testTimer();
        }
      });
    });
  }
}

class BlogModel{
  var id;
  var title;
  var image;
  var desc;
  // ignore: non_constant_identifier_names
  var created_at;
  
  BlogModel(this.id,this.title,this.image,this.desc,this.created_at);

}

class DetailsScreen extends StatelessWidget {
  
  const DetailsScreen({Key key, this.blogdetails }) : super(key: key);
final BlogModel blogdetails;
 
  
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(title: blogdetails.title, desc: blogdetails.desc),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text('Back'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
