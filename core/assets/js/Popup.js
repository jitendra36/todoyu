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
 * @module
 */

/**
 * Todoyu popup
 *
 * @class		Popup
 * @namespace	Todoyu
 * @see http://prototype-window.xilinus.com/documentation.html
 */
Todoyu.Popup = {

	/**
	 * Popup object reference
	 * @property	popup
	 * @type		Window
	 */
	popup:		{},

	/**
	 * @property	last
	 * @type		Window
	 */
	last:		null,

	/**
	 * @property	timeoutID
	 * @type		Function
	 */
	timeoutID:	null,

	/**
	 * @property	contentOrigParentNode
	 * @type		DOMElement
	 */
	contentOrigParentNode: null,

	/**
	 * Get popup reference
	 *
	 * @method	getPopup
	 * @param	{String}			idPopup
	 * @return	Object
	 */
	getPopup: function(idPopup) {
		return this.popup[idPopup];
	},



	/**
	 * Get last opened popup handle
	 *
	 * @method	getLastPopup
	 * @return	Object
	 */
	getLastPopup: function() {
		return this.last;
	},



	/**
	 * Get amount of open popups
	 *
	 * @method	getNumPopups
	 * @return	{Number}
	 */
	getNumPopups: function() {
		return Object.keys(this.popup).size();
	},



	/**
	 * Open new popup window
	 *
	 * @method	openWindow
	 * @param	{String}		idPopup
	 * @param	{String}		title
	 * @param	{Number}		minWidth
	 * @param	{String}		contentUrl
	 * @param	{Object}		requestOptions
	 * @return	{Window}
	 */
	openWindow: function(idPopup, title, minWidth, contentUrl, requestOptions) {
			// Construct
		this.popup[idPopup] = new Window({
			id:					idPopup,
			className:			"dialog",
			title:				title,

			parent:				document.body,

			minWidth:			minWidth,
			minHeight:			220,
			width:				minWidth,
			height:				240,

			resizable:			true,
			closable:			true,
			minimizable:		false,
			maximizable:		false,
			draggable:			false,

			zIndex:				2000,
			recenterAuto:		false,

			'hideEffect':		Element.hide,
			'showEffect':		Element.show,
			effectOptions:		null,

			destroyOnClose:		true
		});

			// Show popup and activate content overlay
		this.getPopup(idPopup).showCenter(true, 100);

			// Wrap onComplete with own onComplete to handle popup
		requestOptions = requestOptions || {};
		if( typeof requestOptions.onComplete !== 'function' ) {
			requestOptions.onComplete = Prototype.emptyFunction;
		}
			// Popup with AJAX content
		requestOptions.onComplete.wrap(function(idPopup, callOriginal, response){
			this.onContentLoaded.bind(this, idPopup);
			callOriginal(response);
		}.bind(this, idPopup));

		if( contentUrl !== false ) {
			this.getPopup(idPopup).setAjaxContent(contentUrl, requestOptions, false, false);
		}

			// Save last opened popup
		this.last = this.getPopup(idPopup);

		return this.getPopup(idPopup);
	},



	/**
	 * Evoked after window content has been rendered.
	 * Installing observers:
	 * 1. upon clicking:	(delayed) popup window updates its seize to fit its content
	 * 2. upon closing:	the click observer (1) is stopped
	 *
	 * @method	onContentLoaded
	 * @param	{String}			idPopup
	 * @param	{Ajax.Response}		response
	 */
	onContentLoaded: function(idPopup, response) {

	},



	/**
	 * Open new popup window containing given element
	 *
	 * @method	openWindow
	 * @param	{String}		idPopup
	 * @param	{String}		idContentElement
	 * @param	{String}		title
	 * @param	{Function}		closePopupCallback
	 * @return	{Window}
	 */
	openElementInWindow: function(idPopup, idContentElement, title, closePopupCallback) {
			// Get element dimensions
		var contentElement		= $(idContentElement);
		var	elementDimension	= contentElement.getDimensions();

		var minWidth	= elementDimension.width + 14;
		var minHeight	= elementDimension.height + 14;

			// Open empty popup and show content overlay
		this.popup[idPopup] = new Window({
			id:					idPopup,
			className:			"dialog",
			title:				title,

			parent:				document.body,

			minWidth:			minWidth,
			minHeight:			minHeight,
			width:				minWidth,
			height:				minHeight + 20,

			resizable:			true,
			closable:			true,
			minimizable:		false,
			maximizable:		false,
			draggable:			false,

			zIndex:				2000,
			recenterAuto:		false,

			'hideEffect':		Element.hide,
			'showEffect':		Element.show,
			effectOptions:		null,

			destroyOnClose:		true
		});

		this.getPopup(idPopup).showCenter(true, 100);

			// Move content element into popup window
		this.contentOrigParentNode = contentElement.parentNode;
		var idPopupContent			= idPopup + 'Content';

		this.getPopup(idPopup).setHTMLContent('<div id="' + idPopupContent + '"></div>');
		$(idPopupContent).insert(contentElement);

			// Install observer to restore content when closing the window
		var idCloseDiv	= idPopup + '_close';
		$(idCloseDiv).observe('mouseup', this.restoreContent.bindAsEventListener(this, idPopup, closePopupCallback));

			// Save last opened popup
		this.last = this.getPopup(idPopup);

		return this.getPopup(idPopup);
	},



	/**
	 * Restore original node position of popup content element
	 *
	 * @param	{Object}	event
	 * @param	{String}	idPopup
	 * @param	{Function}	callback
	 */
	restoreContent: function(event, idPopup, callback) {
		var contentElement		= $(idPopup + 'Content').down('div');

		this.contentOrigParentNode.insert(contentElement);

		callback();
	},



	/**
	 * Enter Description here...
	 *
	 * @method	onWindowClose
	 * @param	{Object}	event
	 * @param	{String}	idPopup
	 */
	onWindowClose: function(event, idPopup) {

	},



	/**
	 * Enter Description here...
	 *
	 * @method	onMouseUp
	 * @param	{Object}	event
	 * @param	{String}	idPopup
	 */
	onMouseUp: function(event, idPopup) {

	},



	/**
	 * Get content element of popup
	 *
	 * @method	getContentElement
	 * @param	{String}	idPopup
	 */
	getContentElement: function(idPopup) {
		return $(idPopup + '_content');
	},



	/**
	 * Update size of popUp to fit its content without scroll bar
	 *
	 * @method	updateHeight
	 * @param	{String}	idPopup
	 * @param	{Boolean} clearTimeout
	 */
	updateHeight: function(idPopup, clearTimeout) {
		this.getPopup(idPopup).updateHeight();
	},



	/**
	 * Clear timeout (if set)
	 *
	 * @method	clearTimeout
	 */
	clearTimeout: function() {

	},



	/**
	 * Update popup content
	 *
	 * @method	updateContent
	 * @param	{String}	contentUrl
	 * @param	{Object}	requestOptions
	 */
	updateContent: function(idPopup, contentUrl, requestOptions) {
		this.getPopup(idPopup).setAjaxContent(contentUrl, requestOptions, false, false);
	},



	/**
	 * Set content of given popup
	 *
	 * @method	setContent
	 * @param	{String}	idPopup
	 * @param	{String}	content
	 */
	setContent: function(idPopup, content) {
		this.getPopup(idPopup).setHTMLContent(content);
		content.evalScripts();
	},



	/**
	 * Refresh popup
	 *
	 * @method	refresh
	 * @param	{String}	idPopup
	 */
	refresh: function(idPopup) {
		this.getPopup(idPopup).refresh();
	},



	/**
	 * Close popUp
	 *
	 * @method	close
	 * @param	{String}	idPopup
	 */
	close: function(idPopup) {
		this.getPopup(idPopup).close();
	},



	/**
	 * Destroy popUp
	 *
	 * @method	destroy
	 * @param	{String}	idPopup
	 */
	destroy: function(idPopup) {
		this.getPopup(idPopup).destroy();
	}

};