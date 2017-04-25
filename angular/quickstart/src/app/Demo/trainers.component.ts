import { Component} from '@angular/core';
import { TrainerService } from './trainer.service';

@Component({
	selector: 'trainer',
	providers: [TrainerService],
  templateUrl: 'app/template/trainers.html',
})

export class TrainerComponent {
	trainers: any;
	selected: number;
  team_name: string;
  input_team_name: string;
  new_member: string;
	constructor (private _trainer: TrainerService) {
    // this._trainer.getAll()
    // .subscribe((data: any) => {
    //   this.trainers = data;
    // })
    this.trainers = [];
	}

	display(i: number) {
		this.selected = i;
	}

  get_team_name(){
    this.team_name = this.input_team_name;
  }

  addMember(f: NgForm){
    console.log(f.value.infor);
    console.log(f.value.account);
    this.trainers.push(f.value);
  }
}
