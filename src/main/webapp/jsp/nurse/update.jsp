<!DOCTYPE html>
<!-- saved from url=(0058)http://blueimp.github.io/jQuery-File-Upload/jquery-ui.html -->
<html lang="en" version="g42dymwpi--nx"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Force latest IE rendering engine or ChromeFrame if installed -->
<!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<![endif]-->
<meta charset="utf-8">
<title>jQuery File Upload Demo - jQuery UI version</title>
<meta name="description" content="File Upload widget with multiple file selection, drag&amp;drop support, progress bars, validation and preview images, audio and video for jQuery. Supports cross-domain, chunked and resumable file uploads and client-side image resizing. Works with any server-side platform (PHP, Python, Ruby on Rails, Java, Node.js, Go etc.) that supports standard HTML form file uploads.">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- jQuery UI styles -->
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/themes/vader/jquery-ui.css" id="theme">
<!-- Demo styles -->
<link rel="stylesheet" href="http://blueimp.github.io/jQuery-File-Upload/css/demo.css">
<!--[if lte IE 8]>
<link rel="stylesheet" href="css/demo-ie8.css">
<![endif]-->
<style>
/* Adjust the jQuery UI widget font-size: */
.ui-widget {
    font-size: 0.95em;
}
</style>
<!-- blueimp Gallery styles -->
<link rel="stylesheet" href="http://blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
<!-- CSS to style the file input field as button and adjust the Bootstrap progress bars -->
<link rel="stylesheet" href="http://blueimp.github.io/jQuery-File-Upload/css/jquery.fileupload.css">
<link rel="stylesheet" href="http://blueimp.github.io/jQuery-File-Upload/css/jquery.fileupload-ui.css">
<!-- CSS adjustments for browsers with JavaScript disabled -->
<noscript>&lt;link rel="stylesheet" href="css/jquery.fileupload-noscript.css"&gt;</noscript>
<noscript>&lt;link rel="stylesheet" href="css/jquery.fileupload-ui-noscript.css"&gt;</noscript>
</head>
<body data-pinterest-extension-installed="cr1.37" style="">
<ul class="navigation">
    <li><h3><a href="https://github.com/blueimp/jQuery-File-Upload">jQuery File Upload</a></h3></li>
    <li><a href="https://github.com/blueimp/jQuery-File-Upload/tags">Download</a></li>
    <li><a href="https://github.com/blueimp/jQuery-File-Upload">Source Code</a></li>
    <li><a href="https://github.com/blueimp/jQuery-File-Upload/wiki">Documentation</a></li>
    <li><a href="https://blueimp.net/">© blueimp.net</a></li>
</ul>
<h1>jQuery File Upload Demo</h1>
<p style="float:right">
    <script async="" src="${ctx}/js/upload//analytics.js"></script><script async="" type="text/javascript" src="${ctx}/js/upload//ca-pub-4004031949998028.js"></script><script async="" src="${ctx}/js/upload//adsbygoogle.js"></script>
    <ins class="adsbygoogle" style="display:inline-block;width:320px;height:100px" data-ad-client="ca-pub-4004031949998028" data-ad-slot="8543690390" data-adsbygoogle-status="done"><ins id="aswift_0_expand" style="display:inline-table;border:none;height:100px;margin:0;padding:0;position:relative;visibility:visible;width:320px;background-color:transparent"><ins id="aswift_0_anchor" style="display:block;border:none;height:100px;margin:0;padding:0;position:relative;visibility:visible;width:320px;background-color:transparent"><iframe width="320" height="100" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}" id="aswift_0" name="aswift_0" style="left:0;position:absolute;top:0;"></iframe></ins></ins></ins>
    <script>
    (adsbygoogle = window.adsbygoogle || []).push({});
    </script>
</p>
<h2>jQuery UI version</h2>
<form>
    <label for="theme-switcher">Theme:</label>
    <select id="theme-switcher" class="pull-right">
        <option value="black-tie">Black Tie</option>
        <option value="blitzer">Blitzer</option>
        <option value="cupertino">Cupertino</option>
        <option value="dark-hive" selected="">Dark Hive</option>
        <option value="dot-luv">Dot Luv</option>
        <option value="eggplant">Eggplant</option>
        <option value="excite-bike">Excite Bike</option>
        <option value="flick">Flick</option>
        <option value="hot-sneaks">Hot sneaks</option>
        <option value="humanity">Humanity</option>
        <option value="le-frog">Le Frog</option>
        <option value="mint-choc">Mint Choc</option>
        <option value="overcast">Overcast</option>
        <option value="pepper-grinder">Pepper Grinder</option>
        <option value="redmond">Redmond</option>
        <option value="smoothness">Smoothness</option>
        <option value="south-street">South Street</option>
        <option value="start">Start</option>
        <option value="sunny">Sunny</option>
        <option value="swanky-purse">Swanky Purse</option>
        <option value="trontastic">Trontastic</option>
        <option value="ui-darkness">UI Darkness</option>
        <option value="ui-lightness">UI Lightness</option>
        <option value="vader">Vader</option>
    </select>
</form>
<ul class="navigation">
    <li><a href="http://blueimp.github.io/jQuery-File-Upload/basic.html">Basic</a></li>
    <li><a href="http://blueimp.github.io/jQuery-File-Upload/basic-plus.html">Basic Plus</a></li>
    <li><a href="http://blueimp.github.io/jQuery-File-Upload/index.html">Basic Plus UI</a></li>
    <li><a href="http://blueimp.github.io/jQuery-File-Upload/angularjs.html">AngularJS</a></li>
    <li class="active"><a href="${ctx}/js/upload//jQuery File Upload Demo - jQuery UI version.html">jQuery UI</a></li>
