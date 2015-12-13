<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8'>
    <link rel="stylesheet" href="https://c7.se/css/main.css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet" type="text/css"> 
    <style>
     body {
       font-family: 'Lato', sans-serif;
       background: #FAFAFA;
       color: #2c3e50;
       border-top: 4px solid #42A5F5;
     }
     #list { width: 100%; }
     a { color: #42A5F5 }
     a:hover { text-decoration: none; }
     th,td {
       border-color: #eee;
       padding: 0.5em 0.8em;
     }
     .path {
       margin-top: 0.6em;
       margin-bottom: 1.1em;
       font-weight: bold;
       font-size: 1.3em;
       color: #333;
     }
     .logo {
          display: block;
          padding: 1.4em 0em;
          background: #F3F3F3;
          margin-bottom: 1.5em;
     }
     .logo img {
        width: 50px;
        height: 50px;
        vertical-align: middle;
        margin: 0 10px 0 -15px;
     }
    </style>
  </head>
  <body>
    <a href="/" class="logo">
      <div class="container">
      	<img src="https://avatars2.githubusercontent.com/u/695951?v=3&s=50" alt="Minio" />
	Minio Download Page
      </div>
    </a>
    <div class="container">
      <table id="list" cellpadding="0.1em" cellspacing="0">
        <thead>
          <tr>
            <th>File Name</th>
            <th>File Size</th>
            <th>Date</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>
              {{if .CanGoUp}}
              <a href="..">Parent directory/</a>
              {{else}}
              Parent directory/
              {{end}}
            </td>
            <td>-</td>
            <td>-</td>
          </tr>
          {{range .Items}}
          {{if .IsDir}}
            <tr>
              <td><a href="{{.URL}}">{{.Name}}/</a></td>
              <td>-</td>
              <td>{{.HumanModTime "2006-01-02 15:04"}}</td>
            </tr>
            {{end}}
            {{end}}
            {{range .Items}}
            {{if not .IsDir}}
              {{if ne .Name "CaddyFile" }}
              <tr>
                <td><a href="{{.URL}}">{{.Name}}</a></td>
                <td>{{.HumanSize}}</td>
                <td>{{.HumanModTime "2006-01-02 15:04"}}</td>
              </tr>
              {{end}}
              {{end}}
              {{end}}
        </tbody>
      </table>
    </div>
  </body>
</html>
