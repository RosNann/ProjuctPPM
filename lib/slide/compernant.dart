import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectaddpp/model/model.dart';
// import 'package:reportproject/Card/product.dar

// import 'package:reportproject/Card/product.dart';
// import 'package:reportproject/slide/purchase.dart';
// Slide


// class slideclass extends StatelessWidget {
//   final ind;
//   const slideclass({
//     super.key,this.ind
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         margin: const EdgeInsets.only(top: 5),
//         height: 400,
//         width: MediaQuery.of(context).size.width,
//         decoration: const BoxDecoration(
//           color: Color(0xFFFFF0DD),
//           // borderRadius: BorderRadius.circular(15)
//         ),
//         child: AnotherCarousel(images: [
//           AssetImage('images/koi.png'),
//           AssetImage('images/koi1.jpg'),
//         ],
//           dotSize: 7,
//           indicatorBgPadding: 5.0,
//           dotBgColor: Colors.transparent,
//           dotIncreasedColor: Colors.redAccent,
//           dotSpacing: 15.0,
//           moveIndicatorFromBottom: 180.0,
//           overlayShadow: true,
//           overlayShadowColors: Colors.grey,
//           overlayShadowSize: 0.2,
//           // borderRadius: true,
//         )
//     );
//   }
// }


//buttom letter
class letterclass extends StatelessWidget {
  const letterclass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child:
          Text("Chaque infusion incarne l'innovation et \nl'authenticité, grâce à la combinaison des \ninflorescences de poivre de Kampot et des \nvégétaux typiques du terroir cambodgien.\n\nCette innovation est aujourdʼhui protégée par un brevet international.\n\nAvec ce coffret découverte, les infusions Kirum n'auront plus de secrets pour vous !",
            style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black54),
          ),
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(vertical: -3),
          horizontalTitleGap: 3,
          leading: Icon(Icons.fiber_manual_record,size: 8,),
          title:Text('Infusion citronnelle'),
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(vertical: -4),
          horizontalTitleGap: 3,
          leading: Icon(Icons.fiber_manual_record,size: 8,),
          title:Text('Infusion gingembre'),
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(vertical: -4),
          horizontalTitleGap: 3,
          leading: Icon(Icons.fiber_manual_record,size: 8,),
          title:Text('Infusion origin'),
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(vertical: -4),
          horizontalTitleGap: 3,
          leading: Icon(Icons.fiber_manual_record,size: 8,),
          title:Text('Infusion au jasmin'),
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(vertical: -4),
          horizontalTitleGap: 3,
          leading: Icon(Icons.fiber_manual_record,size: 8,),
          title:Text('Infusion dorthosiphon'),
        ),
        Text("Ces effets sont notamment dus à la riche teneur\nen probiotiques vivants de KEM Probiotics et,\nen favorisant la stabilité de la flore intestinale,\napportent un bénéfice à leurs consommateurs.\n\nKEM est alors le compagnon idéal pour une vie saine, active\net s’intègre parfaitement à un régime alimentaire favorisant \nles produits naturels."),
      ],
    );
  }
}
// title ,price
class compernant extends StatelessWidget {
  const compernant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text("KIRUM - COFFRET \nDÉCOUVERTE INFUSIONS",style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 20
            ),
            ),
          ],
        ),
        Text("\$25.50",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color(0xFFDB3022)
        ),)
      ],
    );
  }
}
//button soldoout
class buttonSoldOUT extends StatelessWidget {
  const buttonSoldOUT({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff3B3B3B),
            borderRadius: BorderRadius.circular(4)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 8),
          child: Text("SOLD OUT",style: TextStyle(color: Colors.white,),),
        ),
      ),
    );
  }
}
// button express
// class buttonExpress extends StatelessWidget {
//   const buttonExpress({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }