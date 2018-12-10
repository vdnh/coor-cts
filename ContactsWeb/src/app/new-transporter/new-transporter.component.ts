import { Component, OnInit } from '@angular/core';
import { Transporter } from 'src/model/model.transporter';
import { TransportersService } from '../transporters/transporters.service';

@Component({
  selector: 'app-new-transporter',
  templateUrl: './new-transporter.component.html',
  styleUrls: ['./new-transporter.component.css']
})
export class NewTransporterComponent implements OnInit {
  transporter:Transporter=new Transporter();
  mode:number=1;
  
  constructor(public transportersService:TransportersService) { }

  ngOnInit() {
  }

  saveTransporter(){
    this.transportersService.saveTransporters(this.transporter).subscribe(data=>{
      this.mode=2;
    }, err=>{
      console.log(err);
    })    
  }
}
