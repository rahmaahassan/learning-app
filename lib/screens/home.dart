import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),),
        leading: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(2),
            margin: EdgeInsets.all(5),
            child: Icon(
              Icons.settings,
              color: Theme.of(context).primaryColor,
            ),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.notifications,
                color: Theme.of(context).primaryColor,
              ),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            ),
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
        title: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Image.asset(
                'assets/images/qwd.png',
                fit: BoxFit.fill,
                height: 30,
              ),
              /*Text(
              'فيثاغورث',
              style: TextStyle(color: Colors.white, fontSize: 23),
            ),*/
            ),
            Center(
              child: Image.asset('assets/images/math.png'),
              /*Text('متعة تعلم الرياضيات',
                  style: TextStyle(color: Colors.white, fontSize: 10))*/
            ),
          ],
        ),
        centerTitle: true,
        elevation: 2,
        bottom: _buildBottomBar(context),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 7,
          ),
          YearListAddress(
            address: 'الصف الخامس الابتدائي',
            des:
                'هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة، لقد تم توليد هذا النص من مواد النص العربي، حيث يمكنك ان تولد مثل هذا ',
            image: 'assets/images/5.png',
            num: '20.000 طالب مسجل',
            year: 5,
          ),
          YearListAddress(
            address: 'الصف السادس الابتدائي',
            des:
                'هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة، لقد تم توليد هذا النص من مواد النص العربي، حيث يمكنك ان تولد مثل هذا ',
            image: 'assets/images/6.png',
            num: '20.000 طالب مسجل',
            year: 6,
          ),
          YearListAddress(
            address: 'الصف السابع الابتدائي',
            des:
                'هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة، لقد تم توليد هذا النص من مواد النص العربي، حيث يمكنك ان تولد مثل هذا ',
            image: 'assets/images/7.png',
            num: '20.000 طالب مسجل',
            year: 7,
          ),
          YearListAddress(
            address: 'الصف الثامن الابتدائي',
            des:
                'هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة، لقد تم توليد هذا النص من مواد النص العربي، حيث يمكنك ان تولد مثل هذا ',
            image: 'assets/images/8.png',
            num: '20.000 طالب مسجل',
            year: 8,
          ),
          YearListAddress(
            address: 'الصف التاسع الابتدائي',
            des:
                'هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة، لقد تم توليد هذا النص من مواد النص العربي، حيث يمكنك ان تولد مثل هذا ',
            image: 'assets/images/9.png',
            num: '20.000 طالب مسجل',
            year: 9,
          ),
          YearListAddress(
            address: 'الصف العاشر الابتدائي',
            des:
            'هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة، لقد تم توليد هذا النص من مواد النص العربي، حيث يمكنك ان تولد مثل هذا ',
            image: 'assets/images/10.png',
            num: '20.000 طالب مسجل',
            year: 10,
          ),
          YearListAddress(
            address: 'الصف الحادي عشر الابتدائي',
            des:
            'هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة، لقد تم توليد هذا النص من مواد النص العربي، حيث يمكنك ان تولد مثل هذا ',
            image: 'assets/images/11.png',
            num: '20.000 طالب مسجل',
            year: 11,
          ),
          YearListAddress(
            address: 'الصف الثاني عشر الابتدائي',
            des:
            'هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة، لقد تم توليد هذا النص من مواد النص العربي، حيث يمكنك ان تولد مثل هذا ',
            image: 'assets/images/12.png',
            num: '20.000 طالب مسجل',
            year: 12,
          ),
        ],
      ),
    );
  }

  PreferredSize _buildBottomBar(context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(50),
      child: Container(
        padding: EdgeInsets.all(9),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    textDirection: TextDirection.rtl,
                    cursorColor: Colors.black38,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                        hintText: 'بحث',
                        hintStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: 16,
                        ),
                        prefixIcon: Material(
                          elevation: 0,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          child: IconButton(
                            icon: Icon(Icons.search_outlined),
                            onPressed: () {},
                            color: Colors.black38,
                          ),
                        ),
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class YearListAddress extends StatelessWidget {
  String image, address, des, num;
  int  year;
  YearListAddress({this.image, this.address, this.des, this.num, this.year});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      child: Stack(alignment: Alignment.centerRight, children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
          //height: 250,
        ),
        Container(
          padding: EdgeInsets.only(right: 10, top: 4, left: year <= 9 ? 83 : 131, bottom: 1),
          //height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                address,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                num,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                height: 3,
                color: Colors.white,
                thickness: 1,
                indent: 33,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                des,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
