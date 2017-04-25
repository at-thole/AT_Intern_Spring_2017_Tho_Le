import { Component, EventEmitter } from '@angular/core'
@Component({
	selector: 'demo',
  template: `
 		<div>Parent {{parentNumber}}</div>
 		<child [value]="parentNumber" (test)="changeValue($event)"></child>
  `,
}) 

export class DemoComponent {
	parentNumber: number;
	constructor() {
		this.parentNumber = 3;
	}

	changeValue(value:any) {
		console.log(value);
	}
}