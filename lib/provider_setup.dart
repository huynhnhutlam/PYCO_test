// import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pyco_test/data/service/bussiness_service.dart';
import 'package:pyco_test/notifiers/profile_notifier.dart';

List<SingleChildCloneableWidget> providers = [
  ...independentProvider,
  ...dependentProviders
];

List<SingleChildCloneableWidget> independentProvider = [
  Provider<BusinessService>(
    create: (_) => BusinessService(),
    dispose: (_, businessService) => businessService.dispose(),
  ),
];

List<SingleChildCloneableWidget> dependentProviders = [
  ChangeNotifierProxyProvider<BusinessService, ProfileNotifier>(
    create: (_) => null,
    update: (_, businessService, __) {
      return ProfileNotifier(businessService);
    },
  ),
]; 