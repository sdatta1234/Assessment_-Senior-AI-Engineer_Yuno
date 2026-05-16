# Quick Start Guide

## 🚀 Get Started in 5 Minutes

### Step 1: Install Dependencies (2 min)
```bash
cd c:\Users\S Datta\BMAD\Challenge
npm install
```

### Step 2: Setup Environment (1 min)
```bash
# Copy environment template
copy .env.example .env

# Edit .env with your keys (optional for local dev)
# - OPENAI_API_KEY (for agent LLM)
# - TELEGRAM_BOT_TOKEN (for Telegram integration)
```

### Step 3: Start Development (1 min)
```bash
# Start both services
npm run dev

# OR start individually in different terminals:
npm run dev:backend    # Backend on http://localhost:3000
npm run dev:frontend   # Frontend on http://localhost:5173
```

### Step 4: Test It (1 min)
- Open http://localhost:5173 in browser
- See Dashboard with navigation menu
- Backend health check: http://localhost:3000/health

## 📝 Next Steps

### For Backend Development
1. Read [ARCHITECTURE.md](./docs/ARCHITECTURE.md)
2. Implement database layer in `backend/src/db/`
3. Build agent runtime in `backend/src/agents/`
4. Create workflow engine in `backend/src/workflows/`

### For Frontend Development
1. Review `frontend/src/pages/` structure
2. Build components in `frontend/src/components/`
3. Add API services in `frontend/src/services/`
4. Implement state management in `frontend/src/store/`

### For Full-Stack Development
1. Setup a Telegram bot (get token from @BotFather)
2. Configure OpenAI API key
3. Follow workflow in [CONTRIBUTING.md](./docs/CONTRIBUTING.md)

## 🐳 Using Docker

```bash
# Build and start with Docker Compose
npm run docker:build
npm run docker:up

# Access services
# Frontend: http://localhost:5173
# Backend: http://localhost:3000

# View logs
docker-compose logs -f backend

# Stop services
npm run docker:down
```

## 📚 Important Files

| File | Purpose |
|------|---------|
| [README.md](./README.md) | Project overview |
| [ARCHITECTURE.md](./docs/ARCHITECTURE.md) | System design |
| [API.md](./docs/API.md) | API endpoints |
| [DEPLOYMENT.md](./docs/DEPLOYMENT.md) | Production setup |
| [CONTRIBUTING.md](./docs/CONTRIBUTING.md) | Dev guidelines |
| [PROJECT.md](./docs/PROJECT.md) | Progress tracker |

## 🔧 Useful Commands

```bash
# Development
npm run dev                      # Start all services
npm run dev:backend             # Backend only
npm run dev:frontend            # Frontend only

# Building
npm run build                   # Build all
npm run build:backend           # Backend only
npm run build:frontend          # Frontend only

# Quality
npm run lint                    # Lint all
npm run test                    # Run tests

# Database
npm --workspace=backend run migrate   # Run migrations

# Docker
npm run docker:build            # Build images
npm run docker:up               # Start services
npm run docker:down             # Stop services
```

## 📱 Testing Telegram Integration (When Ready)

1. Create bot: Message @BotFather on Telegram
2. Get token: Copy from @BotFather
3. Add to .env: `TELEGRAM_BOT_TOKEN=your-token`
4. Restart backend: `npm run dev:backend`
5. Chat with your bot on Telegram

## ❓ Troubleshooting

### "npm: command not found"
- Install Node.js from https://nodejs.org (version 18+)

### "Port 3000 already in use"
```bash
# Kill process using port
lsof -ti:3000 | xargs kill -9
```

### Frontend not connecting to backend
- Check backend is running on http://localhost:3000
- Check browser console for CORS errors
- Verify proxy config in `frontend/vite.config.ts`

### Database errors
```bash
# Reset database
rm backend/dev.db
npm run dev:backend  # Recreates tables
```

## 📞 Need Help?

1. Check [ARCHITECTURE.md](./docs/ARCHITECTURE.md) for design questions
2. Review [API.md](./docs/API.md) for endpoint questions
3. See [CONTRIBUTING.md](./docs/CONTRIBUTING.md) for development questions
4. Check [PROJECT.md](./docs/PROJECT.md) for status and roadmap

---

**Ready to develop! 🎉**

Start with reading the docs, then check out the next phase tasks in [PROJECT.md](./docs/PROJECT.md)
