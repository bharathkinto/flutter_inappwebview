import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class InAppWebViewExampleScreenFour extends StatefulWidget {
  @override
  _InAppWebViewExampleScreenFourState createState() =>
      new _InAppWebViewExampleScreenFourState();
}

class _InAppWebViewExampleScreenFourState extends State<InAppWebViewExampleScreenFour> {
  InAppWebViewController webView;
  String url = "";
  double progress = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
            child: Column(children: <Widget>[

              Expanded(
                child: Column(
                  children: <Widget>[

                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.all(10.0),
                        decoration:
                        BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                        child: InAppWebView(
                          initialUrl: "https://www.linkedin.com/login",
                          //initialFile: "assets/index.html",
                          initialHeaders: {},
                          initialOptions: InAppWebViewWidgetOptions(
//                              crossPlatform: InAppWebViewOptions(
//                                debuggingEnabled: true,
//                              )
                          ),
                          onWebViewCreated: (InAppWebViewController controller) {
                            webView = controller;
                          },
                          onLoadStart: (InAppWebViewController controller, String url) {
                            print("onLoadStart $url");
                            setState(() {
                              this.url = url;
                            });
                          },
                          onLoadStop: (InAppWebViewController controller, String url) async {
                            print("onLoadStop $url");
                            setState(() {
                              this.url = url;
                            });
                            /*var origins = await WebStorageManager.instance().android.getOrigins();
                        for (var origin in origins) {
                          print(origin);
                          print(await WebStorageManager.instance().android.getQuotaForOrigin(origin: origin.origin));
                          print(await WebStorageManager.instance().android.getUsageForOrigin(origin: origin.origin));
                        }
                        await WebStorageManager.instance().android.deleteAllData();
                        print("\n\nDELETED\n\n");
                        origins = await WebStorageManager.instance().android.getOrigins();
                        for (var origin in origins) {
                          print(origin);
                          await WebStorageManager.instance().android.deleteOrigin(origin: origin.origin);
                        }*/
                            /*var records = await WebStorageManager.instance().ios.fetchDataRecords(dataTypes: IOSWKWebsiteDataType.ALL);
                        for(var record in records) {
                          print(record);
                        }
                        await WebStorageManager.instance().ios.removeDataModifiedSince(dataTypes: IOSWKWebsiteDataType.ALL, date: DateTime(0));
                        print("\n\nDELETED\n\n");
                        records = await WebStorageManager.instance().ios.fetchDataRecords(dataTypes: IOSWKWebsiteDataType.ALL);
                        for(var record in records) {
                          print(record);
                        }*/
                          },
                          onProgressChanged: (InAppWebViewController controller, int progress) {
                            setState(() {
                              this.progress = progress / 100;
                            });
                          },
//                          onUpdateVisitedHistory: (InAppWebViewController controller, String url, bool androidIsReload) {
//                            print("onUpdateVisitedHistory $url");
//                            setState(() {
//                              this.url = url;
//                            });
//                          },
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ],),
    );
  }
}