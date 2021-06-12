<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Access</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Access.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.14.0, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    
    
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "Site1",
		"url": "index.html",
		"logo": "images/default-logo.png",
		"sameAs": []
}</script>
<script>
var sessionVal = '<%= session.getAttribute("password") %>';
if(sessionVal=="null")
{
location.replace("Sing-In.html");
}
</script>


    <meta property="og:title" content="Access">
    <meta property="og:type" content="website">
    <meta name="theme-color" content="#478ac9">
    <link rel="canonical" href="index.html">
    <meta property="og:url" content="index.html">
    <script>
var hb1=0;      
function hallBulb1Switch()
{
if(hb1==0)
{
var switchState={
"location":"BLUE",
"appliance":"BULB",
"ss":"ON"
};
hb1=1;
document.getElementById("hall_bulb_1").style.borderColor = "#3fcc2c";
}
else
{
var switchState={
"location":"BLUE",
"appliance":"BULB",
"ss":"OFF"
};
hb1=0;
document.getElementById("hall_bulb_1").style.borderColor = "#fd1010";
}
var xmlHttpRequest=new XMLHttpRequest();
xmlHttpRequest.onreadystatechange=function(){
if(this.readyState==4)
{
if(this.status==200)
{
var responseData=JSON.parse(this.responseText);
//alert("Done");
}
}
};
xmlHttpRequest.open('POST','switch',true);
xmlHttpRequest.setRequestHeader("Content-Type","application/json");
//alert(switchState);
//alert(JSON.stringify(switchState));
xmlHttpRequest.send(JSON.stringify(switchState));
//alert("hall bulb 1");
}

var hf=0;
function hallFanSwitch()
{
if(hf==0)
{
var switchState={
"location":"BLUE",
"appliance":"COOLER",
"ss":"ON"
};
hf=1;
document.getElementById("hall_fan").style.borderColor = "#3fcc2c";
}
else
{
var switchState={
"location":"BLUE",
"appliance":"COOLER",
"ss":"OFF"
};
hf=0;
document.getElementById("hall_fan").style.borderColor = "#fd1010";
}
var xmlHttpRequest=new XMLHttpRequest();
xmlHttpRequest.onreadystatechange=function(){
if(this.readyState==4)
{
if(this.status==200)
{
var responseData=JSON.parse(this.responseText);
//alert("Done");
}
}
};
xmlHttpRequest.open('POST','switch',true);
xmlHttpRequest.setRequestHeader("Content-Type","application/json");
xmlHttpRequest.send(JSON.stringify(switchState));
//alert("hall fan");
}

var bb=0;
function bedroomBulb1Switch()
{
if(bb==0)
{
var switchState={
"location":"BLUE",
"appliance":"IRON",
"ss":"ON"
};
bb=1;
document.getElementById("bedroom_bulb_1").style.borderColor = "#3fcc2c";
}
else
{
  var switchState={
"location":"BLUE",
"appliance":"IRON",
"ss":"OFF"
};
bb=0;
document.getElementById("bedroom_bulb_1").style.borderColor = "#fd1010";
}
var xmlHttpRequest=new XMLHttpRequest();
xmlHttpRequest.onreadystatechange=function(){
if(this.readyState==4)
{
if(this.status==200)
{
var responseData=JSON.parse(this.responseText);
//alert("Done");
}
}
};
xmlHttpRequest.open('POST','switch',true);
xmlHttpRequest.setRequestHeader("Content-Type","application/json");
xmlHttpRequest.send(JSON.stringify(switchState));
//alert("bedroom bulb 1");
}

var kb=0;
function kitchenBulb1Switch()
{
if(kb==0)
{
var switchState={
"location":"BLUE",
"appliance":"MCB",
"ss":"ON"
};
kb=1;
document.getElementById("kitchen_bulb_1").style.borderColor = "#3fcc2c";
}
else
{
var switchState={
"location":"BLUE",
"appliance":"MCB",
"ss":"OFF"
};
kb=0;
document.getElementById("kitchen_bulb_1").style.borderColor = "#fd1010";
}
var xmlHttpRequest=new XMLHttpRequest();
xmlHttpRequest.onreadystatechange=function(){
if(this.readyState==4)
{
if(this.status==200)
{
var responseData=JSON.parse(this.responseText);
//alert("Done");
}
}
};
xmlHttpRequest.open('POST','switch',true);
xmlHttpRequest.setRequestHeader("Content-Type","application/json");
xmlHttpRequest.send(JSON.stringify(switchState));
//alert("kitchen bulb 1");
}

