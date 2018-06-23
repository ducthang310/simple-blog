var _app = {
    init: function () {
        // this.initSelect();
    },

    updatePostPreview: function (rawElmId, previewElmId) {
        var html = this.textToMD($('#' + rawElmId).val())
        $('#' + previewElmId).html(html);
    },

    textToMD: function (text) {
        var converter = new showdown.Converter();

        return converter.makeHtml(text);
    }
};


$(document).ready(function () {
    _app.init();
});


