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
	    {{range .Feeds}}
	    <h4>{{.Org}}</h4>
		<ul>{{range .Entries}}
			<li><a href="{{.Link}}">{{.Article}}</a></li>
		{{end}}</ul>
		{{end}}
	</body>
</html>