var pb=0;
function porchBulb1Switch()
{
if(pb==0)
{
var switchState={
"location":"porch",
"appliance":"bulb",
"ss":"ON"
};
pb=1;
document.getElementById("porch_bulb_1").style.borderColor = "#3fcc2c";
}
else
{
var switchState={
"location":"porch",
"appliance":"bulb",
"ss":"OFF"
};
pb=0;
document.getElementById("porch_bulb_1").style.borderColor = "#fd1010";
}
var xmlHttpRequest=new XMLHttpRequest();
xmlHttpRequest.onreadystatechange=function(){
if(this.readyState==4)
{
if(this.status==200)
{
var responseData=JSON.parse(this.responseText);
//alert("Done");
}
}
};
xmlHttpRequest.open('POST','switch',true);
xmlHttpRequest.setRequestHeader("Content-Type","application/json");
xmlHttpRequest.send(JSON.stringify(switchState));
        //alert("porch bulb 1");
      }
var mcb=1;
      function mcbSwitch()
      {
if(mcb==0)
{
  var switchState={
"location":"BLUE",
"appliance":"MCB",
"ss":"ON"
};
mcb=1;
document.getElementById("mcb").style.borderColor = "#3fcc2c";
}
else
{
  var switchState={
"location":"BLUE",
"appliance":"MCB",
"ss":"OFF"
};
mcb=0;
document.getElementById("mcb").style.borderColor = "#fd1010";
document.getElementById("hall_bulb_1").style.borderColor = "#fd1010";
document.getElementById("hall_fan").style.borderColor = "#fd1010";
document.getElementById("bedroom_bulb_1").style.borderColor = "#fd1010";
document.getElementById("kitchen_bulb_1").style.borderColor = "#fd1010";
document.getElementById("porch_bulb_1").style.borderColor = "#fd1010";
}
var xmlHttpRequest=new XMLHttpRequest();
xmlHttpRequest.onreadystatechange=function(){
if(this.readyState==4)
{
if(this.status==200)
{
var responseData=JSON.parse(this.responseText);
//alert("Done");
}
}
};
xmlHttpRequest.open('POST','switch',true);
xmlHttpRequest.setRequestHeader("Content-Type","application/json");
xmlHttpRequest.send(JSON.stringify(switchState));
        //alert("mcb switch");
      }
    </script>
  </head>
  <body class="u-body">
    <section class="u-align-center-md u-align-center-sm u-align-center-xs u-clearfix u-custom-color-1 u-section-1" id="sec-2640">
      <div class="u-clearfix u-sheet u-valign-middle-sm u-valign-middle-xs u-sheet-1">
        <h2 class="u-align-center u-text u-text-1">Remote Acess</h2>
        <a href="logout.jsp" class="u-align-center-sm u-align-center-xs u-align-right-lg u-align-right-md u-align-right-xl u-border-4 u-border-hover-black u-border-white u-btn u-button-style u-custom-color-2 u-hover-custom-color-2 u-text-hover-black u-btn-1"><span class="u-icon u-icon-1"><svg class="u-svg-content" viewBox="0 0 512.00533 512" style="width: 1em; height: 1em;"><path d="m320 277.335938c-11.796875 0-21.332031 9.558593-21.332031 21.332031v85.335937c0 11.753906-9.558594 21.332032-21.335938 21.332032h-64v-320c0-18.21875-11.605469-34.496094-29.054687-40.554688l-6.316406-2.113281h99.371093c11.777344 0 21.335938 9.578125 21.335938 21.335937v64c0 11.773438 9.535156 21.332032 21.332031 21.332032s21.332031-9.558594 21.332031-21.332032v-64c0-35.285156-28.714843-63.99999975-64-63.99999975h-229.332031c-.8125 0-1.492188.36328175-2.28125.46874975-1.027344-.085937-2.007812-.46874975-3.050781-.46874975-23.53125 0-42.667969 19.13281275-42.667969 42.66406275v384c0 18.21875 11.605469 34.496093 29.054688 40.554687l128.386718 42.796875c4.351563 1.34375 8.679688 1.984375 13.226563 1.984375 23.53125 0 42.664062-19.136718 42.664062-42.667968v-21.332032h64c35.285157 0 64-28.714844 64-64v-85.335937c0-11.773438-9.535156-21.332031-21.332031-21.332031zm0 0"></path><path d="m505.75 198.253906-85.335938-85.332031c-6.097656-6.101563-15.273437-7.9375-23.25-4.632813-7.957031 3.308594-13.164062 11.09375-13.164062 19.714844v64h-85.332031c-11.777344 0-21.335938 9.554688-21.335938 21.332032 0 11.777343 9.558594 21.332031 21.335938 21.332031h85.332031v64c0 8.621093 5.207031 16.40625 13.164062 19.714843 7.976563 3.304688 17.152344 1.46875 23.25-4.628906l85.335938-85.335937c8.339844-8.339844 8.339844-21.824219 0-30.164063zm0 0"></path></svg><img></span>&nbsp;Logout
        </a>
      </div>
    </section>
    <section class="u-clearfix u-section-2" id="sec-e434">
      <div class="u-clearfix u-sheet u-valign-middle-lg u-valign-middle-md u-valign-middle-xl u-sheet-1">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-image u-layout-cell u-size-30 u-image-1" data-image-width="1280" data-image-height="720">
                <div class="u-container-layout u-container-layout-1"></div>
              </div>
              <div class="u-align-center u-container-style u-grey-25 u-layout-cell u-size-30 u-layout-cell-2">
                <div class="u-container-layout u-valign-middle u-container-layout-2">
                  <h3 class="u-align-left-xs u-text u-text-1">Bulb 1:&nbsp;</h3>
