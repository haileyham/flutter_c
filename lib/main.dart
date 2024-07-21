import 'package:flutter/material.dart'; // 파일 패키지 가져오는 것

void main() {
  runApp(const MyApp()); // main 안에 짜야하고, runApp : 앱 구동 시작 / runApp에 앱 메인페이지 입력하면 됨.
}

// main page 만드는건 아래처럼 하면 되는데, 첫 네줄은 셋팅하는 것(class MyApp ~~~ Wiget build~~~)줄까지
// 실제 코딩은 return에 아래 예로서는 return MaterialApp안에
// flutter에서는 다 위젯으로 구성됨. text, box 등 추가할 때 모두 위젯으로 추가
// 위젯은 대문자로 시작하고 () 소괄호 붙음

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('금호동3가'),
          actions : [ Icon(Icons.search), Icon(Icons.menu), Icon(Icons.add_alert ) ],
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width:100,
                height:100,
                decoration: BoxDecoration(
                    color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset('loopy.png')
              ),
              Container(
                width:500,
                height:100,
                color: Colors.red,
                child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Container(
                        width:500,
                        height:25,
                        child:Text('Canon')
                      ),
                      Container(
                          width:500,
                          height:25,
                          child:Text('컬럼동 · 끌올 10분 전')
                      ),
                      Container(
                          width:500,
                          height:25,
                          child:Text('10,000원')
                      ),
                      Container(
                          width:500,
                          height:25,
                          child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [Icon(Icons.heart_broken), Text('4')],
                          ),
                      )
                    ]
                  )
              )
            ],
          ),
        ),
    );
  }
}
