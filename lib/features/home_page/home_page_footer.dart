import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shoe_store/gen/assets.gen.dart';

import 'package:shoe_store/routes.dart';

import 'package:shoe_store/shared/extensions/build_context_extension.dart';

import 'package:shoe_store/shared/widgets/app_layout.dart';
import 'package:shoe_store/shared/widgets/app_text.dart';
import 'package:shoe_store/shared/widgets/app_text_form_field.dart';

class HomePageFooter extends StatelessWidget {
  const HomePageFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
// class HomePageFooter extends StatefulWidget {
//   const HomePageFooter({super.key});

//   @override
//   State<HomePageFooter> createState() => _HomePageFooterState();
// }

// class _HomePageFooterState extends State<HomePageFooter> {
//   final PageController _pageController = PageController(viewportFraction: 0.7);
//   double _currentPage = 0;

//   final TextEditingController _searchController = TextEditingController();
//   @override
//   void initState() {
//     super.initState();
    
//     context.read<ProductCubit>().loadProducts();
//     _pageController.addListener(() {
//       setState(() {
//         _currentPage = _pageController.page!;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           
//           Row(
//             children: [
//               Expanded(
//                 child: Container(
//                   height: 44,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Row(
//                     children: [
//                       SizedBox(
//                         width: 8,
//                       ),
//                       SizedBox(child: Assets.icons.search.svg()),
//                       SizedBox(width: 10),
//                       Expanded(
//                         child: AppTextFormField(
//                           controller: _searchController,
//                           enableBorder: false,
//                           hintText: 'home.search'.tr(),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 5,
//               ),
//               BlocListener<SearchCubit, SearchState>(
//                 listener: (context, state) {
//                   if (state.isLoading) {
//                     // Hiển thị loading nếu cần
//                   } else if (state.errorMessage != null) {
//                     // Hiển thị thông báo lỗi nếu có
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: AppText(state.errorMessage!),backgroundColor: context.colors.onlineColor,),
//                     );
//                   } else if (state.searchResults.isNotEmpty) {
//                     // Xử lý kết quả tìm kiếm nếu có
                   
//                     Navigator.pushNamed(context, RouteName.searchResults,
//                         arguments: state.searchResults);
//                   }
//                 },
//                 child: BlocBuilder<SearchCubit, SearchState>(
//                     builder: (context, state) {
//                   return InkWell(
//                     onTap: () {
//                       final keyWord = _searchController.text.trim();
//                       context.read<SearchCubit>().searchProducts(keyWord);
                   
//                     },
//                     child: BoxIcon(
//                         icon: Assets.icons.filter
//                             .svg(color: context.colors.black, height: 20),
//                         color: context.colors.divider),
//                   );
//                 }),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               AppText(
//                 'home.populor'.tr(),
//                 fontSize: 15,
//                 fontWeight: FontWeight.bold,
//               ),
//               IntrinsicWidth(
//                 child: DropdownButton(
//                   items: [
//                     DropdownMenuItem(
//                       child: AppText('home.view_all'.tr()),
//                     ),
//                   ],
//                   onChanged: (value) {},
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           BlocBuilder<ProductCubit, ProductState>(builder: (context, state) {
//             if (state.isLoading && state.products.isEmpty) {
//               return Center(child: CircularProgressIndicator());
//             }
//             if (state.products.isEmpty) {
//               return Center(child: Text("Không có sản phẩm nào!"));
//             }
//             return Container(
//               height: 250,
//               child: PageView.builder(
//                 controller: _pageController,
//                 itemCount: state.products.length,
//                 itemBuilder: (context, index) {
//                   double scale = 1.0;
//                   double difference = (_currentPage - index).abs();

//                   // Giảm kích thước item khi ở xa vị trí trung tâm
//                   if (difference > 0) {
//                     scale = 1 - (difference * 0.2);
//                   }

//                   return Transform.scale(
//                     scale: scale,
//                     child: CaterogyCart(product: state.products[index]),
//                   );
//                 },
//               ),
//             );
//           })
//         ],
//       ),
//     );
//   }
// }

// class CaterogyCart extends StatelessWidget {
//   final Product product; // Sử dụng Product thay vì CaterogyModel

//   const CaterogyCart({super.key, required this.product});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 170,
//       decoration: BoxDecoration(
//         border: Border.all(color: context.colors.divider),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: ClipRRect(
//         borderRadius:
//             const BorderRadiusDirectional.vertical(top: Radius.circular(10)),
//         child: InkWell(
//           onTap: () {
//             Navigator.pushNamed(context, RouteName.productDetail,
//                 arguments: product);
//           },
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CachedNetworkImage(
//                 imageUrl: product.imageUrl ?? "", // Xử lý trường hợp ảnh null
//                 height: 170,
//                 fit: BoxFit.cover,
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 8.0),
//                   child: Center(
//                     child: AppText(
//                       product.name,
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 8.0, bottom: 10.0),
//                 child: Center(
//                   child: AppText(
//                     "${product.price} VNĐ", // Hiển thị giá
//                     fontSize: 14,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