<span id="hall_bulb_1" onclick="hallBulb1Switch()" class="u-align-center-md u-align-center-sm u-align-center-xs u-black u-border-2 u-border-custom-color-2 u-icon u-icon-circle u-spacing-10 u-text-body-alt-color u-icon-1" data-animation-name="tada" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="" value="OFF"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 511.98 511.98" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-b5bc"></use></svg><svg class="u-svg-content" viewBox="0 0 511.98 511.98" id="svg-b5bc"><g><path d="m139.702 317.377c13.119 11.113 21.818 26.169 24.961 42.604h76.327v-106.899c-25.849-6.678-45-30.195-45-58.102h30c0 16.542 13.458 30 30 30s30-13.458 30-30h30c0 27.906-19.151 51.424-45 58.102v106.898h76.344c3.177-16.431 11.959-31.562 25.202-42.823 40.326-34.29 63.454-84.289 63.454-137.177 0-161.352-196.781-240.593-308.844-125.467-73.136 75.138-66.884 195.57 12.556 262.864z"></path><path d="m255.99 511.98c33.084 0 60-26.916 60-60h-120c0 33.084 26.916 60 60 60z"></path><path d="m165.99 389.98h180v32h-180z"></path>
</g></svg></span><span id="hall_fan" onclick="hallFanSwitch()" class="u-black u-border-2 u-border-custom-color-2 u-icon u-icon-circle u-spacing-10 u-text-body-alt-color u-icon-2" data-animation-name="tada" data-animation-duration="1000" data-animation-delay="0" data-animation-direction=""><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 511.999 511.999" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-4e8f"></use></svg><svg class="u-svg-content" viewBox="0 0 511.999 511.999" x="0px" y="0px" id="svg-4e8f" style="enable-background:new 0 0 511.999 511.999;"><g><g><path d="M255.102,224.988c-33.283,0-58.197,29.782-58.197,61.997c0,33.766,26.109,59.997,58.197,59.997    c32.049,0,59.997-28.186,59.997-61.997C315.098,252.83,288.442,224.988,255.102,224.988z"></path>
</g>
</g><g><g><path d="M474.45,325.031c-16.841-9.721-76.814-34.444-130.315-49.558c0.339,3.168,0.961,6.255,0.961,9.511    c0,36.63-22.069,70.087-53.543,84.12c11.137,10.843,23.072,21.723,35.145,32.08c-31.41,19.513-68.847,25.734-104.219,16.339    c-7.983-2.051-16.201,2.651-18.339,10.663c-2.124,7.998,2.651,16.215,10.663,18.339c46.253,12.257,94.017,3.908,135.546-25.659    c8.813,7.09,17.22,13.675,24.594,19.166c-57.987,44.952-137.775,54.447-203.774,22.136c-7.441-3.677-16.42-0.571-20.067,6.855    c-3.647,7.441-0.586,16.42,6.855,20.067c78.52,38.517,173.198,28.735,243.34-31.406c37.56,20.349,81.198,5.444,100.619-28.209    C522.582,393.663,510.264,345.713,474.45,325.031z"></path>
</g>
</g><g><g><path d="M479.576,269.605c-6.046-89.391-65.786-166.498-149.642-196.216C329.053,32.796,297.7,0,256.901,0    c-41.351,0-74.996,33.645-74.996,74.996c0,19.406,8.498,83.672,22.072,137.561c14.893-10.914,31.285-17.568,51.124-17.568    c19.86,0,38.067,6.669,52.968,17.605c3.832-15.193,7.302-31.113,10.235-46.753c32.686,17.392,57.228,47.579,67.073,83.696    c2.222,8.171,10.658,12.685,18.412,10.531c7.998-2.183,12.714-10.414,10.531-18.412c-12.888-47.315-46.48-86.179-90.786-106.497    c1.719-11.11,3.144-21.51,4.206-30.591c68.538,27.672,116.852,92.401,121.895,167.058c0.542,7.925,7.134,13.988,14.955,13.988    c0.337,0,0.688-0.015,1.025-0.029C473.879,285.028,480.133,277.866,479.576,269.605z"></path>
</g>
</g><g><g><path d="M166.906,286.984c0-3.237,0.621-6.304,0.956-9.456c-15.059,4.241-30.423,9.003-45.542,14.32    c-1.45-40.324,13.69-76.571,38.771-101.869c5.83-5.889,5.801-15.38-0.088-21.21c-5.859-5.801-15.351-5.801-21.21,0.088    c-32.988,33.27-51.581,80.639-46.558,133.71c-10.692,4.149-20.672,8.177-29.191,11.859    c-10.887-77.338,24.154-150.922,84.024-191.27c6.87-4.629,8.687-13.944,4.058-20.814c-4.658-6.885-13.974-8.687-20.814-4.058    C60.351,146.1,18.765,234.71,36.068,328.179c-34.771,21.267-46.314,66.018-25.98,101.297c0.146,0.264,0.308,0.513,0.454,0.776    c20.747,34.956,65.625,46.932,100.966,27.26c0.352-0.19,0.688-0.396,1.04-0.586c0,0,0.015-0.015,0.029-0.015    c16.843-9.737,68.022-49.157,107.808-87.84C188.945,355.025,166.906,323.588,166.906,286.984z"></path>
</g>
</g></svg></span>
                  <h3 class="u-align-left-xs u-text u-text-2">Fan:</h3>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-section-3" id="carousel_d904">
      <div class="u-clearfix u-sheet u-valign-middle-lg u-valign-middle-md u-valign-middle-xl u-sheet-1">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-image u-layout-cell u-size-30 u-image-1" data-image-width="1280" data-image-height="848">
                <div class="u-container-layout u-container-layout-1"></div>
              </div>
              <div class="u-align-center u-container-style u-grey-25 u-layout-cell u-size-30 u-layout-cell-2">
                <div class="u-container-layout u-valign-middle u-container-layout-2">
                  <h3 class="u-align-left-xs u-text u-text-1">Bulb 1:&nbsp;</h3><span id="kitchen_bulb_1" onclick="kitchenBulb1Switch()" class="u-align-center-md u-align-center-sm u-align-center-xs u-black u-border-2 u-border-custom-color-2 u-icon u-icon-circle u-spacing-10 u-text-body-alt-color u-icon-1" data-animation-name="tada" data-animation-duration="1000" data-animation-delay="0" data-animation-direction=""><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 511.98 511.98" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-b5bc"></use></svg><svg class="u-svg-content" viewBox="0 0 511.98 511.98" id="svg-b5bc"><g><path d="m139.702 317.377c13.119 11.113 21.818 26.169 24.961 42.604h76.327v-106.899c-25.849-6.678-45-30.195-45-58.102h30c0 16.542 13.458 30 30 30s30-13.458 30-30h30c0 27.906-19.151 51.424-45 58.102v106.898h76.344c3.177-16.431 11.959-31.562 25.202-42.823 40.326-34.29 63.454-84.289 63.454-137.177 0-161.352-196.781-240.593-308.844-125.467-73.136 75.138-66.884 195.57 12.556 262.864z"></path><path d="m255.99 511.98c33.084 0 60-26.916 60-60h-120c0 33.084 26.916 60 60 60z"></path><path d="m165.99 389.98h180v32h-180z"></path>
