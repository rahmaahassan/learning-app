import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.settings_applications,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.circle_notifications,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
        title: ListTile(
          title: Center(
            child: Text(
              'فيثاغورث',
              style: TextStyle(color: Colors.white, fontSize: 23),
            ),
          ),
          subtitle: Center(
              child: Text('متعة تعلم الرياضيات',
                  style: TextStyle(color: Colors.white, fontSize: 10))),
        ),
        centerTitle: true,
        elevation: 0,
        bottom: _buildBottomBar(context),
      ),
      body: ListView(
        children: [
          _yearListItem(context, 'assets/images/5.png', 'الصف الخامس الابتدائي',
              '20.000 طالب مسجل', 'هذا النص هو مثال لنص يمكن ان يستبدل'),
          _yearListItem(context, 'assets/images/6.png', 'الصف الخامس الابتدائي',
              '20.000 طالب مسجل', 'هذا النص هو مثال لنص يمكن ان يستبدل'),
          _yearListItem(context, 'assets/images/7.png', 'الصف الخامس الابتدائي',
              '20.000 طالب مسجل', 'هذا النص هو مثال لنص يمكن ان يستبدل'),
          _yearListItem(context, 'assets/images/8.png', 'الصف الخامس الابتدائي',
              '20.000 طالب مسجل', 'هذا النص هو مثال لنص يمكن ان يستبدل'),
          _yearListItem(context, 'assets/images/9.png', 'الصف الخامس الابتدائي',
              '20.000 طالب مسجل', 'هذا النص هو مثال لنص يمكن ان يستبدل'),
        ],
      ),
    );
  }

  Widget _yearListItem(context, image, address, num, des) {
    return Container(
      child: Stack(children: [
        Positioned(
          left: 2,
          height: 180,
          right: 13,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 150,
          top: 59,
          child: Text(
            address,
            //textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: 83,
          right: 28,
          child: Text(
            num,
            //textAlign: TextAlign.start,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(
          height: 220,
          color: Colors.white,
          thickness: 1,
          endIndent: 29,
          indent: 130,
        ),
        Positioned(
          top: 120,
          right: 39,
          child: Text(
            des,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ]),
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
                            icon: Icon(Icons.search),
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
