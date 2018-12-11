import { Component, OnInit } from '@angular/core';
import { Shipper } from '../../model/model.shipper';
import { ShippersService } from '../shippers/shippers.service';
import { ActivatedRoute } from '@angular/router';
import { Message } from '@angular/compiler/src/i18n/i18n_ast';
import { Alert } from 'selenium-webdriver';

@Component({
  selector: 'app-detail-shipper',
  templateUrl: './detail-shipper.component.html',
  styleUrls: ['./detail-shipper.component.css']
})
export class DetailShipperComponent implements OnInit {

  shipper:Shipper=new Shipper();
  id:number;
  mode:number=1;
  constructor(public activatedRoute:ActivatedRoute, public shippersService:ShippersService){    
    this.id=activatedRoute.snapshot.params['id'];
  }

  ngOnInit() {
    this.shippersService.getDetailShipper(this.id).subscribe(data=>{
      this.shipper=data;
      this.mode=1;
    }, err=>{
      console.log(err);
    })
  }
  saveContact(){
    this.shippersService.saveShippers(this.shipper).subscribe(data=>{
      alert("Mise a jour.");
      this.mode=2;
    }, err=>{
      console.log(err);
    })    
  }
}
