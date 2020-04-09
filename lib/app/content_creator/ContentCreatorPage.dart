/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:flutter/material.dart';
import 'package:caminhos_do_saber/app/keys.dart';
import 'package:caminhos_do_saber/app/pages.dart';



class ContentCreatorPage extends StatelessWidget {

  ContentCreatorPage({Key key}) : super(key: key ??  AppKeys.contentCreatorPage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageContainer()
    );
  }
}
