import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:native_design/presentation/login/platform_wrapper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool btnvalue = false;
  double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
        //appBar: PlatformAppBar(),
        body: Column(
      children: [
        Center(
            child: PlatformSwitch(
          onChanged: (value) {
            btnvalue = value;
            setState(() {});
          },
          value: btnvalue,
        )),
        PlatformSlider(
            value: sliderValue,
            onChanged: (v) {
              setState(() {
                sliderValue = v;
              });
            }),
        PlatformIconButton(
          onPressed: () {
            print('pressed');
          },
          materialIcon: const Icon(Icons.info),
          cupertinoIcon: const Icon(CupertinoIcons.info),
        ),
        PlatformWidget(cupertino: (_,__) => Container(height: 20,width: 40, color: Colors.red,),material: (_,__) => Container(height: 20,width: 40, color: Colors.lightBlue,),),
        PlatWrapper(cupertino: Container(height: 20,width: 40, color: Colors.lightBlue,), material: Container(height: 20,width: 40, color: Colors.red,)),
        PlatformWidgetBuilder(
          material: (_,child,__)=>InkWell(child: child,onTap: (){print('tap androids');},),
          cupertino: (_,child,__)=>GestureDetector(onTap: (){print('ios');},),
          child: Container(color: Colors.amber, height: 50, width: 100, child: const Center(child: Text('button')),),
        )
      ],
    ));
  }
}
