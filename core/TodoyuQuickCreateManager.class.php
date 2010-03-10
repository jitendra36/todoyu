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
 * Manager class for the quick create
 *
 * @package		Todoyu
 * @subpackage	Core
 */
class TodoyuQuickCreateManager {

	/**
	 * Add a new create engine and register needed functions
	 *
	 * @param	String		$ext
	 * @param	String		$type
	 * @param	String		$label
	 * @param	Integer		$position
	 * @param	Array		$primaryAreas	Areas where to list this type as primary
	 * @param	Boolean		$areaOnly		show type within resp. area only?
	 */
	public static function addEngine($ext, $type, $label = '', $position = 100, array $primaryAreas = array(), $areaOnly = false) {
		$GLOBALS['CONFIG']['CREATE']['engines'][] = array(
			'ext'		=> $ext,
			'type'		=> $type,
			'label'		=> $label,
			'position'	=> intval($position),
			'primary'	=> $primaryAreas,
			'areaOnly'	=> $areaOnly
		);
	}



	/**
	 * Get registered engines
	 *
	 * @return	Array
	 */
	public static function getEngines() {
			// Load /config/create.php configfiles of all loaded extensions)
		TodoyuExtensions::loadAllCreate();

		$engines= TodoyuArray::sortByLabel($GLOBALS['CONFIG']['CREATE']['engines'], 'position');
		$area	= Todoyu::getAreaKey();
		$data	= array(
			'primary'	=> false,
			'all'		=> array()
		);

		foreach($engines as $index => $engine) {
				// If onlyArea flag is set and area is not in primary types, remove
			if( $engine['areaOnly'] === true && ! in_array($area, $engine['primary']) ) {
				unset($engines[$index]);
				continue;
			}

				// Find primary type
			if( in_array($area, $engine['primary']) ) {
				$data['primary'] = $engine;
				$data['primary']['isPrimary'] = true;
				break;
			}
		}

			// Add all not removed types
		$data['all'] = $engines;

		return $data;
	}

}

?>