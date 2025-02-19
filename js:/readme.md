document.addEventListener('DOMContentLoaded', function() {
    const cy = cytoscape({
        container: document.getElementById('cytoscape-container'),
        
        elements: [
            { data: { id: 'a' } },
            { data: { id: 'b' } },
            { data: { id: 'c' } },
            { data: { source: 'a', target: 'b' } },
            { data: { source: 'b', target: 'c' } }
        ],
        
        style: [
            {
                selector: 'node',
                style: {
                    'background-color': '#666',
                    label: 'data(id)'
                }
            },
            {
                selector: 'edge',
                style: {
                    'width': 3,
                    'line-color': '#ccc'
                }
            }
        ]
    });
});
