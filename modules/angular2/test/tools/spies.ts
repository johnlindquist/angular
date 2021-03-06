import {SpyObject} from 'angular2/testing_internal';
import {LifeCycle, Injector, provide} from 'angular2/angular2';
import {ComponentRef} from 'angular2/src/core/linker/dynamic_component_loader';
import {global} from 'angular2/src/core/facade/lang';

export class SpyComponentRef extends SpyObject {
  injector;
  constructor() {
    super();
    this.injector = Injector.resolveAndCreate([provide(LifeCycle, {useValue: {tick: () => {}}})]);
  }
}

export function callNgProfilerTimeChangeDetection(config?): void {
  (<any>global).ng.profiler.timeChangeDetection(config);
}
