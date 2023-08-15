import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});
  Widget labelCreater(String text, BuildContext context){
    return Text(text, style: TextStyle(
      color: Theme.of(context).primaryColor,
      ),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))]),
      body:  Column(children:  [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Create new task", style:  TextStyle(
              fontWeight: FontWeight.w900, fontSize: 20),)]),

        const SizedBox(height: 20,),
        TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            label: labelCreater("Main task name", context)),
        ),

        TextField(
          readOnly: true,
          controller: TextEditingController(text: "April 29, 2023 12:30AM"),
          decoration: InputDecoration(
            suffixIcon:  Icon(Icons.calendar_month, color: Theme.of(context).primaryColor,),
            border: InputBorder.none,
            label:labelCreater("Due date", context)),
        ),

        TextField(
          maxLines: null,
          decoration: InputDecoration(
            border: InputBorder.none,
            label: labelCreater("Description", context)),
        ),
        const SizedBox(height: 40,),

        ElevatedButton(
          style:  ButtonStyle(
                foregroundColor:  const MaterialStatePropertyAll(Colors.white),
                backgroundColor:  MaterialStatePropertyAll(Theme.of(context).primaryColor)),
          onPressed: (){}, child: const Text("Add task"))

      ]),
    );
  }
}