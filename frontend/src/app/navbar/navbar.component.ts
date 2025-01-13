import { Component } from '@angular/core';
import { RouterModule } from '@angular/router';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-navbar',
  standalone: true,
  imports: [CommonModule, RouterModule],
  templateUrl: './navbar.component.html',
  styleUrl: './navbar.component.css'
})

export class NavbarComponent {
    
    constructor() {
        //
    }

    isMenuOpen = false;

    toggleMobileMenu() {
        this.isMenuOpen = !this.isMenuOpen;
    }
}
