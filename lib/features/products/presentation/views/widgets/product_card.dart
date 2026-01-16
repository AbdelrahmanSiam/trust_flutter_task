import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/utils/app_styles.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key, required this.title, required this.subTitle, required this.image,
  });
  final String title,subTitle,image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:12.0),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          ClipRRect(
           borderRadius: BorderRadius.circular(15),
           child: Image.asset(image,height: 90,width: 80,fit: BoxFit.cover,),),
           SizedBox(width: 12,),
           Expanded(
             child: Column(
              children: [
                Text(title,style: AppStyles.textStyles18,),
                SizedBox(height: 6,),
                Text(subTitle,style: AppStyles.textStyles16),
              ],
             ),
           ),
           Spacer(),
           Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              color: Colors.red,
            ),
             child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: (){}, icon: Icon(Icons.add , color: Colors.white,size: 20,)),
           ),
        ],
      ),
    );
  }
}
