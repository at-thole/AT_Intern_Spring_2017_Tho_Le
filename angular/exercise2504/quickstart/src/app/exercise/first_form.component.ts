import { Component} from '@angular/core';
import { FormBuilder, FormControl,FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'first-form',
  templateUrl: 'app/template/template_form.html',
})

export class FirstFormComponent {
  firstform: FormGroup;
  firstname: FormControl;
  lastname: FormControl;
  email: FormControl

  constructor (builder: FormBuilder) {
    this.firstname = new FormControl('', [
      Validators.required,
      Validators.minLength(6)
    ]);
    this.lastname = new FormControl('', [
      Validators.required,
      Validators.minLength(6)
    ]);
    this.email = new FormControl('',[]);
    this.firstform = builder.group({
      firstname: this.firstname,
      lastname: this.lastname,
      email: this.email
    });
    this.firstname.valueChanges
    .subscribe(data => {
      console.log(data);
      this.convertEmail();
    });
    this.lastname.valueChanges
    .subscribe(data => {
      this.convertEmail();
    });
  }

  convertEmail(){
    console.log(this.lastname.value);
    var new_email = this.firstname.value + '.' + this.lastname.value + '@asiantech.vn';
    this.email.setValue(new_email);
  }
}
