import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, //去除右上角的debug标志
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //const MyHomePage({Key? key, required this.title}) : super(key: key);
  //final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录输入框及表单(HYT)'),
        /*actions:<Widget>[
          UnconstrainedBox(
          child: SizedBox(
            width:20,
            height:20,
            child:CircularProgressIndicator(
              strokeWidth:3,
              valueColor:AlwaysStoppedAnimation(Colors.white70),
            ),
          )
          )
        ]*/
      ),
      //body: ImageAndIconRoute(),  //图片伸缩
      //body:MyHomeContent(),
      body:FormTestRoute(), //表单Form
    );
  }
}

class MyHomeContent extends StatefulWidget {
  @override
  _MyHomeContentState createState() => _MyHomeContentState();
}

class _MyHomeContentState extends State<MyHomeContent> {
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //按钮
        /*Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          ElevatedButton.icon(
            icon: Icon(Icons.send),
            label: Text("发送"),
            onPressed: () {},
          ),
          OutlinedButton.icon(
            icon: Icon(Icons.add),
            label: Text("添加"),
            onPressed: () {},
          ),
          TextButton.icon(
            icon: Icon(Icons.info),
            label: Text("详情"),
            onPressed: () {},
          ),
        ],
        ),*/
        //从网络加载图片
        /*Align(
            alignment: Alignment.center,
            child: Image(
              image: NetworkImage(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
              width: 100.0,
            ),
        )*/
        //3.3.2 ICON Material Design 字体图标
        /*Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.accessible,color: Colors.green),
            Icon(Icons.error,color: Colors.green),
            Icon(Icons.fingerprint,color: Colors.green),
          ],
        )，*/
        //登录输入框
        /*
        TextField(
          autofocus: true,
          decoration: InputDecoration(
              labelText: "用户名",
              hintText: "用户名或邮箱",
              prefixIcon: Icon(Icons.person)
          ),
        ),
        TextField(
          decoration: InputDecoration(
              labelText: "密码",
              hintText: "您的登录密码",
              prefixIcon: Icon(Icons.lock)
          ),
          obscureText: true,
        ),*/
        //通过主题自定义样式（登录输入框）
        /*Theme(
            data: Theme.of(context).copyWith(
                hintColor: Colors.grey[200], //定义下划线颜色
                inputDecorationTheme: InputDecorationTheme(
                    labelStyle: TextStyle(color: Colors.grey),//定义label字体样式
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0)//定义提示文本样式
                )
            ),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "用户名或邮箱",
                      prefixIcon: Icon(Icons.person)
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "密码",
                      hintText: "您的登录密码",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 13.0)
                  ),
                  obscureText: true,
                )
              ],
            )
        ),*/
        //通过Container嵌套定义样式
        /*Container(
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "电子邮件地址",
                  prefixIcon: Icon(Icons.email),
                  border: InputBorder.none //隐藏下划线
              )
          ),
          decoration: BoxDecoration(
            // 下滑线浅灰色，宽度1像素
              border: Border(bottom: BorderSide(color: Colors.grey, width: 1.0))
          ),
        )，*/
        //表单Form
      ],
    );
  }
}
//图片伸缩
/*
class ImageAndIconRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var img=NetworkImage("https://avatars2.githubusercontent.com/u/20411648?s=460&v=4");
    return SingleChildScrollView(
      child: Column(
          children: <Image>[
            Image(
              image: img,
              height: 50.0,
              width: 100.0,
              fit: BoxFit.fill,
            ),
            Image(
              image: img,
              height: 50,
              width: 50.0,
              fit: BoxFit.contain,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 50.0,
              fit: BoxFit.cover,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 50.0,
              fit: BoxFit.fitWidth,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 50.0,
              fit: BoxFit.fitHeight,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 50.0,
              fit: BoxFit.scaleDown,
            ),
            Image(
              image: img,
              height: 50.0,
              width: 100.0,
              fit: BoxFit.none,
            ),
            Image(
              image: img,
              width: 100.0,
              color: Colors.blue,
              colorBlendMode: BlendMode.difference,
              fit: BoxFit.fill,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 200.0,
              repeat: ImageRepeat.repeatY ,
            )
          ].map((e){
            return Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: 100,
                    child: e,
                  ),
                ),
                Text(e.fit.toString())
              ],
            );
          }).toList()
      ),
    );
  }
}
*/
//表单Form

class FormTestRoute extends StatefulWidget {
  @override
  _FormTestRouteState createState() => _FormTestRouteState();
}

class _FormTestRouteState extends State<FormTestRoute> {
  TextEditingController _unameController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, //设置globalKey，用于后面获取FormState
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: <Widget>[
          TextFormField(
            autofocus: true,
            controller: _unameController,
            decoration: InputDecoration(
              labelText: "用户名",
              hintText: "用户名或邮箱",
              icon: Icon(Icons.person),
            ),
            // 校验用户名
            validator: (v) {
              return v!.trim().isNotEmpty ? null : "用户名不能为空";
            },
          ),
          TextFormField(
            controller: _pwdController,
            decoration: InputDecoration(
              labelText: "密码",
              hintText: "您的登录密码",
              icon: Icon(Icons.lock),
            ),
            obscureText: true,
            //校验密码
            validator: (v) {
              return v!.trim().length > 5 ? null : "密码不能少于6位";
            },
          ),
          // 登录按钮
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("登录"),
                    ),
                    onPressed: () {
                      // 通过_formKey.currentState 获取FormState后，
                      // 调用validate()方法校验用户名密码是否合法，校验
                      // 通过后再提交数据。
                      if ((_formKey.currentState as FormState).validate()) {
                        //验证通过提交数据
                      }
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}