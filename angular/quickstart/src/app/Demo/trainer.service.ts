import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

@Injectable()
export class TrainerService {
	trainers: any[];
	constructor (private _http: Http) {
  }
	getAll() {
    return this._http.get('app/data/trainers.json')
    .map((res: any) => {
      return res.json().trainers;
    })
	}
}