</g></svg></span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-section-4" id="carousel_42e2">
      <div class="u-clearfix u-sheet u-valign-middle-lg u-valign-middle-md u-valign-middle-xl u-sheet-1">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-image u-layout-cell u-size-30 u-image-1" data-image-width="1280" data-image-height="853">
                <div class="u-container-layout u-container-layout-1"></div>
              </div>
              <div class="u-align-center u-container-style u-grey-25 u-layout-cell u-size-30 u-layout-cell-2">
                <div class="u-container-layout u-valign-middle u-container-layout-2">
                  <h3 class="u-align-left-xs u-text u-text-1">Plug:&nbsp;</h3><span id="bedroom_bulb_1" onclick="bedroomBulb1Switch()" class="u-align-center-md u-align-center-sm u-align-center-xs u-black u-border-2 u-border-custom-color-2 u-icon u-icon-circle u-spacing-10 u-text-body-alt-color u-icon-1" data-animation-name="tada" data-animation-duration="1000" data-animation-delay="0" data-animation-direction=""><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 511.98 511.98" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-b5bc"></use></svg><svg class="u-svg-content" viewBox="0 0 511.98 511.98" id="svg-b5bc"><g><path d="m139.702 317.377c13.119 11.113 21.818 26.169 24.961 42.604h76.327v-106.899c-25.849-6.678-45-30.195-45-58.102h30c0 16.542 13.458 30 30 30s30-13.458 30-30h30c0 27.906-19.151 51.424-45 58.102v106.898h76.344c3.177-16.431 11.959-31.562 25.202-42.823 40.326-34.29 63.454-84.289 63.454-137.177 0-161.352-196.781-240.593-308.844-125.467-73.136 75.138-66.884 195.57 12.556 262.864z"></path><path d="m255.99 511.98c33.084 0 60-26.916 60-60h-120c0 33.084 26.916 60 60 60z"></path><path d="m165.99 389.98h180v32h-180z"></path>
