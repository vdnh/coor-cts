import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'TransportersWeb';
  contact={nom : "CTS", email : "sosprestige@cts.com"}
  textIn : String = "test first"; 
}
