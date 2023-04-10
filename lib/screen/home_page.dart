import 'package:bao_cao/comm/Listtitle_drawer.dart';
import 'package:bao_cao/comm/botton_container.dart';
import 'package:bao_cao/comm/get_data_categories.dart';
import 'package:bao_cao/comm/get_data_product.dart';
import 'package:bao_cao/model/categories_model.dart';
import 'package:bao_cao/model/product_model.dart';
import 'package:bao_cao/provider/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoriesModel> aoList = [];
  List<CategoriesModel> aoList2 = [];
  List<CategoriesModel> aoList3 = [];
  List<CategoriesModel> aoList4 = [];
  List<ProductModel> ProductList = [];
  // Widget burger() {
  //   return Row(
  //       children: burgerList
  //           .map((e) => Categories(
  //                 image: e.image,
  //                 name: e.name,
  //               ))
  //           .toList());
  // }

  @override
  Widget build(BuildContext context) {
    MyProvider provider = Provider.of<MyProvider>(context);
    provider.getCategories();
    aoList = provider.throwList;
    provider.getCategories2();
    aoList2 = provider.throwList2;
    provider.getCategories3();
    aoList3 = provider.throwList3;
    provider.getCategories4();
    aoList4 = provider.throwList4;

    //insert products
    provider.getProductList();
    ProductList = provider.throwProductModelList;
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/login.png'),
              ),
              accountName: Text(
                "EASY SHOP",
                style: TextStyle(color: Colors.red),
              ),
              accountEmail: Text('thuan20@gmail.com',
                  style: TextStyle(color: Colors.red)),
            ),
            ListTitleDrawer(
              title: 'Tài khoản',
              icon: Icons.person,
            ),
            ListTitleDrawer(
              title: 'Giỏ hàng',
              icon: Icons.add_shopping_cart,
            ),
            ListTitleDrawer(
              title: 'Order',
              icon: Icons.shop,
            ),
            const Divider(
              thickness: 2,
              color: Colors.black,
            ),
            const ListTile(
              leading: Text('Comunicate',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
            ),
            ListTitleDrawer(title: "Change", icon: Icons.lock),
            ListTitleDrawer(title: "Log Out", icon: Icons.shop),
          ],
        )),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(9.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/logo.png"),
            ),
          )
        ],
        shadowColor: null,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          // SizedBox(
          //   height: 60,
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Tìm Kiếm",
                  hintStyle: const TextStyle(color: Colors.white),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  filled: true,
                  fillColor: const Color(0xff3a3e3e),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none)),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetCategories(CategoriesList: aoList),
                GetCategories(CategoriesList: aoList2),
                GetCategories(CategoriesList: aoList3),
                GetCategories(CategoriesList: aoList4),
                // Categories(image: "assets/images/logo.png", name: 'All'),
                // const SizedBox(
                //   width: 10,
                // ),
                // Categories(image: "assets/images/logo.png", name: 'All'),
                // const SizedBox(
                //   width: 10,
                // ),
                // Categories(image: "assets/images/logo.png", name: 'All'),
                // const SizedBox(
                //   width: 10,
                // ),
                // Categories(image: "assets/images/logo.png", name: 'All'),
                // const SizedBox(
                //   width: 10,
                // ),
                // Categories(image: "assets/images/logo.png", name: 'All'),
                // const SizedBox(
                //   width: 10,
                // ),
                // Categories(image: "assets/images/logo.png", name: 'All'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 510,
            child: GridView.count(
              shrinkWrap: false,
              primary: false,
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: ProductList.map((e) => Botton(
                    image: e.image,
                    name: e.name,
                    price: e.price,
                  )).toList(),

              //[
              //

              // Botton(
              //   name: 'aaa',
              //   price: 123565,
              //   image: "assets/images/logo.png",
              // ),
              // Botton(
              //   name: 'aaa',
              //   price: 123565,
              //   image: "assets/images/logo.png",
              // ),
              // Botton(
              //   name: 'aaa',
              //   price: 123565,
              //   image: "assets/images/logo.png",
              // ),
              // ],
            ),
          ),
        ]),
      ),
    );
  }
}
