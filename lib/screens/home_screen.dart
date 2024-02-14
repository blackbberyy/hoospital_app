import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.white,
      body: buildBody(),
      bottomNavigationBar: buildBottomNavigationBar(context),
    );
  }

  PreferredSizeWidget buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(105),
      child: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.network(
              'https://www.hoospital.com/assets/uploads/logo.svg',
              fit: BoxFit.cover,
              width: 100,
              height: 33,
            ),
            SizedBox(height: 12),
            buildCategoryButtons(),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryButtons() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildCategoryButton(
            FontAwesomeIcons.hospitalUser,
            'Hospitals',
          ),
          SizedBox(width: 13),
          buildCategoryButton(
            FontAwesomeIcons.syringe,
            'Hair Transplant Centers',
          ),
          SizedBox(width: 13),
          buildCategoryButton(
            FontAwesomeIcons.houseChimneyMedical,
            'Clinics',
          ),
          SizedBox(width: 13),
          buildCategoryButton(
            FontAwesomeIcons.spa,
            'Thermal Spas',
          ),
        ],
      ),
    );
  }

  Widget buildCategoryButton(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                color: Color.fromRGBO(246, 92, 85, 1),
                width: 1.6,
              ),
            ),
          ),
        ),
        icon: FaIcon(
          icon,
          color: Color.fromRGBO(102, 98, 118, 2),
        ),
        label: Text(
          label,
          style: TextStyle(
            color: Color.fromRGBO(102, 98, 118, 2),
          ),
        ),
      ),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            buildSearchContainer(),
            SizedBox(height: 20),
            buildLocationButtons(),
            SizedBox(height: 35),
            buildPopularHospitalsSection(),
          ],
        ),
      ),
    );
  }

  Widget buildSearchContainer() {
    return Container(
      padding: EdgeInsets.all(16),
      height: 170,
      width: 370,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.deepOrange, width: 3),
        boxShadow: [
          BoxShadow(color: Colors.white, spreadRadius: 3),
        ],
      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Search in Hoospital',
              prefixIcon: Icon(Icons.search),
            ),
          ),
          SizedBox(height: 10),
          OutlinedButton(
            onPressed: () {},
            child: Text(
              'Search',
              style: TextStyle(color: Colors.deepOrange),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.deepOrange,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(16)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLocationButtons() {
    return Container(
      padding: EdgeInsets.all(16),
      height: 90,
      width: 370,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(4.0, 4.0),
            blurRadius: 15,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-4.0, -4.0),
            blurRadius: 15,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: buildLocationButtonsRow(),
      ),
    );
  }

  Widget buildLocationButtonsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildLocationButton(
          'https://muze.gen.tr/img/maidens-tower-istanbul.jpg',
          'İstanbul',
        ),
        buildLocationButton(
          'https://assets.enuygun.com/media/lib/570x400/uploads/image/ankara-35906.jpeg',
          'Ankara',
        ),
        buildLocationButton(
          'https://muze.gen.tr/img/maidens-tower-istanbul.jpg',
          'İstanbul',
        ),
        buildLocationButton(
          'https://assets.enuygun.com/media/lib/570x400/uploads/image/ankara-35906.jpeg',
          'Ankara',
        ),
        buildLocationButton(
          'https://muze.gen.tr/img/maidens-tower-istanbul.jpg',
          'İstanbul',
        ),
        buildLocationButton(
          'https://assets.enuygun.com/media/lib/570x400/uploads/image/ankara-35906.jpeg',
          'Ankara',
        ),
        buildLocationButton(
          'https://muze.gen.tr/img/maidens-tower-istanbul.jpg',
          'İstanbul',
        ),
        buildLocationButton(
          'https://assets.enuygun.com/media/lib/570x400/uploads/image/ankara-35906.jpeg',
          'Ankara',
        ),
        buildLocationButton(
          'https://assets.enuygun.com/media/lib/570x400/uploads/image/ankara-35906.jpeg',
          'Ankara',
        ),
      ],
    );
  }

  Widget buildLocationButton(String imageUrl, String location) {
    return TextButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: () {},
      icon: ClipOval(
        child: Image.network(
          imageUrl,
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
      ),
      label: Text(
        location,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildPopularHospitalsSection() {
    return Column(
      children: [
        buildSectionTitle('Popular Hospitals in Hoospital'),
        buildPopularHospitals(),
      ],
    );
  }

  Widget buildSectionTitle(String title) {
    return Container(
      child: Text(
        title,
        style: GoogleFonts.changa(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          height: 1,
          color: Colors.deepOrange,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget buildPopularHospitals() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildHospitalCard(
            'https://www.ozgidais.org.tr/images/haberler/k/life.jpg',
            'Private Maydent oral and dental health Polyclinic',
            0,
            '55',
            '1,652 m from center',
          ),
          buildHospitalCard(
            'https://www.ozgidais.org.tr/images/haberler/k/life.jpg',
            'Private Maydent oral and dental health Polyclinic',
            0,
            '55',
            '1,652 m from center',
          ),
        ],
      ),
    );
  }

  Widget buildHospitalCard(
    String imageUrl,
    String title,
    int starCount,
    String creditCardCount,
    String distance,
  ) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 360,
      width: 390,
      child: Column(
        children: [
          buildHospitalImage(imageUrl),
          SizedBox(height: 5),
          buildHospitalTitle(title),
          buildHospitalInfo(starCount, creditCardCount, distance),
        ],
      ),
    );
  }

  Widget buildHospitalImage(String imageUrl) {
    return Container(
      height: 200,
      width: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(4.0, 4.0),
            blurRadius: 15,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-4.0, -4.0),
            blurRadius: 15,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Align(
        child: Container(
          height: 35,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.heart,
              size: 20,
            ),
          ),
        ),
        alignment: Alignment.topRight,
      ),
    );
  }

  Widget buildHospitalTitle(String title) {
    return Container(
      child: Text(
        title,
        style: GoogleFonts.changa(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          height: 1,
          color: Color.fromRGBO(102, 98, 118, 2),
        ),
      ),
    );
  }

  Widget buildHospitalInfo(
    int starCount,
    String creditCardCount,
    String distance,
  ) {
    return Row(
      children: [
        Container(
          child: Icon(
            FontAwesomeIcons.star,
            size: 22,
            color: Color.fromARGB(255, 224, 196, 15),
          ),
        ),
        SizedBox(width: 10),
        Text('$starCount(0)'),
        SizedBox(width: 10),
        Row(
          children: [
            Icon(
              FontAwesomeIcons.creditCard,
              size: 22,
            ),
            SizedBox(width: 10),
            Text(creditCardCount),
          ],
        ),
        SizedBox(width: 10),
        Row(
          children: [
            Icon(
              FontAwesomeIcons.locationDot,
              size: 20,
            ),
            SizedBox(width: 5),
            Text(distance),
          ],
        ),
      ],
    );
  }

  Widget buildBottomNavigationBar(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: Color.fromARGB(102, 223, 222, 222),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildBottomBarItem(Icons.search, 'Find Hospitals', () {
              Navigator.of(context).pushNamed('/');
            }),
            buildBottomBarItem(FontAwesomeIcons.heart, 'Favorites', () {
              Navigator.of(context).pushNamed('/');
            }),
            buildBottomBarItem(
              Icons.calendar_month_outlined,
              'Appointments',
              () {
                Navigator.of(context).pushNamed('/');
              },
            ),
            buildBottomBarItem(FontAwesomeIcons.newspaper, 'Blog', () {
              Navigator.of(context).pushNamed('/');
            }),
            buildBottomBarItem(FontAwesomeIcons.user, 'Login', () {
              Navigator.of(context).pushNamed('/');
            }),
          ],
        ),
      ),
    );
  }

  Widget buildBottomBarItem(IconData icon, String title, Function() onPress) {
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.black),
            const SizedBox(height: 3),
            Text(
              title,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
