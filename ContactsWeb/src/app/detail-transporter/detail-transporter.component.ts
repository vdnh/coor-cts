import { Component, OnInit } from '@angular/core';
import { Transporter } from '../../model/model.transporter';
import { TransportersService } from '../transporters/transporters.service';
import { ActivatedRoute } from '@angular/router';
import { Message } from '@angular/compiler/src/i18n/i18n_ast';
import { Alert } from 'selenium-webdriver';

@Component({
  selector: 'app-detail-transoprter',
  templateUrl: './detail-transporter.component.html',
  styleUrls: ['./detail-transporter.component.css']
})
export class DetailTransporterComponent implements OnInit {

  transporter:Transporter=new Transporter();
  id:number;
  mode:number=1;
  constructor(public activatedRoute:ActivatedRoute, public transportersService:TransportersService){    
    this.id=activatedRoute.snapshot.params['id'];
  }

  ngOnInit() {
    this.transportersService.getDetailTransporter(this.id).subscribe(data=>{
      this.transporter=data;
      this.mode=1;
    }, err=>{
      console.log(err);
    })
  }
  saveContact(){
    this.transportersService.saveTransporters(this.transporter).subscribe(data=>{
      alert("Mise a jour.");
      this.mode=2;
    }, err=>{
      console.log(err);
    })    
  }
}
