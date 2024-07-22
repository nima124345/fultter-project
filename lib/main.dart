import 'package:flutter/material.dart';
import 'FoodMenu.dart';
void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return MaterialApp(
title: "My APP",
home: MyHomePage(),
theme: ThemeData(primarySwatch: Colors.red),
);
}
}
class MyHomePage extends StatefulWidget { MyHomePage({Key? key}) : super(key: key);
@override State<MyHomePage> createState() => _MyHomePageState(); }
class _MyHomePageState extends State<MyHomePage> {
List<FoodMenu> menu = [
FoodMenu("ผักบุ้งไฟแดง", "40","assets/images/1.jpg"),
FoodMenu("ลาบ", "60","assets/images/2.jpg"),
FoodMenu("ไข่ยัดไส้", "80","assets/images/3.jpg"),
FoodMenu("แกงส้ม", "40","assets/images/4.jpg"),
FoodMenu("เครื่องแกงไก่", "30","assets/images/5.jpg"),
]; 


@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เเอพเลือกเมนูอาหาร"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              FoodMenu food = menu[index];
              return ListTile(
                leading: Image.asset(food.img),
                title: Text(food.name),
                subtitle: Text("ราคา " + food.price + "บาท"),
              );
            }));
  }
}