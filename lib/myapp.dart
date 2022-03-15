import 'package:flutter/material.dart';
import 'featurred_plants.dart';
import 'categories.dart';
import 'recentlyAdded.dart';

class MyApp extends StatelessWidget {
  final categories = [
    'Short stories',
    'Science fiction',
    'Action & adventure',
    'Poet',
    'Scient Fiction',
    'Rumor'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                )),
            BottomNavigationBarItem(
                label: 'Explore',
                icon: Icon(
                  Icons.explore_outlined,
                  size: 30,
                )),
            BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(
                  Icons.settings_outlined,
                  size: 30,
                ))
          ],
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Tô Tuấn Thành'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 210, child: FeaturedPlants()),
              const Padding(
                padding: EdgeInsets.only(
                  top: 12.0,
                  bottom: 12.0,
                ),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return ButtonCategories(categoryName: categories[index]);
                  },
                  itemCount: categories.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(width: 12.0),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                child: Text(
                  'Recently Added',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const Expanded(child: RecentlyAdded())
            ],
          ),
        ),
      ),
    );
  }
}
