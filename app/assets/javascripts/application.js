// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require select2
//= require select2_locale_zh-CN
//= require turbolinks
//= require_tree .
function remove_fields(link) {

        $(link).siblings('input[id$="destroy"]').val(true);
        $(link).closest("tr").hide();
}
function add_fields(link, association, content) {
  new_id = new Date().getTime();
  regexp = new RegExp("new_" + association, "g");
  $(content.replace(regexp, new_id)).insertAfter('tbody tr:last-child');
  $('select').not('select[name="prescri[gender]"]').select2({ width: 'resolve' })
}
$(document).keydown(function(e)    
    {    
        switch(e.which)    
        {     
            case 37:    $('a.btn.btn-success').click();
                        $('tr').last().children().first().children('div').children('input').focus(); 
                        break;
            case 39:    $(document.activeElement).parent().parent().siblings().last().children('a').click();
                        $('tr:visible').last().children().first().children('div').children('input').focus();
                        break;
            case 38:    $('#prescri_patient_name').focus();
                        break;

        }    
    });  