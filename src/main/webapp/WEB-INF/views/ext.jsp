<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Stateful Array Grid Example</title>
    <link rel="stylesheet" type="text/css" href="resources/css/ext-all.css">

    <!-- page specific -->

    <style type="text/css">
        /* style rows on mouseover */
        .x-grid-row-over .x-grid-cell-inner {
            font-weight: bold;
        }
        /* shared styles for the ActionColumn icons */
        .x-action-col-cell img {
            height: 16px;
            width: 16px;
            cursor: pointer;
        }
        /* custom icon for the "buy" ActionColumn icon */
        .x-action-col-cell img.buy-col {
            background-image: url(../shared/icons/fam/accept.gif);
        }
        /* custom icon for the "alert" ActionColumn icon */
        .x-action-col-cell img.alert-col {
            background-image: url(../shared/icons/fam/error.gif);
        }
    </style>
	<script src="resources/js/ext-all-debug.js"></script>
    <script src="resources/js/array-grid.js"></script>
</head>
<body>
    <h1>Stateful Array Grid Example</h1>
    <p>This example shows how to create a grid from Array data.</p>
    <p>The grid is stateful so you can move or hide columns, reload the page, and come
    back to the grid in the same state you left it in.</p>

    <p>Note that the js is not minified so it is readable. See <a href="array-grid.js">array-grid.js</a>.</p>
    <div id="grid-example"></div>
</body>
</html>