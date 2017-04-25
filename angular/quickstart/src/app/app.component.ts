import { Component } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

@Component({
  selector: 'my-app',
  template: `<h1>Hello {{name}}</h1>
  <input type="text" [(ngModel)]="name">
  <button type="button" (click)="addMember()">Submit</button>
  <ul>
		<li *ngFor="let item of members">{{item}}</li>
  </ul>
  `,
})
export class AppComponent {
	name: string;
	members: any;
	constructor (private _http: Http) {
		// this.members = [];
    this._http.get('./data/trainers.json')
    .map((res: any) => {
      console.log(res);
    })
    .subscribe(
      (data: any) => {
        console.log(data);
      }
    )
	}
}

