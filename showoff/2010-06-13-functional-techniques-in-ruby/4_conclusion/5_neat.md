!SLIDE smaller

# also, this is neat

    !!! 5
    %html
      %head
        %script(src='jquery.js')
        :javascript
          $(function(){ $('h1').click(function(){$.post('/');})});
        :css
          h1 { height: 100em }
      %body
        %h1 play

    %w(rubygems sinatra haml).map{|x|require x}
    get('/'){haml :index}
    post('/'){`osascript -e 'tell app "Keynote" to start slideshow'`}
