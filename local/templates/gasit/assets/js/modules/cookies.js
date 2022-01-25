(() => {
    const HIDDEN_CLASS = 'hidden';
    const messageElements = document.querySelectorAll('.js-message');

    messageElements.forEach(el => {
        const type = el.getAttribute('data-type');
        const isClosed = document.cookie.split(';').filter((item) => item.trim().indexOf(`${type}=closed`) >= 0).length;

        if (el && !isClosed) {
            const messageCloseElements = el.querySelectorAll('.js-message-close');
            el.classList.remove(HIDDEN_CLASS);

            const onMessageCloseClickHandler = (e) => {
                e.preventDefault();
                document.cookie = `${type}=closed; path=/`;
                el.classList.add(HIDDEN_CLASS);
            };

            messageCloseElements.forEach(closeEl => {
                closeEl.addEventListener('click', onMessageCloseClickHandler);
            });
        }
    })
})();
