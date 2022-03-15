import 'book.dart';
import 'package:flutter/material.dart';
import 'detail_screen.dart';

class RecentlyAdded extends StatelessWidget {
  const RecentlyAdded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20),
        height: 280,
        child: ListView.builder(
          shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: BookDetail.list.length,
            itemBuilder: (context, i) => RecentUpdate(
                  detail: BookDetail.list[i],
                )),
      ),
    );
  }
}

class RecentUpdate extends StatelessWidget {
  const RecentUpdate({Key? key, required this.detail}) : super(key: key);

  final BookDetail detail;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder:
          (context) => Detailscreen(detail: detail))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                    tag: detail.id,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Container(
                        height: 180,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/image/' + detail.image))),
                      ),
                    )
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 180,
                          child: Text(
                            detail.text,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        // authors
                        SizedBox(
                          width: 150,
                          height: 30,
                          child: Text(
                            detail.authors,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.blueAccent
                            ),
                          ),
                        ),
                        // decription
                        SizedBox(

                          width: 150,
                          height: 80,
                          child: Text(
                            detail.description,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                          ),
                        )
                      ],
                    ),
                  ),
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
