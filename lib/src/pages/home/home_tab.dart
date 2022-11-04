import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:proencagourmet/src/pages/home/components/category_tile.dart';

import 'package:proencagourmet/src/pages/auth/components/config/app_data.dart'
    as appData;

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  String selectedCategory = 'Biscoitos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: const Text.rich(
          TextSpan(
            style: TextStyle(
              color: Colors.lightGreenAccent,
              fontSize: 30,
            ),
            children: [
              TextSpan(
                text: 'Proença ',
                style: TextStyle(fontSize: 35, color: Colors.lightGreen),
              ),
              TextSpan(
                text: ' Gourmet',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              right: 15,
            ),
            child: GestureDetector(
              onTap: () {},
              child: Badge(
                badgeColor: Colors.white,
                badgeContent: const Text(
                  '2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          //Campo de pesquisa

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                hintText: 'Pesquise aqui...',
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 14,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.amberAccent,
                  size: 21,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
          ),

          //Categorias
          Container(
            padding: const EdgeInsets.only(left: 25),
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return CategoryTile(
                  onPressed: () {
                    setState(() {
                      selectedCategory = appData.categories[index];
                    });
                  },
                  category: appData.categories[index],
                  isSelected: appData.categories[index] == selectedCategory,
                );
              },
              separatorBuilder: (_, index) => const SizedBox(height: 10),
              itemCount: appData.categories.length,
            ),
          ),

          //Grid
        ],
      ),
    );
  }
}
