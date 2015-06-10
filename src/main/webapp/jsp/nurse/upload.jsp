<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<!-- saved from url=(0058)http://blueimp.github.io/jQuery-File-Upload/jquery-ui.html -->
<html lang="en" version="g42dymwpi--nx"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Force latest IE rendering engine or ChromeFrame if installed -->
<!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<![endif]-->
<meta charset="utf-8">
<title>jQuery File Upload Demo - jQuery UI version</title>
<!-- jQuery UI styles -->
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/themes/vader/jquery-ui.css" id="theme">
<!-- Demo styles -->
<link rel="stylesheet" href="http://blueimp.github.io/jQuery-File-Upload/css/demo.css">
<link rel="stylesheet" href="http://blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
	<style>
	.ui-widget {
	    font-size: 0.95em;
	}
	</style>
<!-- blueimp Gallery styles -->
<!-- CSS to style the file input field as button and adjust the Bootstrap progress bars -->
<link rel="stylesheet" href="http://blueimp.github.io/jQuery-File-Upload/css/jquery.fileupload.css">
<link rel="stylesheet" href="http://blueimp.github.io/jQuery-File-Upload/css/jquery.fileupload-ui.css">
<!-- CSS adjustments for browsers with JavaScript disabled -->
<noscript>&lt;link rel="stylesheet" href="css/jquery.fileupload-noscript.css"&gt;</noscript>
<noscript>&lt;link rel="stylesheet" href="css/jquery.fileupload-ui-noscript.css"&gt;</noscript>
</head>
<body data-pinterest-extension-installed="cr1.37" style="">
<!-- The file upload form used as target for the file upload widget -->
<form id="fileupload" action="${ctx}/controller/upload" method="POST" enctype="multipart/form-data" class="">
    <!-- Redirect browsers with JavaScript disabled to the origin page -->
    <noscript>&lt;input type="hidden" name="redirect" value="https://blueimp.github.io/jQuery-File-Upload/"&gt;</noscript>
    <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
    <div class="fileupload-buttonbar">
        <div class="fileupload-buttons">
            <!-- The fileinput-button span is used to style the file input field as button -->
            <span class="fileinput-button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary ui-state-hover" role="button"><span class="ui-button-icon-primary ui-icon ui-icon-plusthick"></span><span class="ui-button-text">
                <span>Add files...</span>
                
            </span><input type="file" name="files[]" multiple=""></span>
            <button type="submit" class="start ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" role="button"><span class="ui-button-icon-primary ui-icon ui-icon-circle-arrow-e"></span><span class="ui-button-text">Start upload</span></button>
            <button type="reset" class="cancel ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" role="button"><span class="ui-button-icon-primary ui-icon ui-icon-cancel"></span><span class="ui-button-text">Cancel upload</span></button>
            <button type="button" class="delete ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" role="button"><span class="ui-button-icon-primary ui-icon ui-icon-trash"></span><span class="ui-button-text">Delete</span></button>
            <input type="checkbox" class="toggle">
            <!-- The global file processing state -->
            <span class="fileupload-process"></span>
        </div>
        <!-- The global progress state -->
        <div class="fileupload-progress fade" style="display: none;">
            <!-- The global progress bar -->
            <div class="progress ui-progressbar ui-widget ui-widget-content ui-corner-all" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="ui-progressbar-value ui-widget-header ui-corner-left ui-corner-right" style="display: block; width: 0%;"></div></div>
            <!-- The extended global progress state -->
            <div class="progress-extended">&nbsp;</div>
        </div>
    </div>
    <!-- The table listing the files available for upload/download -->
    <table role="presentation"><tbody class="files"></tbody></table>
</form>
<!-- The blueimp Gallery widget -->
<div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls" data-filter=":even">
    <div class="slides"></div>
    <h3 class="title"></h3>
    <a class="prev">‹</a>
    <a class="next">›</a>
    <a class="close">×</a>
    <a class="play-pause"></a>
    <ol class="indicator"></ol>
</div>
<!-- The blueimp Gallery widget -->
<!-- The template to display files available for upload -->
<script id="template-upload" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td>
            <span class="preview"></span>
        </td>
        <td>
            <p class="name">{%=file.name%}</p>
            <strong class="error"></strong>
        </td>
        <td>
            <p class="size">Processing...</p>
            <div class="progress"></div>
        </td>
        <td>
            {% if (!i && !o.options.autoUpload) { %}
                <button class="start" disabled>Start</button>
            {% } %}
            {% if (!i) { %}
                <button class="cancel">Cancel</button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>
<!-- The template to display files available for download -->
<script id="template-download" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-download fade">
        <td>
            <span class="preview">
                {% if (file.thumbnailUrl) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                {% } %}
            </span>
        </td>
        <td>
            <p class="name">
                <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
            </p>
            {% if (file.error) { %}
                <div><span class="error">Error</span> {%=file.error%}</div>
            {% } %}
        </td>
        <td>
            <span class="size">{%=o.formatFileSize(file.size)%}</span>
        </td>
        <td>
            <button class="delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>Delete</button>
            <input type="checkbox" name="delete" value="1" class="toggle">
        </td>
    </tr>
{% } %}
</script>
<script src="${ctx}/js/upload//jquery.min.js"></script>
<script src="${ctx}/js/upload//jquery-ui.min.js"></script>
<!-- The Templates plugin is included to render the upload/download listings -->
<script src="${ctx}/js/upload//tmpl.min.js"></script>
<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
<script src="${ctx}/js/upload//load-image.all.min.js"></script>
<!-- The Canvas to Blob plugin is included for image resizing functionality -->
<script src="${ctx}/js/upload//canvas-to-blob.min.js"></script>
<!-- blueimp Gallery script -->
<script src="${ctx}/js/upload//jquery.blueimp-gallery.min.js"></script>
<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
<script src="${ctx}/js/upload//jquery.iframe-transport.js"></script>
<!-- The basic File Upload plugin -->
<script src="${ctx}/js/upload//jquery.fileupload.js"></script>
<!-- The File Upload processing plugin -->
<script src="${ctx}/js/upload//jquery.fileupload-process.js"></script>
<!-- The File Upload image preview & resize plugin -->
<script src="${ctx}/js/upload//jquery.fileupload-image.js"></script>
<!-- The File Upload audio preview plugin -->
<script src="${ctx}/js/upload//jquery.fileupload-audio.js"></script>
<!-- The File Upload video preview plugin -->
<script src="${ctx}/js/upload//jquery.fileupload-video.js"></script>
<!-- The File Upload validation plugin -->
<script src="${ctx}/js/upload//jquery.fileupload-validate.js"></script>
<!-- The File Upload user interface plugin -->
<script src="${ctx}/js/upload//jquery.fileupload-ui.js"></script>
<!-- The File Upload jQuery UI plugin -->
<script src="${ctx}/js/upload//jquery.fileupload-jquery-ui.js"></script>
<!-- The main application script -->
<script src="${ctx}/js/upload//main.js"></script>

</body></html>