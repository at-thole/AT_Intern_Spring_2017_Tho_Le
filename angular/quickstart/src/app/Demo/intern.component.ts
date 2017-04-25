import { Component, Input} from '@angular/core'
import { TrainerService } from './trainer.service'

@Component({
  selector: 'intern',
  providers: [TrainerService],
  templateUrl: 'app/template/intern.html',
})

export class InternComponent {
  @Input() team_name: string;
  trainers: any;
  constructor(private _trainer: TrainerService) {
    this.trainers = _trainer.getAll()
    .subscribe((data: any) => {
      this.trainers = data;
    })
  }
}
