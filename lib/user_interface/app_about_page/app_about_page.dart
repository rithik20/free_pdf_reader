import 'dart:io';

import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back))),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            if (Platform.isAndroid) ...[
              Image.asset(
                "assets/app_icon/pdfn.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 6,
              ),
              const Text(
                "FPR for Android",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                  "FPR is an Open source PDF Reader"),
              const Text("Version: 1.0.0"),
              const SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {
                  ///show the licence in a bottom sheet
                  showModalBottomSheet<void>(
                      shape: RoundedRectangleBorder(),
                      showDragHandle: true,
                      context: context,
                      builder: (context) => Container(
                            padding: EdgeInsets.all(10.0),
                            width: MediaQuery.of(context).size.width,
                            child: ListView(
                              children: [
                                const Text("MIT License \n\n"
                                    "Copyright (c) 2023 Free PDF Reader\n\n"
                                    "Permission is hereby granted, free of charge, to any person obtaining a copy"
                                    "of this software and associated documentation files (the "
                                    "Software), to deal"
                                    "in the Software without restriction, including without limitation the rights"
                                    "to use, copy, modify, merge, publish, distribute, sublicense, and/or sell"
                                    "copies of the Software, and to permit persons to whom the Software is"
                                    "furnished to do so, subject to the following conditions:\n\n"
                                    "The above copyright notice and this permission notice shall be included in all"
                                    "copies or substantial portions of the Software.\n\n"
                                    "THE SOFTWARE IS PROVIDED "
                                    "AS IS"
                                    ",WITHOUT WARRANTY OF ANY KIND, EXPRESS OR"
                                    "IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,"
                                    "FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE"
                                    "AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER"
                                    "LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,"
                                    "OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE"
                                    "SOFTWARE."),
                              ],
                            ),
                          ));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: 30.0,
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.grey,
                  ),
                  child: Center(
                      child: const Text("Copyright (c) 2023 Free PDF Reader")),
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
