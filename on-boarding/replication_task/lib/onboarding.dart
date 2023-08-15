import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:replication_task/add_task.dart';

class OnBoarding extends StatelessWidget{
  const OnBoarding({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Theme.of(context).primaryColor ),
        child:
         Column(
          children: [
            Expanded(child: SvgPicture.asset("assets/onboarding2.svg")),
            ElevatedButton(
              style:  ButtonStyle(
                shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )
                    ),
                foregroundColor: const MaterialStatePropertyAll(Colors.white),
                backgroundColor: const MaterialStatePropertyAll(Colors.blue)),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const AddTask())));
              }, child: const Text("Get started")),
            const SizedBox(height: 25,),
        ]),
      ),
    );  
  }

}