const express = require("express");
const path = require("path");

const app = express();
const port = process.env.PORT || 3000;

// Serve static frontend files
app.use(express.static(path.join(__dirname, "../frontend")));

app.get("/health", (req, res) => {
  res.json({ status: "App is running!" });
});

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
