<html>
<head>
	<title>Start Coffee Machine</title>
	<script language="javascript">
        
        function inc(){
            dat = new Date().getMilliseconds();
            document.getElementById("f").contentWindow.location.reload(true);
            setTimeout(inc,10);
        }
        inc();
        
	</script>
</head>
<body>
	<form name="form1">
	<h1>Welcome</h1>
	<p id="f">State of the coffee machine: <% ReadPLC("gLubricationValveWalther_0.LubricationValveCoil1"); %></p>
	<p>Start coffee machine...      <% WritePLC("gMainLogic.cmd.switchOnOff","1"); %></p>
	<p>State of the coffee machine: <% ReadPLC("gMainLogic.cmd.switchOnOff"); %></p>
	<hr />
	
	<p>Current temperature: <% ReadPLC("gHeating.status.actTemp","%.1f"); %> </p>
	<p>Current Recipe</p>
	<p>Cream: <% ReadPLC("gMainLogic.par.receipe.milk"); %></p>
	<p>Sugar: <% ReadPLC("gMainLogic.par.receipe.sugar"); %></p>
	<p>Coffee Powder: <% ReadPLC("gMainLogic.par.receipe.coffee"); %></p>
	<p>Water: <% ReadPLC("gMainLogic.par.receipe.water"); %></p>
	<input type="reset" value="reset" name="btnReset" /><br />
	</form>
</body>
</html> 
