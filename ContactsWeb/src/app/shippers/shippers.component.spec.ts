import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ShippersComponent } from './shippers.component';

describe('ShipperComponent', () => {
  let component: ShippersComponent;
  let fixture: ComponentFixture<ShippersComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ShippersComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ShippersComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
