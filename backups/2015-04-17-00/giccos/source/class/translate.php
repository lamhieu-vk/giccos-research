<?php
class translator {
    private $langFrom;
    private $langTo;
    private static $urlFormat = "http://translate.google.com/translate_a/t?client=t&text=%s&hl=en&sl=%s&tl=%s&ie=UTF-8&oe=UTF-8&multires=1&otf=1&pc=1&trs=1&ssel=3&tsel=6&sc=1";
    public function __construct($from = "en", $to = "vi") {
        $this->setLangFrom($from)->setLangTo($to);
    }
    public function setLangFrom($lang) {
        $this->langFrom = $lang;
        return $this;
    }
    public function setLangTo($lang) {
        $this->langTo = $lang;
        return $this;
    }
    public static final function makeCurl($url, array $params = array(), $cookieSet = false) {
        if (!$cookieSet) {
            $cookie = tempnam(sys_get_temp_dir(), "CURLCOOKIE");
            $ch = curl_init($url);
            curl_setopt($ch, CURLOPT_COOKIEJAR, $cookie);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            $output = curl_exec($ch);
            unset($ch);
            unlink($cookie);
            return $output;
        }
        $queryString = http_build_query($params);
        $curl = curl_init($url . "?" . $queryString);
        curl_setopt($curl, CURLOPT_COOKIEFILE, $cookie);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        $output = curl_exec($curl);
        return $output;
    }
    public static function text ($string, $from, $to) {
        $url = sprintf(self::$urlFormat, rawurlencode($string), $from, $to);
        $result = preg_replace('!,+!', ',', self::makeCurl($url));
        $result = str_replace ("[,", "[", $result);
        $resultArray = json_decode($result, true);
        $finalResult = "";
        if (!empty($resultArray[0])) {
            foreach ($resultArray[0] as $results) {
                $finalResult .= $results[0];
            }
            return $finalResult;
        }
        return false;
    }
}

?>