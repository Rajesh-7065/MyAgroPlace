
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Organic Farming</title>
        <%@include file = "components/common_css_js.jsp" %>
    </head>
    <style>
        body {
            background-image: url('img/Organicbg.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;  
            background-size: cover;
        }
    </style>
    <body>
        <%@include file = "components/navbar.jsp"%>
        <h1 style="font-size:60px; color: white;"><center><b><u>Modern Agricultural Practices</u></b></center></h1>
        <h1 style="font-size:25px; color: white;"><center><b><u>Organic Farming</u></b></center></h1>
        <!--- CAROUSEL --->
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active mt-3">
                  <a href="#aloevera"><center><img class="d-block" src="img/Aloevera.jpg" alt="Aloe Vera" height="500px" width="1450px"></center></a>
                  <div class="carousel-caption">
                      <h3 style="font-size: 50px;"><b>Aloevera</b></h3>
                      <p>Click to know more</p>
                  </div>
              </div>
              <div class="carousel-item mt-3">
                  <a href="#amla"><center><img class="d-block" src="img/Amla.jpg" alt="Second slide" height="500px" width="1450px"></center></a>
                  <div class="carousel-caption">
                      <h3 style="font-size: 50px;"><b>Amla</b></h3>
                      <p>Click to know more</p>
                  </div>
              </div>
              <div class="carousel-item mt-3">
                    <a href="#ashwagandha"><center><img class="d-block" src="img/Ashwagandha.jpg" alt="Third slide" height="500px" width="1450px"></center></a>
                    <div class="carousel-caption">
                      <h3 style="font-size: 50px;"><b>Ashwagandha</b></h3>
                      <p>Click to know more</p>
                  </div>
              </div>
              <div class="carousel-item mt-3">
                    <a href="#tulsi"><center><img class="d-block" src="img/Tulsi.jpg" alt="Third slide" height="500px" width="1450px"></center></a>
                    <div class="carousel-caption">
                      <h3 style="font-size: 50px;"><b>Tulsi</b></h3>
                      <p>Click to know more</p>
                  </div>
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
         </div>
        
        
        
        <!--- HOW TO GROW ORGANIC CROPS --->
        <br><br><br><br>
        <style>
            #rcorners3 {
                border-radius: 15px 50px;
                background: url(img/HeadingBackground.jpg);
                background-position: center;
                background-repeat: no-repeat;
                background-size: 1480px 150px;
                padding: 10px; 
                width: 1480px;
                height: 150px;  
            }
        </style>
            
        <div class="container-fluid mb-3">
            <h1 id="rcorners3" class="font-weight-bold" style="font-size:90px; color:brown"><center>How to grow organic crops?</center><h1>
        </div>
        <a name="aloevera">
            <div class="card ml-5 mb-3" style="width: 90rem;">
                <div class="card-body">
                  <div class="media">
                      <img class="mr-3" src="img/Aloevera.jpg" alt="Generic placeholder image" height="200px" width="300px">
                    <div class="media-body">
                      <h3 class="font-weight-bold mt-0">Aloevera</h3>
                      <p style="font-size: 20px">
                          1. If you want to plant aloe Vera, find a warm location where the plant will receive 8-10 hours of light a day.

                          <br>2. Then use a cactus potting mix or create your own using equal parts soil, sand, and gravel, ensuring that the soil does not hold the standing water.

                          <br>3. When you plant the aloe vera, cover the root ball with soil but do not let the green leaves touch the soil or they may rot.

                          <br>4. Do not water the aloe vera for a few days after planting.
                      </p>
                    </div>
                  </div>
                </div>
            </div>
        </a>
        <a name="amla">
            <div class="card ml-5 mb-3" style="width: 90rem;">
                <div class="card-body">
                  <div class="media">
                      <img class="mr-3" src="img/Amla.jpg" alt="Generic placeholder image" height="200px" width="300px">
                    <div class="media-body">
                      <h3 class="font-weight-bold mt-0">Amla</h3>
                      <p style="font-size: 20px">
                          For Amla plantation, it required well ploughed and organic soil.
                          <br>To bring soil to fine tilth, plough land before planting.
                          <br>Organic fertilizers such as FYM are mixed with the soil.
                          <br>Then nursery beds are prepared 2.5cm deep and 15cm x 15cm size.
                      </p>
                    </div>
                  </div>
                </div>
            </div>
        </a>
        <a name="ashwagandha">
            <div class="card ml-5 mb-3" style="width: 90rem;">
                <div class="card-body">
                  <div class="media">
                      <img class="mr-3" src="img/Ashwagandha.jpg" alt="Generic placeholder image" height="200px" width="300px">
                    <div class="media-body">
                      <h3 class="font-weight-bold mt-0">Ashwagandha</h3>
                      <p style="font-size: 20px">
                        Ashwagandha is usually grown in fields which are not well covered by the irrigation
                        systems. The field on which food crops cannot be taken profitably for the above
                        reason may be used for Ashwangandha cultivation. The soil of the field selected for
                        Ashwagandha cultivation is well pulverized by ploughing, disking and/or harrowing.
                        The field may be then levelled by the application pata.
                      </p>
                    </div>
                  </div>
                </div>
            </div>
        </a>
        <a name="tulsi">
            <div class="card ml-5 mb-3" style="width: 90rem;">
                <div class="card-body">
                  <div class="media">
                      <img class="mr-3" src="img/Tulsi.jpg" alt="Generic placeholder image" height="200px" width="300px">
                    <div class="media-body">
                      <h3 class="font-weight-bold mt-0">Tulsi</h3>
                      <p style="font-size: 20px">
                          For Tulsi plantation, it requires well drained soil.
                          <br>To bring soil to fine tilth, plough and harrow land several times, then FYM is mixed well in soil.
                          <br>Transplantation of Tulsi is done on fine seed bed.
                      </p>
                    </div>
                  </div>
                </div>
            </div>
        </a>
        
        
        <!--- BENEFITS OF ORGANIC FARMING --->
        <br><br><br><br>
        <div class="container-fluid mb-3">
            <h1 id="rcorners3" class="font-weight-bold" style="font-size:90px; color:brown"><center>Benefits of organic farming</center><h1>
        </div>
        <div id="accordion">
            <div class="card ml-5 mr-5 mb-3">
              <div class="card-header" id="headingOne"   style="background-color: tomato">
                <h5 class="text-center mb-0">
                  <button class="btn btn-link text-white" style="font-size: 25px;" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                      <b>Promotion of Biodiversity</b>
                  </button>
                </h5>
              </div>
              <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                <div class="card-body" style="font-size: 25px;">
                    Crop rotation to build soil fertility and raising animals naturally helps promote biodiversity, which promotes greater health across all living species.  As organic farms provide safe havens to wildlife, local ecosystems also improve.
                </div>
              </div>
            </div>
            
            <div class="card ml-5 mr-5 mb-3">
              <div class="card-header" id="headingTwo"   style="background-color: orange">
                <h5 class="text-center mb-0">
                  <button class="btn btn-link collapsed text-white" style="font-size: 25px;" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                      <b>Reduction of Farm Pollution</b>
                  </button>
                </h5>
              </div>
              <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                <div class="card-body" style="font-size: 25px;">
                    While “farm smog” is not real, traditional farming does create its own forms of pollution with respect to runoff from synthetic fertilizer and chemical pesticides, which harm the surrounding areas.  That runoff seeps into the local groundwater supply.  As harmful chemicals are eliminated from use through organic farming, the environment benefits.  Organic farming improves the soil, removes the risk of groundwater pollution and  rehabilitates soil in areas where damage to water supplies has already occurred.
                </div>
              </div>
            </div>
            
            <div class="card ml-5 mr-5 mb-3">
              <div class="card-header" id="headingThree"  style="background-color: dodgerblue">
                <h5 class="text-center mb-0">
                  <button class="btn btn-link collapsed text-white" style="font-size: 25px;" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                      <b>Better-tasting Food</b>
                  </button>
                </h5>
              </div>
              <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                <div class="card-body" style="font-size: 25px;">
                    It’s not your imagination:  organic food truly tastes better than products that come from conventional farms and methods.  Organic produce tends to have lower nitrate content than non-organic varieties, leading to fruits that not only taste sweeter but also have higher antioxidant levels.  Science shows that organic farming isn’t just tastier but better for you, too!
                </div>
              </div>
            </div>
            
            <div class="card ml-5 mr-5 mb-3">
              <div class="card-header" id="heading4"   style="background-color: mediumseagreen">
                <h5 class="text-center mb-0">
                  <button class="btn btn-link text-white" style="font-size: 25px;" data-toggle="collapse" data-target="#collapse4" aria-expanded="true" aria-controls="collapse4">
                      <b>Fewer Environmental Toxins</b>
                  </button>
                </h5>
              </div>

              <div id="collapse4" class="collapse" aria-labelledby="heading4" data-parent="#accordion">
                <div class="card-body" style="font-size: 25px;">
                    At present, less than one half of one percent of farm acreage in the United States is devoted to organic farming methods.  This means that there are over 900 million acres of farmland being treated with chemical fertilizers, pesticides, and other toxic substances required by livestock farming.  As the percentage of organic farms increases, the environment also benefits.
                </div>
              </div>
            </div>
            
            <div class="card ml-5 mr-5 mb-3">
              <div class="card-header" id="heading5"   style="background-color: gray">
                <h5 class="text-center mb-0">
                  <button class="btn btn-link text-white" style="font-size: 25px;" data-toggle="collapse" data-target="#collapse5" aria-expanded="true" aria-controls="collapse5">
                      <b>Better Soil Quality</b>
                  </button>
                </h5>
              </div>

              <div id="collapse5" class="collapse" aria-labelledby="heading5" data-parent="#accordion">
                <div class="card-body" style="font-size: 25px;">
                    According to research done by Cornell University, forty billion dollars are lost annually due to topsoil destruction caused by conventional farming’s dependency on chemical fertilizers.  If those fertilizers and ammonia were replaced by the use of organic farming methods, topsoil health would improve.  The healthier soil would in turn produce vegetables and fruits with higher amounts of minerals and micronutrients.
                </div>
              </div>
            </div>
            
            <div class="card ml-5 mr-5 mb-3">
              <div class="card-header" id="heading6"   style="background-color: slateblue">
                <h5 class="text-center mb-0">
                  <button class="btn btn-link text-white" style="font-size: 25px;" data-toggle="collapse" data-target="#collapse6" aria-expanded="true" aria-controls="collapse6">
                      <b>Helping in the Fight Against Climate Change</b>
                  </button>
                </h5>
              </div>

              <div id="collapse6" class="collapse" aria-labelledby="heading6" data-parent="#accordion">
                <div class="card-body" style="font-size: 25px;">
                    Organic farming reduces the use of nonrenewable energy, because it avoids the use of chemical pesticides and fertilizers, which require large amounts of fossil fuel to produce.  Organic farming also returns more carbon to the soil, which then lessens the greenhouse effect and global warming.
                </div>
              </div>
            </div>
            
            <div class="card ml-5 mr-5 mb-3">
              <div class="card-header" id="heading7"   style="background-color: violet">
                <h5 class="text-center mb-0">
                  <button class="btn btn-link text-white" style="font-size: 25px;" data-toggle="collapse" data-target="#collapse7" aria-expanded="true" aria-controls="collapse7">
                      <b>Preservation of the Culture of Agriculture</b>
                  </button>
                </h5>
              </div>

              <div id="collapse7" class="collapse" aria-labelledby="heading7" data-parent="#accordion">
                <div class="card-body" style="font-size: 25px;">
                    Around the world, every culture has at least one thing in common:  food.  Organic farming celebrates biodiversity and good health, and it removes harmful toxins from our environment and from our food.  That is something to encourage and celebrate!
                </div>
              </div>
            </div>
            
            <div class="card ml-5 mr-5 mb-3">
              <div class="card-header" id="heading8"   style="background-color: lightgray">
                <h5 class="text-center mb-0">
                  <button class="btn btn-link text-white" style="font-size: 25px;" data-toggle="collapse" data-target="#collapse8" aria-expanded="true" aria-controls="collapse8">
                      <b>Job Creation</b>
                  </button>
                </h5>
              </div>

              <div id="collapse8" class="collapse" aria-labelledby="heading8" data-parent="#accordion">
                <div class="card-body" style="font-size: 25px;">
                    Studies compiled by the Organic Farming Research Foundation have shown that there are more than 10,000 certified organic producers in America, in comparison with almost two million traditional farms.  However, organic farms tend to bring in more profits, despite requiring more employees.  It is easy to see the economic benefits derived from job creation that would come from an increase in organic farming.
                </div>
              </div>
            </div>
            
          </div>
        <br><br><br><br>
    </body>
</html>