</ul>
<blockquote>
    <p>File Upload widget with multiple file selection, drag&amp;drop support, progress bars, validation and preview images, audio and video for jQuery UI.<br>
    Supports cross-domain, chunked and resumable file uploads and client-side image resizing.<br>
    Works with any server-side platform (PHP, Python, Ruby on Rails, Java, Node.js, Go etc.) that supports standard HTML form file uploads.</p>
</blockquote>
<!-- The file upload form used as target for the file upload widget -->
<form id="fileupload" action="http://jquery-file-upload.appspot.com/" method="POST" enctype="multipart/form-data" class="">
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
    <table role="presentation"><tbody class="files"><tr class="template-download fade">
        <td>
            <span class="preview">
                
                    <a href="http://jquery-file-upload.appspot.com/image%2Fjpeg/917305387/%E5%A4%B4%E5%83%8F.JPG" title="头像.JPG" download="头像.JPG" data-gallery=""><img src="${ctx}/js/upload//头像.JPG.80x80.JPG"></a>
                
            </span>
        </td>
        <td>
            <p class="name">
                <a href="http://jquery-file-upload.appspot.com/image%2Fjpeg/917305387/%E5%A4%B4%E5%83%8F.JPG" title="头像.JPG" download="头像.JPG" data-gallery="">头像.JPG</a>
            </p>
            
        </td>
        <td>
            <span class="size">11.62 KB</span>
        </td>
        <td>
            <button class="delete ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" data-type="DELETE" data-url="http://jquery-file-upload.appspot.com/image%2Fjpeg/917305387/%E5%A4%B4%E5%83%8F.JPG" role="button"><span class="ui-button-icon-primary ui-icon ui-icon-trash"></span><span class="ui-button-text">Delete</span></button>
            <input type="checkbox" name="delete" value="1" class="toggle">
        </td>
    </tr><tr class="template-download fade">
        <td>
            <span class="preview">
                
                    <a href="http://jquery-file-upload.appspot.com/image%2Fjpeg/4239529864/7574a151gw1en95uuifu7j20m80et0z0.jpg" title="7574a151gw1en95uuifu7j20m80et0z0.jpg" download="7574a151gw1en95uuifu7j20m80et0z0.jpg" data-gallery=""><img src="${ctx}/js/upload//7574a151gw1en95uuifu7j20m80et0z0.jpg.80x80.jpg"></a>
                
            </span>
        </td>
        <td>
            <p class="name">
                <a href="http://jquery-file-upload.appspot.com/image%2Fjpeg/4239529864/7574a151gw1en95uuifu7j20m80et0z0.jpg" title="7574a151gw1en95uuifu7j20m80et0z0.jpg" download="7574a151gw1en95uuifu7j20m80et0z0.jpg" data-gallery="">7574a151gw1en95uuifu7j20m80et0z0.jpg</a>
            </p>
            
        </td>
        <td>
            <span class="size">85.11 KB</span>
        </td>
        <td>
            <button class="delete ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" data-type="DELETE" data-url="http://jquery-file-upload.appspot.com/image%2Fjpeg/4239529864/7574a151gw1en95uuifu7j20m80et0z0.jpg" role="button"><span class="ui-button-icon-primary ui-icon ui-icon-trash"></span><span class="ui-button-text">Delete</span></button>
            <input type="checkbox" name="delete" value="1" class="toggle">
        </td>
    </tr></tbody></table>
</form>
<br>
<h3>Demo Notes</h3>
<ul>
    <li>The maximum file size for uploads in this demo is <strong>999 KB</strong> (default file size is unlimited).</li>
    <li>Only image files (<strong>JPG, GIF, PNG</strong>) are allowed in this demo (by default there is no file type restriction).</li>
    <li>Uploaded files will be deleted automatically after <strong>5 minutes or less</strong> (demo files are stored in memory).</li>
    <li>You can <strong>drag &amp; drop</strong> files from your desktop on this webpage (see <a href="https://github.com/blueimp/jQuery-File-Upload/wiki/Browser-support">Browser support</a>).</li>
    <li>Please refer to the <a href="https://github.com/blueimp/jQuery-File-Upload">project website</a> and <a href="https://github.com/blueimp/jQuery-File-Upload/wiki">documentation</a> for more information.</li>
    <li>Built with <a href="https://jqueryui.com/">jQuery UI</a>.</li>
</ul>
<!-- The blueimp Gallery widget -->
<div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls" data-filter=":even" style="display: none;">
    <div class="slides" style="width: 2584px;"></div>
    <h3 class="title">7574a151gw1en95uuifu7j20m80et0z0.jpg</h3>
    <a class="prev">‹</a>
    <a class="next">›</a>
    <a class="close">×</a>
    <a class="play-pause"></a>
    <ol class="indicator"></ol>
</div>
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
<script>
// Initialize the jQuery UI theme switcher:
$('#theme-switcher').change(function () {
    var theme = $('#theme');
    theme.prop(
        'href',
        theme.prop('href').replace(
            /[\w\-]+\/jquery-ui.css/,
            $(this).val() + '/jquery-ui.css'
        )
    );
});
</script>
<!-- The XDomainRequest Transport is included for cross-domain file deletion for IE 8 and IE 9 -->
<!--[if (gte IE 8)&(lt IE 10)]>
<script src="js/cors/jquery.xdr-transport.js"></script>
<![endif]-->
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-41071247-1', 'blueimp.github.io');
ga('send', 'pageview');
</script>


</body></html>