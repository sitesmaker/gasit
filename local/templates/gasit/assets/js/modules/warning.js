(function () {
    const CLOSED_CLASS = 'closed';
    const warningElement = document.querySelector('.warning');

    const onWarningCloseClickHandler = () => {
        warningElement.classList.add(CLOSED_CLASS);
    };

    if (warningElement) {
        const warningCloseBtn = warningElement.querySelector('.warning__close');
        warningCloseBtn.addEventListener('click', onWarningCloseClickHandler);
    }
})();
