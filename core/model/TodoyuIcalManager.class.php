<?php
/****************************************************************************
* todoyu is published under the BSD License:
* http://www.opensource.org/licenses/bsd-license.php
*
* Copyright (c) 2011, snowflake productions GmbH, Switzerland
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
 * todoyu iCal Manager
 *
 * @package			Todoyu
 * @subpackage		Core
 */
class TodoyuIcalManager {

	/**
	 * Get todoyu iCal object
	 *
	 * @param	String	$hash
	 * @param	String	$name
	 * @param	String	$description
	 * @return	TodoyuIcal
	 */
	public static function getIcal($hash = '', $name = 'todoyu Calendar', $description = '') {
		return new TodoyuIcal($hash, $name, $description);
	}



	/**
	 * Get date timestamp parts required for iCal date array
	 *
	 * @param	Integer		$timestamp
	 * @return	Array
	 */
	public static function getDateParts($timestamp) {
		return array(
			'year'	=> date('Y', $timestamp),
			'month'	=> date('n', $timestamp),
			'day'	=> date('j', $timestamp),
			'hour'	=> date('G', $timestamp),
			'min'	=> date('i', $timestamp),
			'sec'	=> date('s', $timestamp),
		);
	}

}

?>