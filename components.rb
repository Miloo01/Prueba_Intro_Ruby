require_relative 'request'

api = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key='
key = '5WD4J4YMTZHPm4F48IPtd2EX9bqOfetqri2uvS5L'


def buid_web_page(hash)

     index = '

          <html>
          <head> 
          <h1 style="background-color:#993300; display:flex; height:150px; justify-content:center;align-items:center; font-size:2rem;"> NASA OFFICIAL SITE </h1>

          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
          </head>

          <body> <h3 style="text-align:center; margin-bottom:5rem;margin-top:3rem;"> CURIOSITY PHOTOS </h3>
          <ul> '

          hash["photos"].each do |imagen|
               index += "<li style='text-align:center;background-color:khaki'>
               <img src = '#{imagen["img_src"]}'></li>"
          end    

     index += "

     </ul>
     <footer> 
          <p style='background-color:#993300; display:flex; align-items:center;justify-content:center; height:200px; font-size:2rem'> NASA API'S OFFICIAL SITE</p> 
     </footer>
     
     </body>
     </html>"
    
end     




data = request(api,key)

File.write('./index.html', buid_web_page(data))


