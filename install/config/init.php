<?php
/***************************************************************
*  Copyright notice
*
*  (c) 2009 snowflake productions gmbh
*  All rights reserved
*
*  This script is part of the todoyu project.
*  The todoyu project is free software; you can redistribute it and/or modify
*  it under the terms of the GNU General Public License, version 2,
*  (http://www.gnu.org/licenses/old-licenses/gpl-2.0.html) as published by
*  the Free Software Foundation;
*
*  This script is distributed in the hope that it will be useful,
*  but WITHOUT ANY WARRANTY; without even the implied warranty of
*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
*  GNU General Public License for more details.
*
*  This copyright notice MUST APPEAR in all copies of the script!
***************************************************************/

/**
 * Init todoyu installer
 *
 * @package		Todoyu
 * @subpackage	Installer
 */

	// Activate error reporting
error_reporting(E_ALL ^ E_NOTICE);

	// Change current work directory to main directory to prevent path problems
chdir(dirname(dirname(__FILE__)) . '/..');

	// Declare PATH constants
require_once( dirname(__FILE__) . '/../../core/config/constants.php');

	// Check if _ENABLE file is available (installer has finished). Redirect to login
if( is_file(PATH . '/install/_ENABLE') ) {
	@unlink(PATH . '/index.html');
	header('Location: ../index.php');
	exit();
}

?>