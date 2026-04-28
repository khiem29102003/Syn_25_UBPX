/**
 * @license Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	//config.language = 'vi';
    //config.uiColor = '#AADC6E';
    config.enterMode = CKEDITOR.ENTER_BR;
    config.toolbar = 'Full';
    config.filebrowserBrowseUrl = '../Js/ckfinder/ckfinder.html';
    config.filebrowserImageBrowseUrl = '../Js/ckfinder/ckfinder.html?type=Images';
    config.filebrowserFlashBrowseUrl = '../Js/ckfinder/ckfinder.html?type=Flash';
    config.filebrowserUploadUrl = '../Js/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Files';
    config.filebrowserImageUploadUrl = '../Js/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Images';
    config.filebrowserFlashUploadUrl = '../Js/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Flash';
    config.filebrowserWindowWidth = '1000';
    config.filebrowserWindowHeight = '700';
	// Define changes to default configuration here. For example:
  
};

 