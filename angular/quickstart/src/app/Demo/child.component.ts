import { Component, Input, Output, EventEmitter } from '@angular/core'
@Component({
	selector: 'child',
  template: `
 		<div>nahnah {{value}}</div>
 		<button (click)="increase()"> Increment</button>
 		Enter you Name:  <input [(ngModel)]="enterName"  />  
 		<br/><br/>  
    <span> WelCome {{enterName}} ! </span>  
  `,
}) 

export class ChildComponent {
	@Input() value: number;
	@Output() test = new EventEmitter();
	constructor() {
		this.value = 1;
	}
	increase() {
		this.value ++;
		this.test.emit(this.value);
	}
}