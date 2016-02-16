<div class="modal-dialog" role="document" style="width: 75%">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <h4 class="modal-title" id="myModalLabel">${movie.name}</h4>
    </div>
    <div class="modal-body">
      <div class="container-fluid">
        <div class="raw">
          <div class="col-md-8">
            <table class="table table-hower">
              <thead>
              <tr>
                <td>Movie name:</td>
                <td>${movie.name}</td>
              </tr>
              <tr>
                <td>Producer:</td>
                <td>${movie.producer}</td>
              </tr>
              </thead>
            </table>
            <table class="table table-responsive">
              <tr>
                <td>Description:</td>
                <td></td>
              </tr>
              <tr>
                <td>${movie.description}</td>
              </tr>
            </table>
          </div>
          <div class="col-md-4">
            <img src="images/unnamed.png"/>
          </div>
        </div>
        <div class="raw">
          <div class="col-md-9">
            <!-- An empty div -->
          </div>
          <div class="col-md-3">
            <div class="row lead">
              <form action="/${pageContext.servletContext.contextPath}setRating" method="get">
                <div id="stars" class="starrr">
                <span class="glyphicon .glyphicon-star-empty glyphicon-star-empty" onclick="
                  for (var i=1; i<2; i++) {
                    document.getElementById('rating'+i).className = 'glyphicon .glyphicon-star-empty glyphicon-star';
                  }
                  for (var i=5; i>1; i--){
                    document.getElementById('rating'+i).className = 'glyphicon .glyphicon-star-empty glyphicon-star-empty';
                  }
                " id="rating1"></span>
                <span class="glyphicon .glyphicon-star-empty glyphicon-star-empty" onclick="
                  for (var i=1; i<3; i++) {
                    document.getElementById('rating'+i).className = 'glyphicon .glyphicon-star-empty glyphicon-star';
                  }
                  for (var i=5; i>2; i--){
                    document.getElementById('rating'+i).className = 'glyphicon .glyphicon-star-empty glyphicon-star-empty';
                  }
                " id="rating2"></span>
                <span class="glyphicon .glyphicon-star-empty glyphicon-star-empty" onclick="
                  for (var i=1; i<4; i++) {
                    document.getElementById('rating'+i).className = 'glyphicon .glyphicon-star-empty glyphicon-star';
                  }
                  for (var i=5; i>3; i--){
                    document.getElementById('rating'+i).className = 'glyphicon .glyphicon-star-empty glyphicon-star-empty';
                  }
                " id="rating3"></span>
                <span class="glyphicon .glyphicon-star-empty glyphicon-star-empty" onclick="
                  for (var i=1; i<5; i++) {
                    document.getElementById('rating'+i).className = 'glyphicon .glyphicon-star-empty glyphicon-star';
                  }
                  for (var i=5; i>4; i--){
                    document.getElementById('rating'+i).className = 'glyphicon .glyphicon-star-empty glyphicon-star-empty';
                  }
                " id="rating4"></span>
                <span class="glyphicon .glyphicon-star-empty glyphicon-star-empty" onclick="
                  for (var i=1; i<6 ; i++) {
                    document.getElementById('rating'+i).className = 'glyphicon .glyphicon-star-empty glyphicon-star';
                  }
                " id="rating5"></span>
                  <p>Current movie rating: ${rating}</p>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
    </div>
  </div>
</div>