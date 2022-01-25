"use strict";

// Фиксированное меню при прокрутке

class ScrollMenu {
    constructor() {
        this.$header = document.querySelector('header');
        this.init();
    }

    init(){
        this.bindEvents();
    }

    bindEvents(){
        document.addEventListener("scroll", this.ScrollMenu.bind(this));
    }

    ScrollMenu(){
        if(window.scrollY > 40){
            this.$header.classList.add('scroll');
        }
        if(window.scrollY < 40) {
            this.$header.classList.remove('scroll');
        }
    }

}

export default ScrollMenu;
