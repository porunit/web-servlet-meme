<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Php))</title>
    <style>
        <%@include file='style.css' %>
    </style>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans&display=swap" rel="stylesheet">

</head>

<body>
<div class="content">
    <div class="header">
        <h1>
            Шпак Всеволод, P3209
        </h1>
        <h3>
            Вариант 1969
        </h3>
    </div>

    <div class="images">

        <div class="chart">
            <canvas id="chart">
            </canvas>
        </div>
        <!--        <img id="lebron" src="images/lebron.png" alt="">-->

    </div>
    <br/>

    <div class="dotted-spaced"><br/></div>

    <form class="ig" id="form">
        <div class="ig">
            <div class="ct">
                <label for="x">X:</label>
                <span>
                <input type="radio" name="x" oninput="saveValues('x-val1')" value="-2" id="x-val1" checked/>
                <label for="x-val1">-2</label>
                <input type="radio" name="x" oninput="saveValues('x-val2')" value="-1.5" id="x-val2"/>
                <label for="x-val2">-1.5</label>
                <input type="radio" name="x" oninput="saveValues('x-val3')" value="-1" id="x-val3"/>
                <label for="x-val3">-1</label>
                <input type="radio" name="x" oninput="saveValues('x-val4')" value="0" id="x-val4"/>
                <label for="x-val4">0</label>
                <input type="radio" name="x" oninput="saveValues('x-val5')" value="0.5" id="x-val5"/>
                <label for="x-val5">0.5</label>
                <input type="radio" name="x" oninput="saveValues('x-val6')" value="1" id="x-val6" checked/>
                <label for="x-val6">1</label>
                <input type="radio" name="x" oninput="saveValues('x-val7')" value="1.5" id="x-val7"/>
                <label for="x-val7">1.5</label>
                <input type="radio" name="x" onClick="saveValues('x-val8')" value="2" id="x-val8"/>
                <label for="x-val8">2</label>
                </span>
            </div>
        </div>
        <div class="ig">
            <div class="ct">
                <label for="y">Y:</label>
                <input value=0 type="text" maxlength="4" id="y" name="y" step="any" min="-3" max="5"
                       oninput="saveValues()" required>
            </div>
        </div>

        <div class="ig">
            <div class="ct">
                <label for="r">R:</label>
                <span>
                <input type="radio" name="r" value="1" id="r-val1" oninput="saveValues('r-val1')" checked/>
                <label for="r-val1">1</label>
                <input type="radio" name="r" value="2" oninput="saveValues('r-val2')" id="r-val2"/>
                <label for="r-val2">2</label>
                <input type="radio" name="r" value="3" oninput="saveValues('r-val3')" id="r-val3"/>
                <label for="r-val3">3</label>
                <input type="radio" name="r" value="4" oninput="saveValues('r-val4')" id="r-val4"/>
                <label for="r-val4">4</label>
                <input type="radio" name="r" value="5" onClick="saveValues('r-val5')" id="r-val5"/>
                <label for="r-val5">5</label>
          </span>
            </div>
        </div>
            <button type="submit">Check</button>
        <div id="warning" class="warning"></div>
    </form>
    <button id="clear_button" type="submit">Clear</button>
    <br/>
    <div class="dotted-spaced"><br/></div>

    <div id="tableStore">
        <jsp:include page="table.jsp"/>
    </div>
    <br/>
    <script type="text/javascript">
        <%@include file="clearTable.js"%>
    </script>
    <script type="text/javascript">
        <%@include file="canvasHandler.js"%>
    </script>
    <script type="text/javascript">
        <%@include file="script.js"%>
    </script>
</div>
</body>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
</html>