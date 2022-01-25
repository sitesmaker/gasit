"use strict";

// Кнопка "Наверх" скрипт для появления её при скроле

class FixScrollBtn {
    constructor() {
        this.$block = document.querySelector('.top_scroll');
        this.init();
    }

    init(){
        this.bindEvents();
    }

    bindEvents(){
        document.addEventListener("scroll", this.ScrollBtn.bind(this));
        if(Math.max(document.documentElement.scrollHeight, document.documentElement.clientHeight) < 2000){
            this.$block.style.display = "none";
        }
    }

    ScrollBtn(){
        let elem = document.querySelector('.footer');
        if (window.innerWidth > 1320) {
            if(elem.getBoundingClientRect().top < 3600){
                this.$block.classList.add('active');
            }else{
                this.$block.classList.remove('active');
            }
            if(elem.getBoundingClientRect().top < 960){
                this.$block.classList.remove('active');
            }
        }
    }

}

export default FixScrollBtn;