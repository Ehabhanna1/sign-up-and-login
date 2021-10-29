import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:statemangment/controller/data.dart';

class  HomePage extends ConsumerWidget{
  @override
  Widget build(BuildContext context, ScopedReader watch) {
   var viewModel=watch (getDataFuture);
   return Scaffold(
     appBar: AppBar(title: Text("Hi Ehab"),

      ),
   );
  }


}
