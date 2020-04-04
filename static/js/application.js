$(function(){

    // Tools
    $('.select2').select2({
        theme: 'bootstrap4'
    })

    $('.select2mt').select2({
        theme: 'bootstrap4',
        closeOnSelect : false,
        tags: true
    })

    $(".select2all").click(function(){
        if($("#checkbox").is(':checked') ){
            $("#e1 > option").prop("selected","selected");
            $("#e1").trigger("change");
        }else{
            $("#e1 > option").removeAttr("selected");
            $("#e1").trigger("change");
        }
    });


    $(".tab-ajax").click(function(e){
        e.preventDefault();
        e.stopImmediatePropagation()
        var $this = $(this),
            loadurl = $this.attr('href'),
            targ = $this.attr('data-target');

        $.get(loadurl, function(data) {
            $(targ).html(data);
        });
        $this.tab('show');
    });

    $(".tab-iframe").click(function(e){
        var $this = $(this),
            loadurl = $this.attr('href'),
            targ = $this.attr('data-src');

        $.get(loadurl, function(data) {
            $(targ).html(data);
        });
        $this.tab('show');
    });


    $(".datetimePicker").datetimePicker();
    $(".datePicker").datePicker();

    //Component
    $('.qs-account').click(function (e) {
        var elm = $(this);
        var top = elm.offset().top + 32;
        var url = "/index/bookings/qsearch"
        var title = "Select Booking"
        popup_select_list(title,top,url)
    });

    $('.qs-lead').click(function (e) {
        var elm = $(this);
        var top = elm.offset().top + 32;
        var url = "/index/leads/qsearch"
        var title = "Select Lead"
        popup_select_list(title,top,url)
    });

    $('.qs-contact').click(function (e) {
        var elm = $(this);
        var top = elm.offset().top + 32;
        var account_id = $("#account_id").val()
        var url = "/index/contacts/qsearch"
        var title = "Select Contact"
        popup_select_list(title,top,url)
    });


    $('.select-account').click(function (e) {
        var elm = $(this);
        var url = "/index/bookings/qsearch"
        var title = "Select Booking"
        select_list(title,url)
    });

    $('.select-lead').click(function (e) {
        var elm = $(this);
        var url = "/index/leads/qsearch"
        var title = "Select Lead"
        select_list(title,url)
    });

    $('.select-contact').click(function (e) {
        var elm = $(this);
        var top = elm.offset().top + 32;
        var account_id = $("#account_id").val()
        var url = "/index/contacts/qsearch"
        if(account_id != ""){
            url += "?account_id="+account_id
        }
        var title = "Select Contact"
        select_list(title,top,url)
    });

    $('.layer-close').click(function () {
        var index = parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    })

})

function layer_close() {
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.close(index);
}

function popup_select_list(title,top,url){
    layer.open({
        type: 2,
        title: title,
        fix: true,
        shade: 0,
        resize: true,
        maxmin: true,
        offset: [top],
        area: $(window).width() < 630 ? ['90%', '80%'] : ['580px', '420px'],
        content: url
    });
}

function select_list(title,url){
    layer.open({
        type: 2,
        title: title,
        fix: true,
        shade: 0,
        resize: true,
        maxmin: true,
        area: $(window).width() < 630 ? ['90%', '80%'] : ['580px', '420px'],
        content: url
    });
}

$.fn.datetimePicker = function() {
    $(this).on("apply.daterangepicker", function(e, picker) {
        picker.element.val(picker.startDate.format('YYYY-MM-DD HH:mm'));
    });
    return $(this).daterangepicker({
        singleDatePicker: true,
        timePicker: true,
        autoUpdateInput: false,
        locale: {
            format: 'YYYY-MM-DD HH:mm'
        }
    });
};

$.fn.datePicker = function() {
    $(this).on("apply.daterangepicker", function(e, picker) {
        picker.element.val(picker.startDate.format('YYYY-MM-DD'));
    });
    return $(this).daterangepicker({
        singleDatePicker: true,
        autoUpdateInput: false,
        //showDropdowns: true,
        locale: {
            format: 'YYYY-MM-DD'
        }
    });
};

$('.switch-tools').click(function(){
    $(".tools-card").toggleClass("collapsed");
    $(".list-card").toggleClass("col-md-12 col-md-10");
});


function activityWin(url){
    layer.open({
        type: 2,
        title: 'Activity',
        fix: true,
        shade: 0,
        resize: true,
        maxmin: true,
        offset: [72],
        area: win_screen() < 2 ? ['90%', '80%'] : ['580px', '520px'],
        content: url
    });
}

function bookingWin(url){
    layer.open({
        type: 2,
        title: 'Booking Detail',
        fix: true,
        shade: 0,
        resize: true,
        maxmin: true,
        offset: [72],
        area: win_screen() < 2 ? ['90%', '80%'] : ['900px', '650px'],
        content: url
    });
}



function emailWin(url){
    layer.open({
        type: 2,
        title: 'Email',
        fix: true,
        shade: 0,
        resize: true,
        maxmin: true,
        area: win_screen() < 1 ? ['90%', '80%'] : ['800px', '550px'],
        content: url
    });
}


function win_screen() {
    //获取当前窗口的宽度
    var width = $(window).width();
    if (width > 1200) {
        return 3;   //大屏幕
    } else if (width > 992) {
        return 2;   //中屏幕
    } else if (width > 768) {
        return 1;   //小屏幕
    } else {
        return 0;   //超小屏幕
    }
}



//判断日期是否是全天
function getAllDay(start, end) {
    var start_his = start.indexOf("00:00:00");
    var end_his = end.indexOf("00:00:00");
    if (start_his == -1 || end_his == -1) {
        return false;
    } else {
        return true;
    }
}

$.fn.serializeFiles = function() {
    var form = $(this),formData = new FormData()
    var formParams = form.serializeArray();

    $.each(form.find('input[type="file"]'), function(i, tag) {
        $.each($(tag)[0].files, function(i, file) {
            formData.append(tag.name, file);
        });
    });

    $.each(formParams, function(i, val) {
        formData.append(val.name, val.value);
    });

    return formData;
};