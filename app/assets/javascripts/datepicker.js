var datetime_options = {
  format: "dd/mm/yyyy",
  enableOnReadonly: true,
  orientation: "auto",
  autoclose: true,
  todayBtn: "linked",
  showOnFocus: false
};

$(function() {
  $(document).on("click", "input.datepicker", function(){
    $(this).datepicker(datetime_options).datepicker("show");
  });
});
