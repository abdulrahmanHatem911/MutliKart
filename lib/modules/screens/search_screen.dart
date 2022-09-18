import 'package:flutter/material.dart';
import 'package:multikart_app/shared/context/size.dart';
import 'package:multikart_app/shared/style/icon_broken.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    const Icon(
                      IconBroken.Search,
                      size: 20.0,
                    ),
                    AppSize.appH10,
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'search',
                          hintStyle: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ),
                    const Icon(IconBroken.Camera),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
