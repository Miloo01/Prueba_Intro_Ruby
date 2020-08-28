require_relative 'request'

api = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key='
key = '5WD4J4YMTZHPm4F48IPtd2EX9bqOfetqri2uvS5L'


def buid_web_page(hash)

     index = '
          <!DOCTYPE html>
          <html lang="es">

          <head> 
               <meta charset="UTF-8">
               <meta name="viewport" content="width=device-width, initial-scale=1.0">

               <h1 style="background-image:url(https://chematierra.mx/files/5814/8650/5647/Marte.png);background-size:cover;background-repeat:round;height:400px; display:flex; justify-content:center;align-items:center; font-size:2rem;"> NASA OFFICIAL SITE </h1>

               <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
          </head>

          <body> 

               <h3 style="text-align:center; margin-bottom:unset;margin-top:1rem;"> CURIOSITY PHOTOS </h3>
               
               <ul> '

                    hash["photos"].each do |imagen|
                         index += "<li style='text-align:center;background-color:khaki;padding:50px;'>
                         <img src = '#{imagen["img_src"]}'></li>"
                    end    

          index += "

               </ul>
          <footer> 
               <p style='background-image:url(https://www.rockandpop.cl/wp-content/uploads/2018/09/planeta-marte.jpg);background-size:cover;background-repeat:round; display:flex; align-items:center;justify-content:center; height:300px; font-size:2rem'> NASA API'S OFFICIAL SITE</p> 
          </footer>
     
          </body>
     </html>"
    
end     

#def photos_count(hash)

     #if ["photos"].each do
          
     #end

         

#end     




data = request(api,key)

File.write('./index.html', buid_web_page(data))


