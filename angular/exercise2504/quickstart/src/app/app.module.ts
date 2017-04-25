import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';
import { NgModule }from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { ReactiveFormsModule, FormsModule, Validators, FormControl } from '@angular/forms';

import { FirstFormComponent } from './exercise/first_form.component';

@NgModule({
  imports:      [ BrowserModule, FormsModule, ReactiveFormsModule ],
  declarations: [ FirstFormComponent ],
  bootstrap:    [ FirstFormComponent ]
})
export class AppModule { }
platformBrowserDynamic().bootstrapModule(AppModule)
