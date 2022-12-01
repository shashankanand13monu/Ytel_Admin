import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import '../constants/strings.dart';
import '../widgets/row_table.dart';
import '../widgets/square_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ytel Admin'),
        //Menu icon
        actions: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            _squareViewContainer(),
            const SizedBox(
              height: 20,
            ),
            _dataTable(),
            const SizedBox(
              height: 20,
            ),
            _filters(),
            const SizedBox(
              height: 20,
            ),
            // A button named "Search"
            _searchButton(),
             const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _searchButton() {
    return Container(
      //A Submit Button of blue color with white text
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
        onPressed: () {},
        child: const Text(
          'Search',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _squareViewContainer() => SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: StringHelper.call_details.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  SquareContainer(
                    color: ColorHelper.colors[index],
                    icon: IconHelper.icons[index],
                    text: StringHelper.call_details[index],
                    value: (index * 10).toString(),
                  ),
                ],
              ),
            );
          },
        ),
      );

  Widget _dataTable() => SingleChildScrollView(
        child: SizedBox(
          height: 250,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: StringHelper.titles.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    RowTable(
                      action: StringHelper.titles[index],
                      value: (index * 10).toString(),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      );

  Widget _filters() => SingleChildScrollView(
    child: SizedBox(
      // A form filed with a title and a input eg. Name - "enter name"
          height: 200,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: StringHelper.filters.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          StringHelper.filters[index],
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 100,
                          child: TextFormField(

                            decoration: InputDecoration(
                              hintText: 'Enter Details',


                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
  );
  
  
}
