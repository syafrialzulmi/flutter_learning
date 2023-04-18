import 'package:flutter/material.dart';
import 'package:flutter_learning/state_util.dart';
import '../view/ui_pro_view.dart';

class UiProController extends State<UiProView> implements MvcController {
  static late UiProController instance;
  late UiProView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}