</g></svg></span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-section-5" id="carousel_75dd">
      <div class="u-clearfix u-sheet u-valign-middle-lg u-valign-middle-md u-valign-middle-xl u-sheet-1">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-image u-layout-cell u-size-30 u-image-1" data-image-width="1600" data-image-height="978">
                <div class="u-container-layout u-container-layout-1"></div>
              </div>
              <div class="u-align-center u-container-style u-grey-25 u-layout-cell u-size-30 u-layout-cell-2">
                <div class="u-container-layout u-valign-middle u-container-layout-2">
                  <h3 class="u-align-left-xs u-text u-text-1">Bulb 1:&nbsp;</h3><span id="porch_bulb_1" onclick="porchBulb1Switch()" class="u-align-center-md u-align-center-sm u-align-center-xs u-black u-border-2 u-border-custom-color-2 u-icon u-icon-circle u-spacing-10 u-text-body-alt-color u-icon-1" data-animation-name="tada" data-animation-duration="1000" data-animation-delay="0" data-animation-direction=""><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 511.98 511.98" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-b5bc"></use></svg><svg class="u-svg-content" viewBox="0 0 511.98 511.98" id="svg-b5bc"><g><path d="m139.702 317.377c13.119 11.113 21.818 26.169 24.961 42.604h76.327v-106.899c-25.849-6.678-45-30.195-45-58.102h30c0 16.542 13.458 30 30 30s30-13.458 30-30h30c0 27.906-19.151 51.424-45 58.102v106.898h76.344c3.177-16.431 11.959-31.562 25.202-42.823 40.326-34.29 63.454-84.289 63.454-137.177 0-161.352-196.781-240.593-308.844-125.467-73.136 75.138-66.884 195.57 12.556 262.864z"></path><path d="m255.99 511.98c33.084 0 60-26.916 60-60h-120c0 33.084 26.916 60 60 60z"></path><path d="m165.99 389.98h180v32h-180z"></path>
