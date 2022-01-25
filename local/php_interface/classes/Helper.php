<?php


namespace dnext;

/**
 * Class Helper
 *
 * @package dnext
 */
class Helper
{
    public const PLACEHOLDER = '#TEMPLATE_PATH#/assets/images/placeholder.png';
    
    /**
     * Получить телефон без маски
     *
     * @param string $phone
     *
     * @return string
     */
    public static function getPhoneWithoutMask(string $phone): string
    {
        return !empty($phone) ? preg_replace('/[*( +()\-)]/', '', $phone) : "";
    }
    
    /**
     * @param $value
     *
     * @return bool
     */
    public static function isValidYoutubeId($value): bool
    {
        return preg_match('/^[a-zA-Z0-9_-]{11}$/', $value) > 0;
    }
    
    /**
     * Получить данные о ссылке на YouTube
     *
     * @param string|null $url
     *
     * @return array|null[]
     */
    public static function getYoutubeData(?string $url): array
    {
        $pattern = '%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i';
        if (preg_match($pattern, $url, $match)) {
            $youtubeId = $match[1];
            
            return [
                'IMAGE' => "https://img.youtube.com/vi/" . $youtubeId . "/maxresdefault.jpg",
                'VIDEO' => $youtubeId,
            ];
        }
        
        return [
            'IMAGE' => null,
            'VIDEO' => null,
        ];
    }
    
    /**
     * Получить изображение по его идентификатору
     *
     * @param $id
     * @param int $width
     * @param int $height
     * @param bool $crop
     * @param bool $withoutPlaceholder
     *
     * @return string
     */
    public static function getImageById(
        $id,
        int $width = 630,
        int $height = 450,
        bool $crop = false,
        bool $withoutPlaceholder = false
    ): ?string {
        $placeholder = null;
        if (!$withoutPlaceholder) {
            $placeholder = self::getTemplatePlaceholder(SITE_TEMPLATE_PATH);
            if (empty($id)) {
                return $placeholder;
            }
        }
        
        $resizeType = BX_RESIZE_IMAGE_PROPORTIONAL_ALT;
        if ($crop) {
            $resizeType = BX_RESIZE_IMAGE_EXACT;
        }
        
        $arFile = \CFile::GetFileArray($id);
        $arrImage = \CFile::ResizeImageGet(
            $arFile,
            [
                'width' => $width,
                'height' => $height,
            ],
            $resizeType,
            true,
            false,
            false,
            85
        );
        return file_exists($_SERVER['DOCUMENT_ROOT'] . $arrImage['src']) ? $arrImage['src'] : $placeholder;
    }
    
    /**
     * @param string $templatePath
     *
     * @return array|string|string[]
     */
    public static function getTemplatePlaceholder(string $templatePath)
    {
        return str_replace('#TEMPLATE_PATH#', $templatePath, self::PLACEHOLDER);
    }
}
