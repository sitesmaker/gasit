<?php

namespace Sprint\Migration;


class Version20210908161208 extends Version
{
    protected $description = "Гасит. Общие сведения, обновление ИБ";

    protected $moduleVersion = "3.28.8";

    /**
     * @throws Exceptions\HelperException
     * @return bool|void
     */
    public function up()
    {
        $helper = $this->getHelperManager();
        $iblockId = $helper->Iblock()->getIblockIdIfExists('common', 'gasit');
        $helper->Iblock()->saveProperty($iblockId, array (
  'NAME' => 'JS внутри head',
  'ACTIVE' => 'Y',
  'SORT' => '710',
  'CODE' => 'SEO_HEAD',
  'DEFAULT_VALUE' => '',
  'PROPERTY_TYPE' => 'S',
  'ROW_COUNT' => '30',
  'COL_COUNT' => '80',
  'LIST_TYPE' => 'L',
  'MULTIPLE' => 'N',
  'XML_ID' => NULL,
  'FILE_TYPE' => '',
  'MULTIPLE_CNT' => '5',
  'LINK_IBLOCK_ID' => '0',
  'WITH_DESCRIPTION' => 'N',
  'SEARCHABLE' => 'N',
  'FILTRABLE' => 'N',
  'IS_REQUIRED' => 'N',
  'VERSION' => '2',
  'USER_TYPE' => NULL,
  'USER_TYPE_SETTINGS' => NULL,
  'HINT' => '',
));
            $helper->Iblock()->saveProperty($iblockId, array (
  'NAME' => 'JS в начале body',
  'ACTIVE' => 'Y',
  'SORT' => '720',
  'CODE' => 'SEO_BODY',
  'DEFAULT_VALUE' => '',
  'PROPERTY_TYPE' => 'S',
  'ROW_COUNT' => '30',
  'COL_COUNT' => '80',
  'LIST_TYPE' => 'L',
  'MULTIPLE' => 'N',
  'XML_ID' => NULL,
  'FILE_TYPE' => '',
  'MULTIPLE_CNT' => '5',
  'LINK_IBLOCK_ID' => '0',
  'WITH_DESCRIPTION' => 'N',
  'SEARCHABLE' => 'N',
  'FILTRABLE' => 'N',
  'IS_REQUIRED' => 'N',
  'VERSION' => '2',
  'USER_TYPE' => NULL,
  'USER_TYPE_SETTINGS' => NULL,
  'HINT' => '',
));
    
    }

    public function down()
    {
        //your code ...
    }
}
