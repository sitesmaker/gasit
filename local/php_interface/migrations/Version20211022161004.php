<?php


namespace Sprint\Migration;


class Version20211022161004 extends Version
{
    protected $description = "Гасит. Новое свойство Видео";
    
    protected $moduleVersion = "3.28.8";
    
    /**
     * @return bool|void
     * @throws Exceptions\HelperException
     */
    public function up()
    {
        $helper = $this->getHelperManager();
        $iblockId = $helper->Iblock()->getIblockIdIfExists('video', 'gasit');
        $helper->Iblock()->saveProperty($iblockId, [
            'NAME' => 'Показывать блок',
            'ACTIVE' => 'Y',
            'SORT' => '100',
            'CODE' => 'SHOW',
            'DEFAULT_VALUE' => '',
            'PROPERTY_TYPE' => 'L',
            'ROW_COUNT' => '1',
            'COL_COUNT' => '30',
            'LIST_TYPE' => 'C',
            'MULTIPLE' => 'N',
            'XML_ID' => null,
            'FILE_TYPE' => '',
            'MULTIPLE_CNT' => '5',
            'LINK_IBLOCK_ID' => '0',
            'WITH_DESCRIPTION' => 'N',
            'SEARCHABLE' => 'N',
            'FILTRABLE' => 'N',
            'IS_REQUIRED' => 'N',
            'VERSION' => '2',
            'USER_TYPE' => null,
            'USER_TYPE_SETTINGS' => null,
            'HINT' => '',
            'VALUES' =>
                [
                    0 =>
                        [
                            'VALUE' => 'Да',
                            'DEF' => 'Y',
                            'SORT' => '100',
                            'XML_ID' => 'Y',
                        ],
                ],
        ]);
    }
    
    public function down()
    {
        //your code ...
    }
}
