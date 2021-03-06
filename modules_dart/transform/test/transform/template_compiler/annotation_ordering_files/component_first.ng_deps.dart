library test.src.transform.template_compiler.annotation_ordering_files.component_first.ng_deps.dart;

import 'component_first.dart';
import 'package:angular2/angular2.dart'
    show Component, Directive, View, NgElement;
import 'package:angular2/src/directives/ng_for.dart';
export 'component_first.dart';

var _visited = false;
void initReflector(reflector) {
  if (_visited) return;
  _visited = true;
  reflector
    ..registerType(
        ComponentFirst,
        new ReflectionInfo(const [
          const Component(selector: 'hello-app'),
          const View(
              template: '<li *ng-for="#thing of things"><div>test</div></li>',
              directives: const [NgFor])
        ], const [
          const []
        ], () => new ComponentFirst()));
}
