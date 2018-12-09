import { Component, OnInit } from '@angular/core';
import { Contact } from '../../model/model.contact';
import { ContactsService } from '../contacts/contacts.service';
import { ActivatedRoute } from '@angular/router';
import { Message } from '@angular/compiler/src/i18n/i18n_ast';
import { Alert } from 'selenium-webdriver';

@Component({
  selector: 'app-detail-contact',
  templateUrl: './detail-contact.component.html',
  styleUrls: ['./detail-contact.component.css']
})
export class DetailContactComponent implements OnInit {

  contact:Contact=new Contact();
  //contact:any;
  id:number;
  mode:number=1;
  //constructor(public contacsService:ContactsService) { }
  constructor(public activatedRoute:ActivatedRoute, public contactsService:ContactsService){    
    this.id=activatedRoute.snapshot.params['id'];
    //console.log(activatedRoute.snapshot.params.id);
  }

  ngOnInit() {
    this.contactsService.getDetailContact(this.id).subscribe(data=>{
      this.contact=data;
      this.mode=1;
    }, err=>{
      console.log(err);
    })
  }
  saveContact(){
    this.contactsService.saveContacts(this.contact).subscribe(data=>{
      alert("Mise a jour.");
      this.mode=2;
      //console.log(data);
    }, err=>{
      console.log(err);
    })    
    //console.log(this.contact);
  }
}
