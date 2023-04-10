import 'package:bao_cao/comm/button_page.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: Column(children: [
        Expanded(
          flex: 1,
          child: Container(
            child: CircleAvatar(
              radius: 130,
              backgroundImage: AssetImage("assets/images/logo.png"),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            width: double.infinity,
            decoration: const BoxDecoration(
              // color: Color(0xff3a3e3e),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Neapolitan",
                  style: TextStyle(fontSize: 40, color: Colors.black),
                ),
                const Text(
                  "any text",
                  style: TextStyle(color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.remove,
                            color: Colors.red,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '1',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.add,
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                    const Text("\$ 150",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                const Text(
                  "Description",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  " Khóa kéo zip full thân Cổ áo sơ mi Thân áo được xử lý bằng kỹ thuật ráp nối vải. Nameplate inox đính ở nắp túi cơi đôi mặt trước áo. Các nút inox được đính ở mặt trước và mặt sau áo.  Chữ thêu cùng màu áo. Chất liệu: Kaki  ",
                  style: TextStyle(),
                ),
                Container(
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, // hoverground
                      backgroundColor: Colors.red, // foreground
                      side: BorderSide(color: Colors.blue, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("add to cart",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
