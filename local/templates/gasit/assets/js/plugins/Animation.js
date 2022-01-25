'use strict';

import AOS from 'aos';

class AnimationAOS {
    constructor() {
        this.init();
    }

    init(){
        document.addEventListener('DOMContentLoaded', () => {
            AOS.init({
                disable: 'mobile',
                once: true,
                useClassNames: false,
                anchorPlacement: 'top-bottom',
            });
        });
    }
}

export default AnimationAOS;
