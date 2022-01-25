"use strict";
/**
 * Показывает и скрывает элементы по нажатию на кнопку - аккордеон
 */

import HandyCollapse from "handy-collapse";

class HandyCollapseWrapper {
    constructor() {
        this.init();
    }

    init(){
        new HandyCollapse({
            closeOthers: true,
            activeClass: 'submenu__open'
        });
    }
}

export default HandyCollapseWrapper;
