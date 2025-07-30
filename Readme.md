# Quick Deployer Demo

A simple Node.js + static HTML app to demo AWS App Runner deployment.

## How to Run Locally (NPM)

1. Install dependencies:
   ```bash
   npm install
   ```
2. Start the server:
   ```bash
   npm start
   ```
3. Open your browser and go to [http://localhost:3000](http://localhost:3000)

---

## How to Run with Docker

1. Build the Docker image:
   ```bash
   docker build -t quick-deployer .
   ```
2. Run the Docker container:
   ```bash
   docker run -p 3000:3000 quick-deployer
   ```
3. Open your browser and go to [http://localhost:3000](http://localhost:3000)
