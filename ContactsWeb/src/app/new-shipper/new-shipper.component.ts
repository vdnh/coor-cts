import { Component, OnInit } from '@angular/core';
import { Shipper } from 'src/model/model.shipper';
import { ShippersService } from '../shippers/shippers.service';
import { ContactsService } from '../contacts/contacts.service';
import { Contact } from 'src/model/model.contact';

@Component({
  selector: 'app-new-shipper',
  templateUrl: './new-shipper.component.html',
  styleUrls: ['./new-shipper.component.css']
})
export class NewShipperComponent implements OnInit {
  shipper:Shipper=new Shipper();
  mode:number=1;
  contact:Contact=new Contact();
  constructor(public shippersService:ShippersService, public contactsService:ContactsService) { }

  ngOnInit() {
  }

  saveShipper(){
    this.shippersService.saveShippers(this.shipper).subscribe(data=>{
      this.mode=2;
      this.shipper=data;
      this.contact.id_shipper=this.shipper.id;
      console.log("id actual of shipper : "+this.shipper.id);
      console.log("idShipper of contact : "+this.contact.id_shipper);
      console.log("This Contact all info : "+this.contact.toString());
      this.saveContact();
    }, err=>{
      console.log(err);
    });
    //this.saveContact();
    /*
    this.contactsService.saveContacts(this.contact).subscribe(data=>{
      console.log("Contact before : "+this.contact)  
      console.log("idShipper before : "+this.contact.idShipper)  
      //this.contact=data;
      console.log("Contact after : "+this.contact)
      console.log("idShipper after : "+this.contact.idShipper);
    });//*/
  }

  saveContact(){
    this.contactsService.saveContacts(this.contact).subscribe(data1=>{
      //this.mode=2;
      //console.log(data);
    }, err=>{
      console.log(err);
    })    
    //console.log(this.contact);
  }
}
