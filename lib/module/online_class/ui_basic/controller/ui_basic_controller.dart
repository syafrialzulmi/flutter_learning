import 'package:flutter/material.dart';
import 'package:flutter_learning/state_util.dart';
import '../view/ui_basic_view.dart';

class UiBasicController extends State<UiBasicView> implements MvcController {
  static late UiBasicController instance;
  late UiBasicView view;

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