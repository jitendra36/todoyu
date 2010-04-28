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
 * Global error handler
 *
 * @package		Todoyu
 * @subpackage	Core
 */
class TodoyuErrorHandler {

	/**
	 * Flag. If true, the default php error handler will be called after the custom one
	 *
	 * @var	Boolean
	 */
	private static $ignoreErros = array(E_NOTICE, E_STRICT);



	/**
	 * Handler for TodoyuDbException. Print well formatted error information
	 * in the current output format
	 *
	 * @param	TodoyuDbException		$exception
	 */
	public static function handleTodoyuDbException(TodoyuDbException $exception) {
		if( Todoyu::$CONFIG['DEBUG'] ) {
			ob_end_clean();

				// Send error header
			self::sendPhpErrorHeader('Database error: ' . $exception->getMessage());

			$type = TodoyuHeader::getType();

			if( TodoyuRequest::isAjaxRequest() || $type === 'PLAIN' ) {
				echo $exception->getErrorAsPlain();
			} elseif( $type === 'JSON' ) {
				echo $exception->getErrorAsJson();
			} else {
				echo $exception->getErrorAsHtml(true);
			}

			exit();
		} else {
			self::endScriptClean('Database error!');
		}
	}



	/**
	 * Handle normal php errors. Disabled at the moment!
	 *
	 * @todo	Decide which errors are reported to the log
	 * @param	Integer		$errorno
	 * @param	String		$errorstr
	 * @param	String		$file
	 * @param	Integer		$line
	 * @param	Array		$context
	 * @return	Boolean
	 */
	public static function handleError($errorno, $errorstr, $file, $line, $context) {

			// If not a notice, log it
		if( ! in_array($errorno, self::$ignoreErros) ) {
			Todoyu::log('PHP ERROR: [' . $errorno . '] ' . $errorstr, TodoyuLogger::LEVEL_ERROR);
			self::sendPhpErrorHeader($errorstr);
		}

			// If debugging, call normal error handler to display the error
		if( Todoyu::$CONFIG['DEBUG'] ) {
			return false;
		} else {
			return true;
		}
	}



	/**
	 * Clean up and die
	 *
	 * @param	String	$message
	 */
	public static function endScriptClean($message) {
		ob_clean();

		TodoyuHeader::sendHeaderPlain();
		die('ERROR: ' . $message);
	}



	/**
	 * Render simple error message
	 *
	 * @param	$title			Error title
	 * @param	$message		Error message
	 * @return	String
	 */
	public static function renderError($title, $message) {
		$tmpl	= 'core/view/error.tmpl';
		$data	= array(
			'title'		=> $title,
			'message'	=> $message
		);

		return render($tmpl, $data);
	}



	/**
	 * Send a php error header
	 *
	 * @param	String		$errorMessage
	 */
	public static function sendPhpErrorHeader($errorMessage) {
		TodoyuHeader::sendTodoyuHeader('Php-Error', $errorMessage);
	}

}

?>