import { Component, OnInit } from '@angular/core';
import {Http} from '@angular/http';
//import "rxjs/add/operator/map";
import { map } from 'rxjs/operators';
import { ContactsService } from './contacts.service';
import { Router } from '@angular/router';
//import "ContactsService";

@Component({
  selector: 'app-contacts',
  templateUrl: './contacts.component.html',
  styleUrls: ['./contacts.component.css']
})
export class ContactsComponent implements OnInit {

  pageContact:any;
  motCle:string="";
  currentPage:number=0;
  size:number=5;

  pages:Array<number>;

  constructor(public http:Http, public contactservice:ContactsService, public router:Router) { }

  ngOnInit() {
    /*
    this.http.get("http://localhost:8080/chercherContacts?mc=H&size=4&page=0").pipe(map(res => res.json()))
    .subscribe(data => {
        this.pageContact = data;
      });//*/
    //console.log("Contact component is initializing ....")
    //this.contactservice.getContacts().subscribe(data=>{
      //this.pageContact=data;
    //}, err=>{
      //console.log(err);
   // })
  }

  doSearch(){
    this.contactservice.getContacts(this.motCle, this.currentPage, this.size).subscribe(data=>{
      this.pageContact=data;
      this.pages=new Array(data.totalPages);
    }, err=>{
      console.log(err);
    })
  }
  chercher(){
    this.doSearch();
  }
  gotoPage(i:number){
    this.currentPage=i;
    this.doSearch();
  }
  gotoDetailContact(id:number){
    this.router.navigate(['detail-contact',id]);
  }

  deleteContact(id:number){
    this.contactservice.deleteContact(id)
    .subscribe(data=>{
      //alert("Contact Id : "+id+" a ete supprime.");
    }, err=>{
      console.log(err);
    });

    this.gotoPage(this.currentPage);
    alert("Avoir rafraichi apres delete!!");
  }

}
