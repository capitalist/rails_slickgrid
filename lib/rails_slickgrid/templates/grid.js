$(function() {
  var grid;
  grid = new Slick.Grid($("#slickgrid"), 'DATA_MARKER', 'COLUMNS_MARKER', {
    enableCellNavigation: false,
    enableColumnReorder: false
  });
  return $("#slickgrid").show();
});