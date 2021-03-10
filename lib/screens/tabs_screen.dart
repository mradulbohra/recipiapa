import 'package:flutter/material.dart';
import 'categories_screen.dart';
import 'favorites_screen.dart';

class TabScreen extends StatefulWidget {
  static const String routeName = '/tabs_screen';
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {

  int _selectedPageIndex = 0;
  _selectPage(int index){
    setState(() {
      _selectedPageIndex = index;

    });


  }
  List<Widget> _pages = [
    CategoriesScreen(),
    FavoritesScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Meals',),

    ),
          body: _pages[_selectedPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).accentColor,
          currentIndex: _selectedPageIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.category,), title: Text('Categories')),
            BottomNavigationBarItem(icon: Icon(Icons.star,), title: Text('Favorites'))

          ],
        ),
    );
  }
}
