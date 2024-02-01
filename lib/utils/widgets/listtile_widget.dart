import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListTileWidget extends StatelessWidget {
  final VoidCallback  ontap;
  final String title;
  final Image image;
  final Color color;
  final Color? textColor;
  final FontWeight? fontWeight;
  const ListTileWidget({super.key, required this.ontap, required this.title, required this.image, required this.color, this.textColor=Colore.BLACK, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: ontap,
        child: Container(

          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ] ,borderRadius: BorderRadius.all(Radius.circular(8)),color: color),

          height: 100,
          child: Center(
            child: ListTile(

            title: Text(title,style: TextStyle(color: textColor,fontWeight: fontWeight),),
              leading: image,
              trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colore.WHITE,size: 15),
            ),
          ),
        ),
      ),
    );
  }
}
