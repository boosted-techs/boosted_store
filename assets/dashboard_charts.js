
function dashboard_graph(data) {
    var ctx = document.getElementById('project-general-stats');
    new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Submitted', 'In progress', 'Completed', 'Cancelled'],
            datasets: [{
                label: ['projects'],
                data: [data[0], data[1], data[2], data[3]],
                backgroundColor: [
                    'rgba(0, 0, 0, 1)',
                    'rgba(54, 162, 235, 1)',
                    '#53c653',
                    '#ff5c33'
                ],
                borderColor: [
                    'rgba(0, 0, 0, 1)',
                    'rgba(54, 162, 235, 1)',
                    '#53c653',
                    '#ff5c33'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
}