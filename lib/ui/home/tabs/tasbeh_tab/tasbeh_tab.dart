import 'package:flutter/material.dart';

import '../../../../utils/image_utils.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int count = 0;
  double rotate = 0;
  List<String> Sebha_names = [
    'سبحان الله',
    'الله أكبر',
    'لا إله إلا الله',
    'الحمد الله',
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 33.0),
              child: Image.asset(
                  getImagePathByName(imageName: 'head_sebha_logo.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 76.0, right: 12),
              child: Transform.rotate(
                angle: rotate,
                child: GestureDetector(
                  onTap: () {
                    taped();
                  },
                  child: Image.asset(
                      getImagePathByName(imageName: 'body_sebha_logo.png')),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 28.0, bottom: 28),
          child: Text(
            'عدد التسبيحات',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 43, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Text('$count',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Text('${Sebha_names[index]}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w300)),
            ),
          ),
        ),
      ],
    );
  }

  taped() {
    count++;
    if (count % 33==0) {
      index++;
      count++;
      count=0;
    }
    if(index==Sebha_names.length){
      index=0;
    }
    rotate += 360 / 4;
    setState(() {});
  }
}
