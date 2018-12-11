import { Component, OnInit } from '@angular/core';
import { Shipper } from 'src/model/model.shipper';
import { ShippersService } from '../shippers/shippers.service';

@Component({
  selector: 'app-new-shipper',
  templateUrl: './new-shipper.component.html',
  styleUrls: ['./new-shipper.component.css']
})
export class NewShipperComponent implements OnInit {
  shipper:Shipper=new Shipper();
  mode:number=1;
  
  constructor(public shippersService:ShippersService) { }

  ngOnInit() {
  }

  saveShipper(){
    this.shippersService.saveShippers(this.shipper).subscribe(data=>{
      this.mode=2;
    }, err=>{
      console.log(err);
    })    
  }
}
