import 'package:flutter/material.dart';

import 'package:fluro/fluro.dart';

import 'package:app_bases/ui/views/counter_provider_view.dart';
import 'package:app_bases/ui/views/counter_view.dart';
import 'package:app_bases/ui/views/view_404.dart';

final counterHandler = Handler(
  handlerFunc: (context, params) => const Center(
    child: CircularProgressIndicator(),
  ),
);

final statefulHandler = Handler(
  handlerFunc: (context, params) {
    return CounterView(
      base: params['base']?.first ?? '5',
    );
  },
);

final providerHandler = Handler(handlerFunc: (context, params) {
  return CounterProviderView(base: params['q']?.first ?? '10');
});

final dashboardUserHandler = Handler(handlerFunc: (context, params) {
  return const View404();
});

final pageNotFound = Handler(
  handlerFunc: (context, params) => const View404(),
);
