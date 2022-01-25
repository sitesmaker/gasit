<?php

const IBLOCK_TYPE = 'gasit';

try {
    if (\Bitrix\Main\Loader::includeModule('iblock')) {
        $iblockList = \Bitrix\Iblock\IblockTable::query()
            ->addFilter('IBLOCK_TYPE_ID', IBLOCK_TYPE)
            ->setSelect(['ID', 'CODE'])
            ->setCacheTtl(36000000)
            ->exec();
        foreach ($iblockList as $iblock) {
            $const = strtoupper(IBLOCK_TYPE) . '_' . strtoupper($iblock['CODE']) . '_IBLOCK_ID';
            define($const, $iblock['ID']);
            
            $const = strtoupper(IBLOCK_TYPE) . '_' . strtoupper($iblock['CODE']) . '_ELEMENT_CODE';
            define($const, $iblock['CODE']);
        }
    }
} catch (\Exception $e) {
    // @todo добавить логирование в журнал событий
}
