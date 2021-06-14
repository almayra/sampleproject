import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class OverflowMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Storybook(children: [
        Story.simple(
            name: "Overflow Menu",
            child: PopupMenuButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              elevation: 8.0,
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text("Pengaturan",
                      style: TextStyle(
                        fontFamily: "Noto Sans",
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      )),
                  enabled: false,
                ),
                PopupMenuItem(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Edit Informasi',
                          style: TextStyle(fontFamily: "Noto Sans")),
                      Icon(
                        Icons.edit,
                        size: 16,
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Hapus Kategori',
                          style: TextStyle(fontFamily: "Noto Sans")),
                      Icon(
                        Icons.delete,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ],
              child: Icon(Icons.more_vert, size: 24),
            )),
      ]);
}
