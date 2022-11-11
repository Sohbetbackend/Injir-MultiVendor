import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';

class HistoryOrders extends StatelessWidget {
  const HistoryOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor2,
        appBar: AppBar(
          backgroundColor: kPrimaryColor2,
          elevation: 0,
          centerTitle: true,
          systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: kPrimaryColor2, statusBarIconBrightness: Brightness.light),
          automaticallyImplyLeading: true,
          title: Text(
            'orders'.tr,
            style: const TextStyle(color: Colors.white, fontSize: 22, fontFamily: josefinSansMedium),
          ),
        ),
        body: customWidget(
          child: ListView.separated(
            itemCount: 6,
            physics: BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                onTap: () {
                  // Get.to(
                  //   () => HistoryOrderProductID(
                  //     id: snapshot.data![index].id!,
                  //     index: index,
                  //   ),
                  // );
                },
                minVerticalPadding: 0.0,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sargyt ${index + 1}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: josefinSansMedium,
                      ),
                    ),
                    Text(
                      'Garasylyar',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontFamily: josefinSansRegular,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '835',
                          style: const TextStyle(
                            color: kPrimaryColor,
                            fontSize: 18,
                            fontFamily: josefinSansSemiBold,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Text(
                            ' TMT',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                              fontFamily: josefinSansMedium,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Divider(
                  color: Colors.grey,
                ),
              );
            },
          ),
        ));
  }
}

// class HistoryOrderProductID extends StatelessWidget {
//   final int index;
//   final int id;

//   const HistoryOrderProductID({Key? key, required this.index, required this.id}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: kPrimaryColor,
//         elevation: 0,
//         centerTitle: true,
//         systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: kPrimaryColor, statusBarIconBrightness: Brightness.dark),
//         leading: IconButton(
//           onPressed: () {
//             Get.back();
//           },
//           icon: const Icon(
//             IconlyLight.arrowLeftCircle,
//             color: Colors.black,
//           ),
//         ),
//         title: Text(
//           'order ${index}'.tr,
//           style: const TextStyle(color: Colors.black),
//         ),
//       ),
//       body: FutureBuilder<List<ProductsModelMini>>(
//         future: HistoryOrderService().getHistoryOrderByID(id),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(
//               child: spinKit(),
//             );
//           } else if (snapshot.hasError) {
//             return Center(child: const Text('Error'));
//           } else if (snapshot.data!.isEmpty) {
//             return Center(child: const Text('Empty'));
//           }
//           return StaggeredGridView.countBuilder(
//             crossAxisCount: snapshot.data!.length,
//             itemCount: snapshot.data!.length,
//             itemBuilder: (context, index) {
//               return Container(
//                 color: Colors.red,
//               );
//             },
//             staggeredTileBuilder: (index) => const StaggeredTile.count(1, 1.5),
//           );
//         },
//       ),
//     );
//   }
// }
