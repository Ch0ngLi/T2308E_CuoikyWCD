<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Player Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background: #fff;
        }
        h2 {
            text-align: center;
            color: #c57f17;
        }
        form {
            max-width: 700px;
            margin: auto;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            padding: 30px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 6px;
        }
        input[type="text"], select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        .button-container {
            grid-column: span 2;
            text-align: right;
        }
        button {
            background-color: #cc6f4a;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }
        button:hover {
            background-color: #b45a36;
        }
    </style>
</head>
<body>

<h2>Player Information</h2>
<form action="AddPlayerServlet" method="post">
    <div>
        <label for="playerName">Player name</label>
        <input type="text" id="playerName" name="playerName" placeholder="Player name" required>
    </div>

    <div>
        <label for="playerAge">Player age</label>
        <input type="text" id="playerAge" name="playerAge" placeholder="Player age" required>
    </div>

    <div>
        <label for="indexName">Index name</label>
        <select id="indexName" name="indexName" required>
            <option value="">Select</option>
            <option value="speed">Speed</option>
            <option value="strength">Strength</option>
            <option value="agility">Agility</option>
            <option value="intelligence">Intelligence</option>
        </select>
    </div>

    <div>
        <label for="value">Value</label>
        <select id="value" name="value" required>
            <option value="">Select</option>
            <option value="10">10</option>
            <option value="20">20</option>
            <option value="30">30</option>
            <option value="40">40</option>
            <option value="50">50</option>
        </select>
    </div>

    <div class="button-container">
        <button type="submit">Add</button>
    </div>
</form>

</body>
</html>