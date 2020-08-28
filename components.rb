require_relative 'request'

api = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key='
key = '5WD4J4YMTZHPm4F48IPtd2EX9bqOfetqri2uvS5L'


def buid_web_page(hash)

     index = '

          <html>
          <head> 
          <h1 style="background-color:brown; display-flex:center;"> NASA OFFICIAL SITE </h1>
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
          </head>
          <body> <h3 class="align-text:center;"> CURIOSITY PHOTOS </h3>
          <ul> '

          hash["photos"].each do |imagen|
               index += "<li><img src = '#{imagen["img_src"]}'></li>"
          end    

     index += "

     </ul>
     <footer> 
          <p style='background-color:brown; display-flex:center; align-items:center;justify-content:center'> NASA API'S OFFICIAL SITE</p> 
     </footer>
          <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
          <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
          <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
     </body>
     </html>"
    
end     




data = request(api,key)

File.write('./index.html', buid_web_page(data))


