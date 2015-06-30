$(document).ready(function () {
	// text editor
	$('#summernote').summernote();
//			$('textarea.note-codable').attr('name', 'editorTextArea');
//			$('textarea.note-codable').attr('id', 'editorTextArea');
//			
	// sortable table
	$('#sorttable').tablesorter();

	// date picker with date format
	$('#datepicker').datepicker({dateFormat: 'yy-mm-dd'});

	// editor author edit button
	$('#changeEditor').click(function () {
		$('#author').prop('readonly', false);
	});

	// document preview
	loadDocumentPreview();

});

function loadDocumentPreview() {
	// load preview
	var preview = $('.doc-preview');
	var textarea = $('.doc-edit-textarea');
	var currentFile = null;
	var content = null;
	var edit = $('#doc-edit');
	var save = $("#doc-save");
	var discard = $("#doc-discard");
	$('.doc-list-item').click(function () {
		currentFile = $(this).text();
		preview.load("doc/" + currentFile);
		$('#currentFile').val(currentFile);
		preview.load("doc/" + currentFile);
		textarea.prop("readonly", true);
		textarea.val("");
		save.addClass("hidden");
		discard.addClass("hidden");
		edit.removeClass("hidden");
	});

	// start manipulate documents
	edit.click(function () {
		// make other options available
		content = preview.text();
		textarea.removeAttr("readonly");
		textarea.val(content);
		save.removeClass("hidden");
		discard.removeClass("hidden");
		edit.addClass("hidden");
	});

	// cancel manipulation
	discard.click(function () {
		preview.load("doc/" + currentFile);
		textarea.prop("readonly", true);
		textarea.val("");
		save.addClass("hidden");
		discard.addClass("hidden");
		edit.removeClass("hidden");
	});
}
