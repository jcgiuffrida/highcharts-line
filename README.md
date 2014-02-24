Chart showing consumer price indices for Venezuela, broken out by category of goods. 

highcharts.js allows "drilldown" into subcategories for bar charts but not line charts. I used click events to build out this feature. Inspiration from http://jsfiddle.net/mv9FV/6/.

User can click a category to redraw the chart with all subcategories, and tooltips signal to the user when this is possible. Chart can be zoomed along the x-axis. Note data is provided separately and "subseries" contains subcategory data. Data can also be provided by JSON.
