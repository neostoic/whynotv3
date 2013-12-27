<!DOCTYPE html>
<?php  
/***Creating a cookie***/  
$name = 'clientname';  
$value = 'Peter Griffin';  
//time() gives current time in seconds, and we add 60 seconds * 30 = 30 minutes  
//so this cookie expires in 30 minutes.  
//You may notice that the expire date is in seconds, PHP translates this to  
//the correct format internally!  
$httponly = true; //make cookie available only for the HTTP protocol (and not for JavaScript)  
setcookie($name, $value);

echo $_COOKIE['name'];
?>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>whynot</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="css/stylish-portfolio.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
  </head>

  <body>

    <!-- Side Menu -->
    <a id="menu-toggle" href="#" class="btn btn-primary btn-lg toggle"><i class="fa fa-bars"></i></a>
    <div id="sidebar-wrapper">
      <ul class="sidebar-nav">
        <a id="menu-close" href="#" class="btn btn-default btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
        <li class="sidebar-brand"><a href="http://startbootstrap.com">whynot</a></li>
        <li><a href="#top">Home</a></li>
        <li><a href="#about">Try It Out</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#contact">Contact</a></li>
      </ul>
    </div>
    <!-- /Side Menu -->
  
    <!-- Full Page Image Header Area -->
    <div id="top" class="header">
      <div class="vert-text">
        <h1>whynot</h1>
        <h3>The <em>everyday</em> app, from <em>restaurants</em> to <em>gigs</em>, we provide</br> a concise list of <em>things to do,</em> specifically <em>tailored to you.</em></h3>
        <a href="#about" class="btn btn-default btn-lg">Try It Out</a>
        <a href="#services" class="btn btn-default btn-lg">Find Out More</a>
      </div>
    </div>
    <!-- /Full Page Image Header Area -->
  
    <!-- Intro -->
    <div id="about" class="intro">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-offset-3 text-center">
            <h2>whynot try it out!</h2>
            <form role = 'form' method=POST action="login.php">
              <div class = 'form-group'>
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" autocomplete=on name = user class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                <?php
                $mycookie = $_COOKIE['clientname'];
                echo $mycookie;
                ?>
              </br>
              <label for="mood">I'm in the mood for...</label>
              <input name=cat id='mood' class= 'form-control' placeholder="I'm in the mood for...">
              </br>
              <label for='place'>In the area of... (leave blank to use your location)</label>
              <!--<input type="checkbox" name="optionsRadios" id="optionsRadios1" value="nearme">
                Me! -->
              </label>
              <input name=place id='place' class='form-control' placeholder='In the area of...'>
            <input type=hidden id=latitude name=lat>
            <input type=hidden id=longitude name=long>
          </div>
          <button type=submit class="btn btn-default">Submit</button>
        </form>
      </div>
        </div>
      </div>
    </div>
    <!-- /Intro -->
  
    <!-- Services -->
    <div id="services" class="services">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-md-offset-4 text-center">
            <h2>Our Services</h2>
            <hr>
          </div>
        </div>
        <div class="row">
          <div class="col-md-2 col-md-offset-2 text-center">
            <div class="service-item">
              <i class="service-icon fa fa-rocket"></i>
              <h4>Spacecraft Repair</h4>
              <p>Did your navigation system shut down in the middle of that asteroid field? We can repair any dings and scrapes to your spacecraft!</p>
            </div>
          </div>
          <div class="col-md-2 text-center">
            <div class="service-item">
              <i class="service-icon fa fa-magnet"></i>
              <h4>Problem Solving</h4>
              <p>Need to know how magnets work? Our problem solving solutions team can help you identify problems and conduct exploratory research.</p>
            </div>
          </div>
          <div class="col-md-2 text-center">
            <div class="service-item">
              <i class="service-icon fa fa-shield"></i>
              <h4>Blacksmithing</h4>
              <p>Planning a time travel trip to the middle ages? Preserve the space time continuum by blending in with period accurate armor and weapons.</p>
            </div>
          </div>
          <div class="col-md-2 text-center">
            <div class="service-item">
              <i class="service-icon fa fa-pencil"></i>
              <h4>Pencil Sharpening</h4>
              <p>We've been voted the best pencil sharpening service for 10 consecutive years. If you have a pencil that feels dull, we'll get it sharp!</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /Services -->

    <!-- Callout -->
    <div class="callout">
      <div class="vert-text">
        <h1>A Dramatic Text Area</h1>
      </div>
    </div>
    <!-- /Callout -->

    <!-- Portfolio -->
    <div id="portfolio" class="portfolio">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-md-offset-4 text-center">
            <h2>Our Work</h2>
            <hr>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4 col-md-offset-2 text-center">
            <div class="portfolio-item">
              <a href="#"><img class="img-portfolio img-responsive" src="img/portfolio-1.jpg"></a>
              <h4>Cityscape</h4>
            </div>
          </div>
          <div class="col-md-4 text-center">
            <div class="portfolio-item">
              <a href="#"><img class="img-portfolio img-responsive" src="img/portfolio-2.jpg"></a>
              <h4>Is That On Fire?</h4>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4 col-md-offset-2 text-center">
            <div class="portfolio-item">
              <a href="#"><img class="img-portfolio img-responsive" src="img/portfolio-3.jpg"></a>
              <h4>Stop Sign</h4>
            </div>
          </div>
          <div class="col-md-4 text-center">
            <div class="portfolio-item">
              <a href="#"><img class="img-portfolio img-responsive" src="img/portfolio-4.jpg"></a>
              <h4>Narrow Focus</h4>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /Portfolio -->

    <!-- Call to Action -->
    <div class="call-to-action">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-offset-3 text-center">
            <h3>The buttons below are impossible to resist.</h3>
            <a href="#" class="btn btn-lg btn-default">Click Me!</a>
            <a href="#" class="btn btn-lg btn-primary">Look at Me!</a>
          </div>
        </div>
      </div>
    </div>
    <!-- /Call to Action -->

    <!-- Map -->
    <div id="contact" class="map">
      <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a></small></iframe>
    </div>
    <!-- /Map -->
    
    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-offset-3 text-center">
            <ul class="list-inline">
              <li><i class="fa fa-facebook fa-3x"></i></li>
              <li><i class="fa fa-twitter fa-3x"></i></li>
              <li><i class="fa fa-dribbble fa-3x"></i></li>
            </ul>
            <div class="top-scroll">
              <a href="#top"><i class="fa fa-circle-arrow-up scroll fa-4x"></i></a>
            </div>
            <hr>
            <p>Copyright &copy; Company 2013</p>
          </div>
        </div>
      </div>
    </footer>
    <!-- /Footer -->

    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script src="autocomplete.js"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">

    <!-- Custom JavaScript for the Side Menu and Smooth Scrolling -->
    <script>
        $("#menu-close").click(function(e) {
            e.preventDefault();
            $("#sidebar-wrapper").toggleClass("active");
        });
    </script>
    <script>
        $("#menu-toggle").click(function(e) {
            e.preventDefault();
            $("#sidebar-wrapper").toggleClass("active");
        });
    </script>
    <script>
      $(function() {
        $('a[href*=#]:not([href=#])').click(function() {
          if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') 
            || location.hostname == this.hostname) {

            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
            if (target.length) {
              $('html,body').animate({
                scrollTop: target.offset().top
              }, 1000);
              return false;
            }
          }
        });
      });
    </script>
    <script src="location.js"></script>

  </body>

</html>