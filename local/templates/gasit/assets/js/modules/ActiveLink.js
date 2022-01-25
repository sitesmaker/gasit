"use strict";

// Смена класса для активных ссылок

class ActiveLink {
    constructor() {
        this.$menu = document.querySelector('.main-menu'),
            this.$menuElem = document.querySelectorAll('.main-menu > .main-menu__el'),
            this.$menuLink = document.querySelectorAll('.main-menu .main-menu__link'),
            this.init();
    }

    init(){
        this.bindEvents();
    }

    bindEvents(){
        document.addEventListener("DOMContentLoaded", (e) => {
            const urlHash = document.location.hash;
            this.$menuElem.forEach((item) => {
                if(item.querySelector("a").dataset.href === urlHash){
                    item.classList.add('active');
                    if (window.innerWidth > 1023) {
                        setTimeout(() => {
                            window.scrollBy(0, document.querySelector(urlHash).getBoundingClientRect().top - 80);
                        }, 50);
                    } else {
                        setTimeout(() => {
                            window.scrollBy(0, document.querySelector(urlHash).getBoundingClientRect().top - 160);
                        }, 50);
                    }
                }
            });

        });
        this.$menu.addEventListener("click", (e) => {
            let target = e.target;
            this.$menuElem.forEach((item) => {
                item.classList.remove('active');
                if(target.closest('.main-menu__el') === item){
                    item.classList.add('active');
                }
            });
        });
        this.$menuLink.forEach((item) => {
            item.addEventListener("click", (e) => {
                let target = e.target;
                if(target === target.closest('span'))
                    onAnchorClickHandler(e);
            });
        })
        const onAnchorClickHandler = (e) => {
            const href = e.target.closest("a").dataset.href;
            if (window.innerWidth > 1023) {
                setTimeout(() => {
                    window.scrollBy(0, document.querySelector(href).getBoundingClientRect().top - 80);
                }, 50);
            } else {
                setTimeout(() => {
                    window.scrollBy(0, document.querySelector(href).getBoundingClientRect().top - 160);
                }, 50);
            }
        };
    }

}

export default ActiveLink;
