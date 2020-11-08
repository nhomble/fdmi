<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css2?family=Exo&display=swap" rel="stylesheet">
        <meta charset="UTF-8">
        <meta name="author" content="nhomble">
        <meta name="description" content="nhomble's feed">
        <title>fdmi</title>
    </head>
    <style>
        * {
            background: #F2F8FF;
            font-family: 'Exo', sans-serif;
            list-style-type: none;
        }
        li {
            padding-top: 1em
        }
    </style>
	<body>
	    <h1>feed mirror</h1>
	    <p><a href="https://github.com/nhomble/fdmi">src</a></p>
		<ul>{{range .Feeds}}
			<li><a href="{{.Link}}">{{.Article}} :: {{.Org}}</a></li>
		{{end}}</ul>
	</body>
</html>