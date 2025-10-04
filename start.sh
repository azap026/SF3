#!/bin/bash

# Start backend server
echo "🚀 Starting backend server on port 3002..."
cd server && npm start &
BACKEND_PID=$!
cd ..

# Wait a bit for backend to start
sleep 3

# Start frontend server  
echo "🚀 Starting frontend server on port 3000..."
npm start &
FRONTEND_PID=$!

echo ""
echo "✅ Project started!"
echo "📊 Backend running on: http://localhost:3002"
echo "🌐 Frontend running on: http://localhost:3000"
echo ""
echo "Backend PID: $BACKEND_PID"
echo "Frontend PID: $FRONTEND_PID"
echo ""
echo "To stop the servers:"
echo "  kill $BACKEND_PID $FRONTEND_PID"
