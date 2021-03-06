<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css2?family=Exo&display=swap" rel="stylesheet">
        <meta charset="UTF-8">
        <meta name="author" content="nhomble">
        <meta name="description" content="nhomble's feed">
        <link rel="apple-touch-icon" sizes="180x180" href="resources/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="resources/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="resources/favicon-16x16.png">
        <link rel="manifest" href="resources/site.webmanifest">
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
	    <p>{{with .NowIn "America/New_York"}}{{.Format "01/02 03:04:05 pm"}}{{end}}</p>
	    {{range .Feeds}}
	    <h4>{{.Org}}</h4>
		<ul>{{range .Entries}}
			<li><a href="{{.Link}}">{{.Article}}</a></li>
		{{end}}</ul>
		{{end}}
		<p><a href="https://github.com/nhomble/fdmi">src</a></p>
	</body>
</html>