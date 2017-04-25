import { Component, Input} from '@angular/core'
import { TrainerService } from './trainer.service'

@Component({
	selector: 'detail',
	providers: [TrainerService],
  templateUrl: 'app/template/details.html',
})

export class DetailComponent {
	@Input() selected: number;
	trainers: any;
	constructor(private _trainer: TrainerService) {
		this.trainers = _trainer.getAll()
    .subscribe((data: any) => {
      this.trainers = data;
      console.log(data);
    })
	}
}
