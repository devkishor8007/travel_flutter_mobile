import 'package:travel_flutter_mobile/model/icon_model.dart';
import 'package:travel_flutter_mobile/model/popularDestination_model.dart';
import 'package:flutter/material.dart';
import 'package:travel_flutter_mobile/page/detailpage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.01,
            vertical: size.height * 0.01,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hi Aminya!",
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: Theme.of(context).textTheme.button.fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1510832198440-a52376950479?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=748&q=80",
                      ),
                      radius: 25,
                    ),
                  ],
                ),
                Text(
                  "Discover",
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.headline5.fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search your Places",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.indigo,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                Container(
                  height: size.height * 0.17,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...getIconModel
                          .map(
                            (e) => Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              child: Container(
                                height: size.height * 0.17,
                                width: size.width * 0.3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.lightBlueAccent
                                            .withOpacity(0.3),
                                        child: e.icon),
                                    SizedBox(
                                      height: size.height * 0.01,
                                    ),
                                    Text(
                                      e.name,
                                      style: TextStyle(
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .subtitle2
                                            .fontSize,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.035,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Destinations",
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.subtitle1.fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All >",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize:
                            Theme.of(context).textTheme.subtitle1.fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.013,
                ),
                Container(
                  height: size.height * 0.29,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...getPopularDestination
                          .map(
                            (data) => InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => DetailPage(
                                        popularDestination: data,
                                      ),
                                    ));
                              },
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: size.height * 0.29,
                                  width: size.width * 0.6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: size.height * 0.21,
                                        child: data.image,
                                      ),
                                      SizedBox(
                                        height: size.height * 0.01,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            width: size.width * 0.03,
                                          ),
                                          Text(
                                            data.name,
                                            style: TextStyle(
                                              fontSize: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  .fontSize,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            width: size.width * 0.31,
                                          ),
                                          Icon(
                                            Icons.favorite_border,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: size.height * 0.002,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            width: size.width * 0.02,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: Theme.of(context)
                                                .textTheme
                                                .subtitle1
                                                .fontSize,
                                            color: Colors.amber.shade700,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: Theme.of(context)
                                                .textTheme
                                                .subtitle1
                                                .fontSize,
                                            color: Colors.amber.shade700,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: Theme.of(context)
                                                .textTheme
                                                .subtitle1
                                                .fontSize,
                                            color: Colors.amber.shade700,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: Theme.of(context)
                                                .textTheme
                                                .subtitle1
                                                .fontSize,
                                            color: Colors.amber.shade700,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: Theme.of(context)
                                                .textTheme
                                                .subtitle1
                                                .fontSize,
                                            color: Colors.amber.shade700,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.024,
                ),
                Container(
                  child: Text(
                    "More Trip For You",
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.subtitle1.fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.024,
                ),
                Container(
                  height: size.height * 0.4,
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: [
                      ...getPopularDestination
                          .map(
                            (data) => ListTile(
                              title: Text(
                                data.name,
                                style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .button
                                      .fontSize,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber.shade700,
                                    size: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .fontSize,
                                  ),
                                  SizedBox(
                                    width: size.width * 0.01,
                                  ),
                                  Text("Rating"),
                                ],
                              ),
                              leading: Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                height: size.height * 0.3,
                                width: size.width * 0.24,
                                child: data.image,
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
