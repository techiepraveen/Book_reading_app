import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            color: Colors.grey[100],
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // IconButton(icon: Icon(Icons.hail), onPressed: () {}),
              IconButton(icon: Icon(Icons.home), onPressed: () {}),
              IconButton(icon: Icon(Icons.people), onPressed: () {}),
              IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
              IconButton(icon: Icon(Icons.account_balance), onPressed: () {}),
              IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Enjoy Reading",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontStyle: FontStyle.italic),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/human.png'),
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Search",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Icon(Icons.search),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/cover.jpg"),
                  ),
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //category list
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 10.0),
              child: Container(
                height: 140,
                width: MediaQuery.of(context).size.height - 185.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  primary: false,
                  children: <Widget>[
                    options("assets/bestseller.jpg", "Bestseller"),
                    options("assets/Offers.jpg", "Best Offers"),
                    options("assets/kids.jpg", "Kids"),
                    options("assets/romance.jpg", "Romantic"),
                    options("assets/more.jpeg", "More Books"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recommend",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            Text(
                              "See all",
                              style: TextStyle(
                                fontSize: 22, //fontWeight: FontWeight.bold
                              ),
                            ),
                            // Icon(
                            //   Icons.arrow_right_rounded,
                            //   size: 40,
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
//recommended list
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 16.0),
              child: Container(
                height: 400,
                width: MediaQuery.of(context).size.height - 185.0,
                child: ListView(
                  //scrollDirection: Axis.vertical,
                  primary: false,
                  children: <Widget>[
                    recommended("assets/2.jpeg", "The Night Of Charlie Noon",
                        "A story of a journey", "226 reading"),
                    recommended("assets/3.png", "The Wolf of Dictionary",
                        "A collection of unique words", "226 reading"),
                    recommended("assets/1.jpeg", "First Soul",
                        "A tale by Keeley Smith", "226 reading"),
                    recommended("assets/4.png", "Oliver Twist",
                        "A tale by Charlie Dickens", "226 reading"),
                    recommended("assets/5.png", "Jaya Nepal",
                        "Know some major facts of Nepal", "226 reading"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget options(String imgpath, String name) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: () {},
      child: Column(
        children: [
          Column(
            children: [
              Image.asset(
                imgpath,
                height: 100,
                width: 60,
              ),
              Text(
                name,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget recommended(String imgpath, String name, String title, String readers) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[100],
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 3, // takes 30% of available width
                child: Image.asset(
                  imgpath,
                  height: 150,
                  width: 150,
                ),
              ),
              Expanded(
                flex: 7, // takes 70% of available width
                child: Row(
                  children: [
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(title,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                            textAlign: TextAlign.right),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(readers,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                ),
                                color: Colors.lime,
                              ),
                              child: Center(
                                  child: Text(
                                "Read it",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              )),
                              // color: Colors.yellow,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    ),
  );
}
