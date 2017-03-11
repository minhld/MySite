<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<%
		String webRootPath = request.getContextPath();
	%>
    <title>My Blog</title>

    <!-- Bootstrap Core CSS -->
    <link href="<%=webRootPath %>/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Bootstrap External Cores -->
    <link href="<%=webRootPath %>/css/editor/bootstrap-combined.no-icons.min.css" rel="stylesheet">
    <link href="<%=webRootPath %>/css/editor/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">

	<!--  
    <link href="<%=webRootPath %>/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
	-->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	
	<!-- Custom CSS -->
    <link href="<%=webRootPath %>/css/editor/editor.css" rel="stylesheet">

</head>

<body>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <!-- Pager -->
                <ul class="pager">
                    <li class="next">
                        <a href="<%=webRootPath %>/blogs">Home &rarr;</a>
                    </li>
                </ul>

				<!-- Toolbar -->
				<div class="btn-toolbar" data-role="editor-toolbar"
					data-target="#editor">
					<div class="btn-group">
						<a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i
							class="icon-font"></i><b class="caret"></b></a>
						<ul class="dropdown-menu">
						</ul>
					</div>
					<div class="btn-group">
						<a class="btn dropdown-toggle" data-toggle="dropdown"
							title="Font Size"><i class="icon-text-height"></i>&nbsp;<b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
							<li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
							<li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
						</ul>
					</div>
					<div class="btn-group">
						<a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i
							class="icon-bold"></i></a> <a class="btn" data-edit="italic"
							title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a> <a
							class="btn" data-edit="strikethrough" title="Strikethrough"><i
							class="icon-strikethrough"></i></a> <a class="btn"
							data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i
							class="icon-underline"></i></a>
					</div>
					<div class="btn-group">
						<a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i
							class="icon-list-ul"></i></a> <a class="btn"
							data-edit="insertorderedlist" title="Number list"><i
							class="icon-list-ol"></i></a> <a class="btn" data-edit="outdent"
							title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>
						<a class="btn" data-edit="indent" title="Indent (Tab)"><i
							class="icon-indent-right"></i></a>
					</div>
					<div class="btn-group">
						<a class="btn" data-edit="justifyleft"
							title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
						<a class="btn" data-edit="justifycenter"
							title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
						<a class="btn" data-edit="justifyright"
							title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
						<a class="btn" data-edit="justifyfull"
							title="Justify (Ctrl/Cmd+J)"><i class="icon-align-justify"></i></a>
					</div>
					<div class="btn-group">
						<a class="btn dropdown-toggle" data-toggle="dropdown"
							title="Hyperlink"><i class="icon-link"></i></a>
						<div class="dropdown-menu input-append">
							<input class="span2" placeholder="URL" type="text"
								data-edit="createLink" />
							<button class="btn" type="button">Add</button>
						</div>
						<a class="btn" data-edit="unlink" title="Remove Hyperlink"><i
							class="icon-cut"></i></a>

					</div>

					<div class="btn-group">
						<a class="btn" title="Insert picture (or just drag & drop)"
							id="pictureBtn"><i class="icon-picture"></i></a> <input
							type="file" data-role="magic-overlay" data-target="#pictureBtn"
							data-edit="insertImage" />
					</div>
					<div class="btn-group">
						<a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i
							class="icon-undo"></i></a> <a class="btn" data-edit="redo"
							title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
					</div>
					<input type="text" data-edit="inserttext" id="voiceBtn"
						x-webkit-speech="">
				</div>


				<div id="editor">
                	<!-- Editor goes here -->
                	
                </div>
            </div>
        </div>
    </div>

    <hr>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <ul class="list-inline text-center">
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                    </ul>
                    <p class="copyright text-muted">Copyright &copy; Minh Le 2017</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="<%=webRootPath %>/js/jquery-1.11.0.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%=webRootPath %>/bootstrap/js/bootstrap.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="<%=webRootPath %>/js/jqBootstrapValidation.js"></script>
    <script src="<%=webRootPath %>/js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="<%=webRootPath %>/js/clean-blog.min.js"></script>
	
	<!-- Editor -->
	<script src="<%=webRootPath %>/js/bootstrap-wysiwyg.js"></script>
	
</body>

<script>
	$(function() {
		function initToolbarBootstrapBindings() {
			var fonts = [ 'Serif', 'Sans', 'Arial', 'Arial Black', 'Courier',
					'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact',
					'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
					'Times New Roman', 'Verdana' ], fontTarget = $(
					'[title=Font]').siblings('.dropdown-menu');
			$
					.each(
							fonts,
							function(idx, fontName) {
								fontTarget
										.append($('<li><a data-edit="fontName ' + fontName +'" style="font-family:\''+ fontName +'\'">'
												+ fontName + '</a></li>'));
							});
			$('a[title]').tooltip({
				container : 'body'
			});
			$('.dropdown-menu input').click(function() {
				return false;
			}).change(
					function() {
						$(this).parent('.dropdown-menu').siblings(
								'.dropdown-toggle').dropdown('toggle');
					}).keydown('esc', function() {
				this.value = '';
				$(this).change();
			});

			$('[data-role=magic-overlay]').each(
					function() {
						var overlay = $(this), target = $(overlay
								.data('target'));
						overlay.css('opacity', 0).css('position', 'absolute')
								.offset(target.offset()).width(
										target.outerWidth()).height(
										target.outerHeight());
					});
			if ("onwebkitspeechchange" in document.createElement("input")) {
				var editorOffset = $('#editor').offset();
				$('#voiceBtn').css('position', 'absolute').offset({
					top : editorOffset.top,
					left : editorOffset.left + $('#editor').innerWidth() - 35
				});
			} else {
				$('#voiceBtn').hide();
			}
		}
		;
		function showErrorAlert(reason, detail) {
			var msg = '';
			if (reason === 'unsupported-file-type') {
				msg = "Unsupported format " + detail;
			} else {
				console.log("error uploading file", reason, detail);
			}
			$(
					'<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>'
							+ '<strong>File upload error</strong> '
							+ msg
							+ ' </div>').prependTo('#alerts');
		}
		;
		initToolbarBootstrapBindings();
		$('#editor').wysiwyg({
			fileUploadError : showErrorAlert
		});
		window.prettyPrint && prettyPrint();
	});
</script>
</html>