</g></svg></span><span id="mcb" onclick="mcbSwitch()" class="u-black u-border-2 u-border-custom-color-4 u-icon u-icon-circle u-spacing-10 u-text-custom-color-4 u-icon-2" data-animation-name="tada" data-animation-duration="1000" data-animation-delay="0" data-animation-direction=""><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-23cb"></use></svg><svg class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" id="svg-23cb" style="enable-background:new 0 0 512 512;"><g><g><polygon points="313.493,233.176 302.46,246 322.371,246   "></polygon>
</g>
</g><g><g><polygon points="229.473,225.896 273.65,175.625 261,157.353 199.628,246 262.886,246 280.183,225.896   "></polygon>
</g>
</g><g><g><path d="M131,90v230h255V90H131z M276.651,276l-34.44,40.032l-22.742-19.564L237.077,276h-94.705L261,104.647l33.06,47.753    l45.084-51.302l22.535,19.803l-50.02,56.919l12.513,18.075h21.394l-11.854,13.779L379.629,276H276.651z"></path>
</g>
</g><g><g><path d="M36,0v410h440V0H36z M416,350H101v-40H76v-30h25V130H76v-30h25V60h315V350z"></path>
</g>
</g><g><g><rect x="161" y="440" width="80" height="72"></rect>
</g>
</g><g><g><rect x="271" y="440" width="80" height="72"></rect>
</g>
</g></svg></span>
                  <h3 class="u-align-left-xs u-text u-text-2">MCB:</h3>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
    <footer class="u-clearfix u-footer u-grey-80" id="sec-4c19"><div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-gutter-30 u-layout-wrap u-layout-wrap-1">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-row">
              <div class="u-align-center-sm u-align-center-xs u-align-left-md u-align-left-xl u-container-style u-layout-cell u-left-cell u-size-20 u-size-20-md u-layout-cell-1">
                <div class="u-container-layout u-valign-middle u-container-layout-1"><!--position-->
                  <div data-position="" class="u-position u-position-1"><!--block-->
                    <div class="u-block">
                      <div class="u-block-container u-clearfix"><!--block_header-->
                        <h2 class="u-block-header u-text u-text-3" style="color:yellow;"><!--block_header_content-->Contact Us<!--/block_header_content--></h2><!--/block_header--><!--block_content-->
                        <div class="u-block-content u-text u-text-2"><!--block_content_content--><br><b>Email Support :</b> support@domotics.com<br><b>Phone: </b>7879994241,7879994242<!--/block_content_content--></div><!--/block_content-->
                      </div>
                    </div><!--/block-->
                  </div><!--/position-->
                </div>
              </div>
              <div class="u-align-center-sm u-align-right-md u-container-style u-layout-cell u-size-20 u-size-20-md u-layout-cell-2">
                <div class="u-container-layout u-valign-middle u-container-layout-2 ">
                  <a href="#" class="u-image u-logo u-image-1" data-image-width="80" data-image-height="40">
                    <img src="images/default-logo.png" class="u-logo-image u-logo-image-1" data-image-width="80">
                  </a>
                </div>
              </div>
              <div class="u-align-center-sm u-align-center-xs u-align-left-md u-align-right-lg u-align-right-xl u-container-style u-layout-cell u-right-cell u-size-20 u-size-20-md u-layout-cell-3">
                <div class="u-container-layout u-valign-middle u-container-layout-3">
                  <div class="u-social-icons u-spacing-10 u-social-icons-1">
                    <a class="u-social-url" title="facebook" target="_blank" href=""><span class="u-icon u-icon-circle u-social-facebook u-social-icon u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-83f2"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-83f2"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M73.5,31.6h-9.1c-1.4,0-3.6,0.8-3.6,3.9v8.5h12.6L72,58.3H60.8v40.8H43.9V58.3h-8V43.9h8v-9.2
            c0-6.7,3.1-17,17-17h12.5v13.9H73.5z"></path></svg></span>
                    </a>
                    <a class="u-social-url" title="twitter" target="_blank" href=""><span class="u-icon u-icon-circle u-social-icon u-social-twitter u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-6629"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-6629"><circle fill="currentColor" class="st0" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M83.8,47.3c0,0.6,0,1.2,0,1.7c0,17.7-13.5,38.2-38.2,38.2C38,87.2,31,85,25,81.2c1,0.1,2.1,0.2,3.2,0.2
            c6.3,0,12.1-2.1,16.7-5.7c-5.9-0.1-10.8-4-12.5-9.3c0.8,0.2,1.7,0.2,2.5,0.2c1.2,0,2.4-0.2,3.5-0.5c-6.1-1.2-10.8-6.7-10.8-13.1
            c0-0.1,0-0.1,0-0.2c1.8,1,3.9,1.6,6.1,1.7c-3.6-2.4-6-6.5-6-11.2c0-2.5,0.7-4.8,1.8-6.7c6.6,8.1,16.5,13.5,27.6,14
            c-0.2-1-0.3-2-0.3-3.1c0-7.4,6-13.4,13.4-13.4c3.9,0,7.3,1.6,9.8,4.2c3.1-0.6,5.9-1.7,8.5-3.3c-1,3.1-3.1,5.8-5.9,7.4
            c2.7-0.3,5.3-1,7.7-2.1C88.7,43,86.4,45.4,83.8,47.3z"></path></svg></span>
                    </a>
                    <a class="u-social-url" title="instagram" target="_blank" href=""><span class="u-icon u-icon-circle u-social-icon u-social-instagram u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-9bfe"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-9bfe"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M55.9,38.2c-9.9,0-17.9,8-17.9,17.9C38,66,46,74,55.9,74c9.9,0,17.9-8,17.9-17.9C73.8,46.2,65.8,38.2,55.9,38.2
            z M55.9,66.4c-5.7,0-10.3-4.6-10.3-10.3c-0.1-5.7,4.6-10.3,10.3-10.3c5.7,0,10.3,4.6,10.3,10.3C66.2,61.8,61.6,66.4,55.9,66.4z"></path><path fill="#FFFFFF" d="M74.3,33.5c-2.3,0-4.2,1.9-4.2,4.2s1.9,4.2,4.2,4.2s4.2-1.9,4.2-4.2S76.6,33.5,74.3,33.5z"></path><path fill="#FFFFFF" d="M73.1,21.3H38.6c-9.7,0-17.5,7.9-17.5,17.5v34.5c0,9.7,7.9,17.6,17.5,17.6h34.5c9.7,0,17.5-7.9,17.5-17.5V38.8
            C90.6,29.1,82.7,21.3,73.1,21.3z M83,73.3c0,5.5-4.5,9.9-9.9,9.9H38.6c-5.5,0-9.9-4.5-9.9-9.9V38.8c0-5.5,4.5-9.9,9.9-9.9h34.5
            c5.5,0,9.9,4.5,9.9,9.9V73.3z"></path></svg></span>
                    </a>
                    <a class="u-social-url" title="linkedin" target="_blank" href=""><span class="u-icon u-icon-circle u-social-icon u-social-linkedin u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-7529"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-7529"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M41.3,83.7H27.9V43.4h13.4V83.7z M34.6,37.9L34.6,37.9c-4.6,0-7.5-3.1-7.5-7c0-4,3-7,7.6-7s7.4,3,7.5,7
            C42.2,34.8,39.2,37.9,34.6,37.9z M89.6,83.7H76.2V62.2c0-5.4-1.9-9.1-6.8-9.1c-3.7,0-5.9,2.5-6.9,4.9c-0.4,0.9-0.4,2.1-0.4,3.3v22.5
            H48.7c0,0,0.2-36.5,0-40.3h13.4v5.7c1.8-2.7,5-6.7,12.1-6.7c8.8,0,15.4,5.8,15.4,18.1V83.7z"></path></svg></span>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div></footer>
  </body>
</html>