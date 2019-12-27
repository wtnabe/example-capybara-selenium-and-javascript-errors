# coding: utf-8
require 'sinatra'
require 'sinatra/content_for'
require 'sinatra/reloader' if development?

get '/' do
  content_for(:title) { 'example for catching JavaScript console error from Selenium' }
  erb :index
end

__END__

@@layout
<html>
  <head>
    <title><%= yield_content(:title) %></title>
  </head>
  <body>
   <%= yield %>
  </body>
</html>

@@index
<h1>Heading 1</h1>
<script>
Foo
</script>
