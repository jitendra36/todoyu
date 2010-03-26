<?php
/****************************************************************************
* todoyu is published under the BSD License:
* http://www.opensource.org/licenses/bsd-license.php
*
* Copyright (c) 2010, snowflake productions gmbh
* All rights reserved.
*
* This script is part of the todoyu project.
* The todoyu project is free software; you can redistribute it and/or modify
* it under the terms of the BSC License.
*
* This script is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the BSD License
* for more details.
*
* This copyright notice MUST APPEAR in all copies of the script.
*****************************************************************************/

		// Sub paths
	$pathConfig		= 'config' . DIRECTORY_SEPARATOR;
	$pathConfigForm	= $pathConfig . 'form' . DIRECTORY_SEPARATOR;
	$pathConfigDb	= $pathConfig . 'db' . DIRECTORY_SEPARATOR;
	$pathConfigFormAdmin	= $pathConfigForm . 'admin' . DIRECTORY_SEPARATOR;
	$pathLocale		= 'locale' . DIRECTORY_SEPARATOR;
	$pathAssetsCss	= 'assets' . DIRECTORY_SEPARATOR . 'css' . DIRECTORY_SEPARATOR;
	$pathAssetsImg	= 'assets' . DIRECTORY_SEPARATOR . 'img' . DIRECTORY_SEPARATOR;
	$pathAssetsJs	= 'assets' . DIRECTORY_SEPARATOR . 'js' . DIRECTORY_SEPARATOR;
	$pathController	= 'controller' . DIRECTORY_SEPARATOR;
	$pathModel		= 'model' . DIRECTORY_SEPARATOR;
	$pathView		= 'view' . DIRECTORY_SEPARATOR;
	$pathViewPanelwidgets	= $pathView . 'panelwidgets' . DIRECTORY_SEPARATOR;
	$pathConfig		= 'config' . DIRECTORY_SEPARATOR;
	$pathInstall	= PATH . DIRECTORY_SEPARATOR . 'install' . DIRECTORY_SEPARATOR;

	Todoyu::$CONFIG['INSTALLER']['oldFiles']	= array(
			// Folders to be deleted with all their contents
		'needlessDirs'	=> array(
			PATH_EXT . 'dev',
			PATH_EXT . 'user',
			PATH_CACHE . 'css',
			PATH_CACHE . 'img',
			PATH_CACHE . 'js',
			PATH_CACHE . 'language',
			PATH_CACHE . 'output',
			PATH_CACHE . 'tmpl',
			PATH_CORE . $pathAssetsImg . 'content',
			PATH_CORE . $pathAssetsImg . 'tabs',
			PATH_CORE . $pathAssetsImg . 'tree',
		),
			// Files to be deleted
		'needlessFiles'	=> array(
			PATH_CORE . 'TodoyuDiv.class.php',
			PATH_CORE . 'TodoyuHeadletManager.class.php',
			PATH_CORE . 'TodoyuHeadletMetaMenu.class.php',
			PATH_CORE . 'TodoyuHeadletRenderer.class.php',
			PATH_CORE . $pathAssetsCss . 'paging.css',
			PATH_CORE . $pathAssetsImg . 'bg_button.png',
			PATH_CORE . $pathAssetsImg . 'bg_button_small.png',
			PATH_CORE . $pathAssetsImg . 'bg_footer.png',
			PATH_CORE . $pathAssetsImg . 'bg_headerline.png',
			PATH_CORE . $pathAssetsImg . 'bg_headers.png',
			PATH_CORE . $pathAssetsImg . 'bg_metamenu_li.png',
			PATH_CORE . $pathAssetsImg . 'bg_tab_header.png',
			PATH_CORE . $pathAssetsImg . 'body_bg.png',
			PATH_CORE . $pathAssetsImg . 'col1_r13.png',
			PATH_CORE . $pathAssetsImg . 'col3_bg_r13.png',
			PATH_CORE . $pathAssetsImg . 'col3_r13.png',
			PATH_CORE . $pathAssetsImg . 'colF_r13.png',
			PATH_CORE . $pathAssetsImg . 'dottedline_hor.png',
			PATH_CORE . $pathAssetsImg . 'dottedline_ver.png',
			PATH_CORE . $pathAssetsImg . 'duration_wizard.png',
			PATH_CORE . $pathAssetsImg . 'footer_bg.png',
			PATH_CORE . $pathAssetsImg . 'ico_toggle.png',
			PATH_CORE . $pathAssetsImg . 'ico_toggle_select.png',
			PATH_CORE . $pathAssetsImg . 'icons_dev.png',
			PATH_CORE . $pathAssetsImg . 'panel_footer.png',
			PATH_CORE . $pathAssetsImg . 'panel_header.png',
			PATH_CORE . $pathAssetsImg . 'shadow01.png',
			PATH_CORE . $pathAssetsImg . 'sprite-icons.png',
			PATH_CORE . $pathAssetsImg . 'sprite-notify.png',
			PATH_CORE . $pathAssetsImg . 'sprite-toggle.png',
			PATH_CORE . $pathAssetsImg . 'subNav_a_act_bg.png',
			PATH_CORE . $pathAssetsImg . 'subNav__bg.png',
			PATH_CORE . $pathAssetsJs . 'Paging.js',
			PATH_CORE . $pathView . 'headlet-ajaxloader.tmpl',
			PATH_CORE . $pathView . 'headlet-metamenu.tmpl',
			PATH_EXT_ADMIN . $pathConfig . 'rights.xml',
			PATH_EXT_ADMIN . $pathLocale . 'rights.xml',
			PATH_EXT_CALENDAR . $pathAssetsCss . 'panelwidget-quickevent.css',
			PATH_EXT_CALENDAR . $pathAssetsImg . 'icons_old.png',
			PATH_EXT_CALENDAR . $pathAssetsJs . 'PanelWidgetQuickEvent.js',
			PATH_EXT_CALENDAR . $pathAssetsJs . 'Quickinfo.js',
			PATH_EXT_CALENDAR . $pathConfigForm . 'event-user.xml',
			PATH_EXT_CALENDAR . $pathConfigForm . 'quickevent.xml',
			PATH_EXT_CALENDAR . $pathController . 'TodoyuCalendarQuickeventActionController.class.php',
			PATH_EXT_CALENDAR . $pathModel . 'TodoyuCalendarQuickinfo.class.php',
			PATH_EXT_CALENDAR . $pathModel . 'TodoyuPanelWidgetQuickEvent.class.php',
			PATH_EXT_CALENDAR . $pathView . 'quickinfo-event.tmpl',
			PATH_EXT_CALENDAR . $pathView . 'quickinfo-holiday.tmpl',
			PATH_EXT_CALENDAR . $pathViewPanelwidgets . 'panelwidget-quickevent.tmpl',
			PATH_EXT_CALENDAR . $pathConfig . 'table.php',
			PATH_EXT_CONTACT . $pathAssetsCss . 'panelwidget-quickcontact.css',
			PATH_EXT_CONTACT . $pathAssetsJs . 'PanelWidgetQuickContact.js',
			PATH_EXT_CONTACT . $pathConfigForm . 'company-user.xml',
			PATH_EXT_CONTACT . $pathConfigForm . 'user-company.xml',
			PATH_EXT_CONTACT . $pathConfigFormAdmin . 'customerrole.xml',
			PATH_EXT_CONTACT . $pathLocale . 'panelwidget-quickcontact.xml',
			PATH_EXT_CONTACT . $pathModel . 'TodoyuPanelWidgetQuickContact.class.php',
			PATH_EXT_CONTACT . $pathView . 'info-user.tmpl',
			PATH_EXT_CONTACT . $pathView . 'panelwidget-quickcontact.tmpl',
			PATH_EXT_LOGINPAGE . $pathAssetsCss . 'panelwidget-loginhints.css',
			PATH_EXT_LOGINPAGE . $pathAssetsImg . 'panelwidget-loginhints.png',
			PATH_EXT_LOGINPAGE . $pathLocale . 'panelwidget-loginhints.xml',
			PATH_EXT_LOGINPAGE . $pathModel . 'TodoyuPanelWidgetLoginHints.class.php',
			PATH_EXT_LOGINPAGE . $pathView . 'panelwidget-loginhints.tmpl',
			PATH_EXT_PORTAL . $pathAssetsJs . 'Task.js',
			PATH_EXT_PORTAL . $pathConfig . 'rights.php',
			PATH_EXT_PORTAL . $pathController . 'TodoyuPortalTaskActionController.class.php',
			PATH_EXT_PORTAL . $pathView . 'panelwidget-quicktask.tmpl',
			PATH_EXT_PORTAL . $pathView . 'panelwidget-quicktaskform.tmpl',
			PATH_EXT_PORTAL . $pathView . 'task-header.tmpl',
			PATH_EXT_PORTAL . $pathView . 'tasklist-header.tmpl',
			PATH_EXT_PORTAL . $pathView . 'tasklist.tmpl',
			PATH_EXT_PROJECT . $pathAssetsCss . 'panelwidget-projecttree.css',
			PATH_EXT_PROJECT . $pathAssetsCss . 'panelwidget-quickproject.css',
			PATH_EXT_PROJECT . $pathAssetsJs . 'PanelWidgetProjectTree.js',
			PATH_EXT_PROJECT . $pathAssetsJs . 'PanelWidgetProjectTreeFilter.js',
			PATH_EXT_PROJECT . $pathAssetsJs . 'PanelWidgetQuickProject.js',
			PATH_EXT_PROJECT . $pathConfigForm . 'panelwidget-projecttree-filter.xml',
			PATH_EXT_PROJECT . $pathConfigForm . 'project-user.xml',
			PATH_EXT_PROJECT . $pathConfigFormAdmin . 'userrole.xml',
			PATH_EXT_PROJECT . $pathController . 'TodoyuProjectPanelwidgetprojecttreeActionController.class.php',
			PATH_EXT_PROJECT . $pathController . 'TodoyuProjectProjectformActionController.class.php',
			PATH_EXT_PROJECT . $pathController . 'TodoyuProjectSubtasksActionController.class.php',
			PATH_EXT_PROJECT . $pathController . 'TodoyuProjectTabActionController.class.php',
			PATH_EXT_PROJECT . $pathModel . 'TodoyuPanelWidgetProjectTree.class.php',
			PATH_EXT_PROJECT . $pathModel . 'TodoyuPanelWidgetQuickProject.class.php',
			PATH_EXT_PROJECT . $pathModel . 'TodoyuProjectDataSource.class.php',
			PATH_EXT_PROJECT . $pathModel . 'TodoyuProjectSearchRenderer.class.php',
			PATH_EXT_PROJECT . $pathModel . 'TodoyuTaskSearchRenderer.class.php',
			PATH_EXT_PROJECT . $pathModel . 'TodoyuUserrole.class.php',
			PATH_EXT_PROJECT . $pathModel . 'TodoyuUserroleManager.class.php',
			PATH_EXT_PROJECT . $pathView . 'formelement-projectusers.tmpl',
			PATH_EXT_PROJECT . $pathView . 'project-assignedusers.tmpl',
			PATH_EXT_PROJECT . $pathViewPanelwidgets . 'panelwidget-projecttree-filter.tmpl',
			PATH_EXT_PROJECT . $pathViewPanelwidgets . 'panelwidget-projecttree-tree.tmpl',
			PATH_EXT_SEARCH . $pathAssetsImg . 'bg_search_headerline.png',
			PATH_EXT_SEARCH . $pathView . 'filterwidgets' . DIRECTORY_SEPARATOR . 'filterwidget-projectrole.tmpl',
			PATH_EXT_SYSMANAGER . $pathView . 'groupselector.tmpl',
			PATH_EXT_SYSMANAGER . $pathView . 'rights-not-available.tmpl',
			PATH_EXT_SYSMANAGER . $pathView . 'rightseditor.tmpl',
			PATH_EXT_TIMETRACKING . $pathAssetsImg . 'bg_headlettimetracking.png',
			$pathInstall . $pathAssetsImg . 'bg_button.png',
			$pathInstall . $pathAssetsImg . 'bg_headerline.png',
			$pathInstall . $pathAssetsImg . 'col3_r13.png',
			$pathInstall . $pathAssetsImg . 'panel_footer.png',
			$pathInstall . $pathConfigDb . 'db_data.sql',
			$pathInstall . $pathConfigDb . 'db_structure.sql',
			$pathInstall . $pathConfigDb . 'update_beta1_to_beta2.sql',
			$pathInstall . $pathConfigDb . 'update_beta2_to_beta3.sql',
			$pathInstall . $pathConfigDb . 'update_beta3_to_rc1.sql',
		)
	);

?>