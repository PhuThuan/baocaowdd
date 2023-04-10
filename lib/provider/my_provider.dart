import 'package:bao_cao/model/categories_model.dart';
import 'package:bao_cao/model/product_categories_model.dart';
import 'package:bao_cao/model/product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class MyProvider extends ChangeNotifier {
  List<CategoriesModel> categoriesList = [];
  late CategoriesModel categoriesModel;
  Future<void> getCategories() async {
    List<CategoriesModel> newCategoriesList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('Categories')
        .doc('yQ7S2PqE5MgvZnMKloBN')
        .collection('Aotaydai')
        .get();
    querySnapshot.docs.forEach((element) {
      categoriesModel = CategoriesModel(
        image: element['image'],
        name: element['name'],
      );
      print(categoriesModel.name);
      newCategoriesList.add(categoriesModel);
      categoriesList = newCategoriesList;
    });
  }

  notifyListeners();
  get throwList {
    return categoriesList;
  }

  // 2
  List<CategoriesModel> categoriesList2 = [];
  late CategoriesModel categoriesModel2;
  Future<void> getCategories2() async {
    List<CategoriesModel> newCategoriesList2 = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('Categories')
        .doc('yQ7S2PqE5MgvZnMKloBN')
        .collection('aotayngan')
        .get();
    querySnapshot.docs.forEach((element) {
      categoriesModel2 = CategoriesModel(
        image: element['image'],
        name: element['name'],
      );
      print(categoriesModel2.name);
      newCategoriesList2.add(categoriesModel2);
      categoriesList2 = newCategoriesList2;
    });
    // notifyListeners();
  }

  get throwList2 {
    return categoriesList2;
  }

  //3
  List<CategoriesModel> categoriesList3 = [];
  late CategoriesModel categoriesModel3;
  Future<void> getCategories3() async {
    List<CategoriesModel> newCategoriesList3 = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('Categories')
        .doc('yQ7S2PqE5MgvZnMKloBN')
        .collection('quandai')
        .get();
    querySnapshot.docs.forEach((element) {
      categoriesModel3 = CategoriesModel(
        image: element['image'],
        name: element['name'],
      );
      print(categoriesModel3.name);
      newCategoriesList3.add(categoriesModel3);
      categoriesList3 = newCategoriesList3;
    });
    // notifyListeners();
  }

  get throwList3 {
    return categoriesList3;
  }

  //4
  List<CategoriesModel> categoriesList4 = [];
  late CategoriesModel categoriesModel4;
  Future<void> getCategories4() async {
    List<CategoriesModel> newCategoriesList4 = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('Categories')
        .doc('yQ7S2PqE5MgvZnMKloBN')
        .collection('quanngan')
        .get();
    querySnapshot.docs.forEach((element) {
      categoriesModel4 = CategoriesModel(
        image: element['image'],
        name: element['name'],
      );
      print(categoriesModel4.name);
      newCategoriesList4.add(categoriesModel4);
      categoriesList4 = newCategoriesList4;
    });
    // notifyListeners();
  }

  get throwList4 {
    return categoriesList4;
  }

  // product
  List<ProductModel> productModelList = [];
  late ProductModel productModel;
  Future<void> getProductList() async {
    List<ProductModel> newProductModelList = [];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('products').get();
    querySnapshot.docs.forEach((element) {
      productModel = ProductModel(
        image: element['image'],
        name: element['name'],
        price: element['price'],
      );
      newProductModelList.add(productModel);
    });
    //  print(productModel.name);
    productModelList = newProductModelList;
    notifyListeners();
  }

  get throwProductModelList {
    return productModelList;
  }

  ///
  ///  ao tay dai categories list
  ///
  List<ProductCategoriesModel> aotaydaiCategoriesModelList = [];
  late ProductCategoriesModel aotaydaiCategoriesModel;
  Future<void> getAotaydaiCategoriesModelList() async {
    List<ProductCategoriesModel> newaotaydaiCategoriesModelList = [];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('aotaydai').get();
    querySnapshot.docs.forEach((element) {
      aotaydaiCategoriesModel = ProductCategoriesModel(
        image: element['image'],
        name: element['name'],
        price: element['price'],
      );
      newaotaydaiCategoriesModelList.add(aotaydaiCategoriesModel);
      aotaydaiCategoriesModelList = newaotaydaiCategoriesModelList;
    });
  }

  get throwotaydaiCategoriesModelList {
    return aotaydaiCategoriesModelList;
  }
}
