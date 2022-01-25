<?php if (!empty($arParams['TEXT'])): ?>
    <div class="cookies hidden js-message" data-type="cookies">
        <button class="cookies__close-btn js-message-close">
            <svg class="cookies__close-icon" width="20" height="20">
                <use xlink:href="#icon-close"></use>
            </svg>
        </button>
        <p class="cookies__text">
            <?= $arParams['TEXT'] ?>
        </p>
    </div>
<?php endif; ?>