$(function() {
    Morris.Bar({
        element: 'morris-bar-chart',
        data: [{
y: '2013',
a: 0
}],
xkey: 'y',
ykeys: ['a'],
labels: ['Series A'],
hideHover: 'auto',
resize: true
});
});