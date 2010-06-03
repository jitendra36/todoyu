<?php
/****************************************************************************
* todoyu is published under the BSD License:
* http://www.opensource.org/licenses/bsd-license.php
*
* Copyright (c) 2010, snowflake productions GmbH, Switzerland
* All rights reserved.
*
* This script is part of the todoyu project.
* The todoyu project is free software; you can redistribute it and/or modify
* it under the terms of the BSD License.
*
* This script is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the BSD License
* for more details.
*
* This copyright notice MUST APPEAR in all copies of the script.
*****************************************************************************/

/**
 * Locales which match to the selected language.
 * setlocale() tries all locales in the list, uses the first which matches
 * locales are different on the systems (WIN,LINUX,MAC, etc)
 */
Todoyu::$CONFIG['LOCALE']['SYSTEMLOCALES'] = array(
	'en_GB' => array('en_GB.utf8', 'en_GB', 'en', 'English_GB'), // English (United Kingdom)
	//'en_US'	=> array('en_US.utf8', 'en_US', 'en', 'English_US', 'English_United States.1252'),
	'de_DE'	=> array('de_DE.utf8', 'de_DE', 'de', 'de_DE@euro', 'de_DE.utf8@euro', 'German_Germany.1252', 'deu_deu'), // German (Germany)
	//'de_CH'	=> array('de_CH.utf8', 'de_CH', 'de', 'German_Switzerland.1252'),
	//'de_AT'	=> array('de_AT.utf8', 'de_AT', 'de', 'de_AT@euro', 'de_AT.utf8@euro', 'German_Austria.1252'),
	'fr_FR'	=> array('fr_FR.utf8', 'fr_FR', 'fr'),
	//'fr_CH' => array('fr_CH.utf8', 'fr_CH', 'fr'),
	//'it_IT'	=> array('it_IT.utf8', 'it_IT', 'it'),
	//'it_CH'	=> array('it_CH.utf8', 'it_CH', 'it'),
	'pt_BR' => array('pt_BR.utf8', 'pt_BR', 'pt'), // Portuguese (Brasilia)
	'ru_RU' => array('ru_RU.utf8', 'ru_RU', 'ru'), // Russian
	'hr_HR' => array('hr_HR.utf8', 'hr_HR', 'hr'), // Croatian
	'sr_ME' => array('sr_ME.utf8', 'sr_ME', 'sr'), // Serbian (Montenegro)
	'sr_RS' => array('sr_RS.utf8', 'sr_RS', 'sr'), // Serbian (Serbia)
);

Todoyu::$CONFIG['LOCALE']['default']	= 'en_GB';
Todoyu::$CONFIG['LOCALE']['available']	= array('en_GB','de_DE','pt_BR','ru_RU','fr_FR','hr_HR','sr_ME','sr_RS');

?>