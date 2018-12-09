import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-about',
  templateUrl: './about.component.html',
  styleUrls: ['./about.component.css']
})
export class AboutComponent implements OnInit {

  infos={
    nom : "Infos",
    email :  "sosprestige@cts.com"
  };

  constructor() { }

  ngOnInit() {
  }

}
