<%@ Page Language="C#" Inherits="TestPaint1.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Default</title>
        <script src="Scripts/jquery-3.3.1.js" type="text/javascript"></script>
    <script src="Scripts/canvaspaint.js" type="text/javascript"></script>
    <script type="text/javascript">
        var canvasManager;
        //$(window).load(function () {
           //  canvasManager = $(".canvas").canvasPaint();
        //});

            //jQuery( document ).ready(function( $ ) {
            //$(window).load(function () {
            $(window).on("load", function (e) {
             canvasManager = $(".canvas").canvasPaint();
         });
    </script>

    
    <link href="demo.css" rel="stylesheet" type="text/css" />

</head>
<body>

    <div id="navmenu"></div>
    <div id="carousel"></div>


        <div class="toolsBars">
        <fieldset class="toolsBar">
            <legend>Tools</legend>
            <input type="button" style="background-image: url('images/lapiz.png');" value="lapiz"              onclick="canvasManager.activatePen()" />
            <input type="button" style="background-image: url('images/borrador.png');" value="borrador"           onclick="canvasManager.activateEraser()" />
            <input type="button" style="background-image: url('images/circulo.png');" value="circulo vacio"      onclick="canvasManager.activateEmptyCircle()" />
            <input type="button" style="background-image: url('images/circuloRelleno.png');" value="circulo lleno"      onclick="canvasManager.activateCircle()" />
            <input type="button" style="background-image: url('images/cuadrado.png');" value="cuadrado vacio"     onclick="canvasManager.activateEmptyRectangle()" />
            <input type="button" style="background-image: url('images/cuadradoRelleno.png');" value="cuadrado lleno"     onclick="canvasManager.activateRectangle()" />
            <input type="button" style="background-image: url('images/linea.png');" value="linea"              onclick="canvasManager.activateLine()" />
            <input type="button" style="background-image: url('images/spray.png');" value="spray"              onclick="canvasManager.activateSpray()" />
            <input type="button" style="background-image: url('images/dibujo.png');" value="imagen de fondo"    onclick="canvasManager.loadBackgroundImage('images/dibujo1.png')"/>
            <input type="button" style="background-image: url('images/texto.png');" value="texto"              onclick="canvasManager.text()"/>
            <input type="button" style="background-image: url('images/save.png');" value="guardar"            onclick="canvasManager.save()" />
            <input type="button" style="background-image: url('images/undo.png');" value="undo"               onclick="canvasManager.undo()" />
            <input type="button" style="background-image: url('images/redo.png');" value="redo"               onclick="canvasManager.redo()" />
            <input type="button" style="background-image: url('images/new.png');" value="nuevo"              onclick="canvasManager.clearAll()" />
        </fieldset>
            
        <fieldset class="toolsBar">
            <legend>Line color</legend>
            <input type="button" style="background-color: red;" value="color rojo linea"   onclick="canvasManager.changeStrokeColor('red')" />
            <input type="button" style="background-color: blue;" value="color azul linea"   onclick="canvasManager.changeStrokeColor('blue')" />
            <input type="button" style="background-color: green;" value="color verde linea"   onclick="canvasManager.changeStrokeColor('green')" />
            <input type="button" style="background-color: yellow;" value="color amarillo linea"   onclick="canvasManager.changeStrokeColor('yellow')" />
            <input type="button" style="background-color: black;" value="color negro linea"   onclick="canvasManager.changeStrokeColor('black')" />
            <input type="button" style="background-color: pink;" value="color rosa linea"   onclick="canvasManager.changeStrokeColor('pink')" />
            <input type="button" style="background-color: brown;" value="color marron linea"   onclick="canvasManager.changeStrokeColor('brown')" />
        </fieldset> 
            
        <fieldset class="toolsBar">
            <legend>Fill color</legend>
            <input type="button" style="background-color: red;" value="color rojo relleno"   onclick="canvasManager.changeFillColor('red')" />
            <input type="button" style="background-color: blue;" value="color azul relleno"   onclick="canvasManager.changeFillColor('blue')" />
            <input type="button" style="background-color: green;" value="color verde relleno"   onclick="canvasManager.changeFillColor('green')" />
            <input type="button" style="background-color: yellow;" value="color amarillo relleno"   onclick="canvasManager.changeFillColor('yellow')" />
            <input type="button" style="background-color: black;" value="color negro relleno"   onclick="canvasManager.changeFillColor('black')" />
            <input type="button" style="background-color: pink;" value="color rosa relleno"   onclick="canvasManager.changeFillColor('pink')" />
            <input type="button" style="background-color: brown;" value="color marron relleno"   onclick="canvasManager.changeFillColor('brown')" />
        </fieldset> 
        
        <fieldset class="toolsBar">
            <legend>Line size</legend>
            <input type="button" style="background-image: url('images/tamanio2px.png');" value="2 px"            onclick="canvasManager.changeStrokeSize(2)" />
            <input type="button" style="background-image: url('images/tamanio6px.png');" value="6 px"            onclick="canvasManager.changeStrokeSize(6)" />
            <input type="button" style="background-image: url('images/tamanio10px.png');" value="10 px"            onclick="canvasManager.changeStrokeSize(10)" />
            <input type="button" style="background-image: url('images/tamanio15px.png');" value="15 px"            onclick="canvasManager.changeStrokeSize(15)" />
            <input type="button" style="background-image: url('images/tamanio20px.png');" value="20 px"            onclick="canvasManager.changeStrokeSize(20)" />
        </fieldset>
        
        <fieldset class="toolsBar">
            <legend>Others</legend>
            <input type="button" style="background-image: url('images/opacity100.png');" title="densidad 100%" value="opacidad 100%"      onclick="canvasManager.changeOpacity(100)" />
            <input type="button" style="background-image: url('images/opacity50.png');" title="densidad 50%" value="opacidad 50%"       onclick="canvasManager.changeOpacity(50)" />
            <input type="button" style="background-image: url('images/sprayLow.png');" title="spray poco denso" value="densidad spray 5"   onclick="canvasManager.changeSprayDensity(5)" />
            <input type="button" style="background-image: url('images/sprayHigh.png');" title="spray muy denso" value="densidad spray 20"   onclick="canvasManager.changeSprayDensity(20)" />
        </fieldset>
    </div>


     

    <div style="width: 600px; height: 400px; border: solid 2px red" class="canvas"></div>

	<form id="form1" runat="server">
		<asp:Button id="button1" runat="server" Text="Click me!" OnClick="button1Clicked" />

	</form>
</body>
</html>
