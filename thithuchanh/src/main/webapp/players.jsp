<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="your.package.entity.Player" %>
<%@ page import="your.package.repository.PlayerRepository" %>

<%
    Player player = new Player(); // default for add
    String action = "addPlayer"; // default form action

    String idParam = request.getParameter("id");
    if (idParam != null && !idParam.isEmpty()) {
        int id = Integer.parseInt(idParam);
        PlayerRepository repo = new PlayerRepository();
        player = repo.getPlayerById(id); // Load player from DB
        action = "updatePlayer"; // Change form action to update
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Player Information</title>
    <style>
        /* Basic styling */
        input, select {
            margin: 8px 0;
            padding: 8px;
            width: 200px;
        }
    </style>
</head>
<body>
<h2><%= (idParam != null) ? "Edit Player" : "Add Player" %></h2>

<form action="<%=action%>" method="post">
    <% if (idParam != null) { %>
    <input type="hidden" name="id" value="<%=player.getId()%>">
    <% } %>

    <label>Player Name:</label><br>
    <input type="text" name="name" value="<%=player.getName() != null ? player.getName() : ""%>" required><br>

    <label>Player Age:</label><br>
    <input type="number" name="age" value="<%=player.getAge()%>" required><br>

    <label>Index Name:</label><br>
    <select name="indexName">
        <option value="speed" <%= "speed".equals(player.getIndexName()) ? "selected" : "" %>>Speed</option>
        <option value="strength" <%= "strength".equals(player.getIndexName()) ? "selected" : "" %>>Strength</option>
        <option value="accurate" <%= "accurate".equals(player.getIndexName()) ? "selected" : "" %>>Accurate</option>
    </select><br>

    <label>Value:</label><br>
    <input type="number" name="value" value="<%=player.getValue()%>" required><br>

    <button type="submit"><%= (idParam != null) ? "Update" : "Add" %></button>
</form>
</body>
</html>
