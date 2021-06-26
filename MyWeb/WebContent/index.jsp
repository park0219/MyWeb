<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 2000 //changes the speed
    })
    </script>

    
    
</head>

<body>
	
	<jsp:include page="include/header.jsp"/>
	
    <div class="container">
    	<div class="row">
            <div class="box">
            
                      
        
                <div class="col-lg-12">
                    <hr>
                    <h3 class="intro-text text-center">MyWeb
                        <strong>유의 사항!</strong>
                    </h3>
                    <hr>
		                <div class="inner" align="center">
		                    <hr class="visible-xs">
		                    <p>1. MyWeb은 IT 커뮤니티로 의견의 공존과 다양성을 지향합니다.</p>
		                    <p>2. 게시판 글에는 최소한의 예의를 지켜주시길 바랍니다.</p>
		                    <p>3. 타인의 권리를 침해하는 게시물은 삭제될 수 있습니다.</p>
	                    </div>
                </div>              
                
            </div>
        </div>
    
        <div class="row ">
        	
        	       
            <div class="box">
                <div class="col-lg-6 text-center">
                
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel"><!-- data-ride="carousel" 자동 슬라이드 기능 -->
                       
                        <ol class="carousel-indicators hidden-xs">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            
                        </ol>

                     	
                        <div class="carousel-inner">
                            <div class="item active">
                                <img class="img-responsive img-full" src="img/1.jpg">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="img/2.jpg"> <!-- img-full 옵션 class -->
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="img/3.jpg">
                            </div>
                           
                        </div>

                       	
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <span class="icon-prev"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                            <span class="icon-next"></span>
                        </a>
                    </div>
                        
                </div>
                
                
                 
                    
                <div class="col-lg-6 text-center" >    
                   
						<h2>IT 유튜버</h2>
						<p>
							잇섭을 소개합니다.
						</p>
						<hr>
						<h3>추천 영상</h3>
						
						<iframe width="100%" height="372px" src="https://www.youtube.com/embed/12i1u03yI28?autoplay=1&amp;loop=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
					
                 </div>   
                    
                
            </div>
            
          
            
        </div>

        

          
    <!-- /.container -->
    </div>
    
    <jsp:include page="include/footer.jsp"/>
    
</body>
</html>