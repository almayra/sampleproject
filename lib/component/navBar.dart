import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../colors.dart';
import '../typography.dart';

class NavBar extends StatelessWidget {
  final Container searchNavBar = Container(
    height: 36,
    child: TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: gray020, width: 1.0)),
          fillColor: gray020,
          filled: true,
          prefixIcon: Icon(Icons.search, color: gray050),
          hintText: "Search",
          hintStyle: TextStyle(color: gray050, fontSize: 13.0)),
      keyboardType: TextInputType.name,
    ),
  );

  @override
  Widget build(BuildContext context) => Storybook(children: [
        Story(
            name: "Nav Bar",
            builder: (_, k) => Scaffold(
                  body: Column(
                    children: [
                      k.options(
                          label: "App Bar",
                          initial: AppBar(
                            title: Text("Title Goes Here",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    fontSize: size5,
                                    color: gray100)),
                            backgroundColor: gray000,
                            elevation: 4.0,
                            leading: Icon(
                              Icons.arrow_back,
                              color: gray100,
                            ),
                            actions: [
                              IconButton(
                                  icon: Icon(Icons.circle, color: gray050),
                                  onPressed: () => {}),
                              IconButton(
                                  icon: Icon(Icons.circle, color: gray050),
                                  onPressed: () => {}),
                              IconButton(
                                  icon: Icon(Icons.circle, color: gray050),
                                  onPressed: () => {}),
                              IconButton(
                                  icon: Icon(Icons.circle, color: gray050),
                                  onPressed: () => {}),
                            ],
                          ),
                          options: [
                            Option(
                                "Child",
                                AppBar(
                                  title: Text("Title Goes Here",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                          fontSize: size5,
                                          color: gray100)),
                                  backgroundColor: gray000,
                                  elevation: 4.0,
                                  leading: Icon(
                                    Icons.arrow_back,
                                    color: gray100,
                                  ),
                                  actions: [
                                    IconButton(
                                        icon:
                                            Icon(Icons.circle, color: gray050),
                                        onPressed: () => {}),
                                    IconButton(
                                        icon:
                                            Icon(Icons.circle, color: gray050),
                                        onPressed: () => {}),
                                    IconButton(
                                        icon:
                                            Icon(Icons.circle, color: gray050),
                                        onPressed: () => {}),
                                    IconButton(
                                        icon:
                                            Icon(Icons.circle, color: gray050),
                                        onPressed: () => {}),
                                  ],
                                )),
                            Option(
                                "Child Search",
                                AppBar(
                                  title: this.searchNavBar,
                                  backgroundColor: gray000,
                                  elevation: 4.0,
                                  leading: Icon(
                                    Icons.arrow_back,
                                    color: gray100,
                                  ),
                                )),
                            Option(
                                "Default",
                                AppBar(
                                  title: this.searchNavBar,
                                  backgroundColor: gray000,
                                  elevation: 4.0,
                                  actions: [
                                    IconButton(
                                        icon: Icon(Icons.shopping_cart,
                                            color: gray050),
                                        onPressed: () => {}),
                                    IconButton(
                                        icon: Icon(Icons.notifications,
                                            color: gray050),
                                        onPressed: () => {}),
                                  ],
                                ))
                          ])
                    ],
                  ),
                )),
      ]);
}
