// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets.js
//= require dataTables/datatables.min.js
//= require metisMenu/jquery.metisMenu.js
//= require pace/pace.min.js
//= require peity/jquery.peity.min.js
//= require slimscroll/jquery.slimscroll.min.js
//= require inspinia.js
//= require chosen/chosen.jquery.js
//= require datapicker/bootstrap-datepicker.js
//= require touchspin/jquery.bootstrap-touchspin.min.js
$(function() {
    $(".project-statistic-progress-bar").click(function (){
        var projectId = this.id;
        $.post("/employee/reports/project_info", {user_project_plan_id: projectId}, function (data) {
            $('#projectInfo').empty();
            $('#projectInfo').append(data['project_plan']);
            $('#projectStatisticPopup').modal('show');
        });
    });
});
