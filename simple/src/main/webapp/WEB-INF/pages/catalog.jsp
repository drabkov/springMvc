<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
    <title>Dynatree - Example</title>

    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/jquery-ui.custom.js" type="text/javascript"></script>
    <script src="js/jquery.cookie.js" type="text/javascript"></script>

    <link href="css/ui.dynatree.css" rel="stylesheet" type="text/css">
    <script src="js/jquery.dynatree.js" type="text/javascript"></script>

    <!-- (Irrelevant source removed.) -->

    <script type="text/javascript">
        $(function(){
            $("#tree").dynatree({
                onActivate: function(node) {
                    $("#echoActive").text(node.data.title);
                },
                onDeactivate: function(node) {
                    $("#echoActive").text("-");
                }
            });
        });
    </script>
</head>

<body class="example">


<div id="tree">
    <ul style="display:none">
        <li id="key1" title="Look, a tool tip!">item1 with key and tooltip
        <li id="key2" class="selected">item2: selected on init
        <li id="key3" class="folder">Folder with some children
            <ul>
                <li id="key3.1">Sub-item 3.1
                <li id="key3.2">Sub-item 3.2
            </ul>

        <li id="key4" class="expanded">Document with some children (expanded on init)
            <ul>
                <li id="key4.1">Sub-item 4.1
                <li id="key4.2">Sub-item 4.2
            </ul>
    </ul>
</div>

</body>
</html>
