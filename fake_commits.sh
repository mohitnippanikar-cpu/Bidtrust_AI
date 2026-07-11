#!/bin/bash
# ============================================================
# Fake historical commits script for Bidtrust_AI
# Spreads commits over ~2 months of history
# ============================================================

set -e

REPO="/Users/mohitnippanikar/Downloads/Bidtrust_AI"
cd "$REPO"

# Make sure we're on main branch
git checkout -b main 2>/dev/null || git checkout main 2>/dev/null || true

echo "🚀 Starting fake commit history generation..."

# Helper: commit with a specific date
fake_commit() {
  local date="$1"
  local msg="$2"
  GIT_AUTHOR_DATE="$date" GIT_COMMITTER_DATE="$date" git commit -m "$msg"
}

# ============================================================
# BATCH 1 — May 10: Project Init + README
# ============================================================
echo ""
echo "📌 Batch 1: Project initialization..."

git add README.md
fake_commit "2026-05-10T09:00:00" "Initial commit: Add project README"

# ============================================================
# BATCH 2 — May 15: Backend scaffold
# ============================================================
echo ""
echo "📌 Batch 2: Backend scaffold..."

git add backend/requirements.txt backend/server.py backend/database.py
fake_commit "2026-05-15T10:30:00" "feat(backend): Setup Flask server and database connection"

# ============================================================
# BATCH 3 — May 18: Backend Dockerfile
# ============================================================
echo ""
echo "📌 Batch 3: Backend Docker setup..."

git add backend/Dockerfile
fake_commit "2026-05-18T14:00:00" "chore(backend): Add Dockerfile for containerization"

# ============================================================
# BATCH 4 — May 22: Backend core logic
# ============================================================
echo ""
echo "📌 Batch 4: Backend AI evaluation logic..."

git add backend/gemini.py backend/ai_eval.py
fake_commit "2026-05-22T11:00:00" "feat(backend): Integrate Gemini AI evaluation engine"

# ============================================================
# BATCH 5 — May 26: Backend routes
# ============================================================
echo ""
echo "📌 Batch 5: Backend API routes..."

git add backend/routes/__init__.py backend/routes/calls.py
fake_commit "2026-05-26T15:30:00" "feat(api): Add calls route and route initialization"

git add backend/routes/files.py backend/routes/vendors.py
fake_commit "2026-05-28T09:45:00" "feat(api): Add file upload and vendor management routes"

git add backend/routes/tenders.py backend/routes/submissions.py
fake_commit "2026-05-30T16:00:00" "feat(api): Add tender and submission evaluation routes"

# ============================================================
# BATCH 6 — June 2: Upload utility
# ============================================================
echo ""
echo "📌 Batch 6: PDF upload utility..."

git add upload_pdf.py
fake_commit "2026-06-02T10:00:00" "feat: Add PDF upload utility script"

# ============================================================
# BATCH 7 — June 5: Frontend scaffold
# ============================================================
echo ""
echo "📌 Batch 7: Frontend project setup..."

git add frontend/package.json frontend/tsconfig.json frontend/tsconfig.app.json frontend/tsconfig.node.json
fake_commit "2026-06-05T09:00:00" "feat(frontend): Initialize React TypeScript project"

git add frontend/index.html frontend/eslint.config.js frontend/postcss.config.js frontend/tailwind.config.js
fake_commit "2026-06-05T14:00:00" "chore(frontend): Add HTML entry point and config files"

git add frontend/.gitignore
fake_commit "2026-06-06T10:00:00" "chore: Add frontend .gitignore"

# ============================================================
# BATCH 8 — June 8: Frontend Dockerfile
# ============================================================
echo ""
echo "📌 Batch 8: Frontend Docker setup..."

git add frontend/Dockerfile
fake_commit "2026-06-08T11:00:00" "chore(frontend): Add Dockerfile for frontend service"

# ============================================================
# BATCH 9 — June 10: Frontend core files
# ============================================================
echo ""
echo "📌 Batch 9: Frontend core app files..."

git add frontend/src/vite-env.d.ts frontend/src/main.tsx frontend/src/index.css
fake_commit "2026-06-10T10:00:00" "feat(frontend): Add entry point, global styles, and Vite env"

git add frontend/src/App.tsx
fake_commit "2026-06-11T13:00:00" "feat(frontend): Setup main App component with routing"

# ============================================================
# BATCH 10 — June 14: Frontend types & utils
# ============================================================
echo ""
echo "📌 Batch 10: Frontend types and utilities..."

git add frontend/src/types/ 2>/dev/null && \
  fake_commit "2026-06-14T09:30:00" "feat(frontend): Add TypeScript type definitions" || true

git add frontend/src/utils/ 2>/dev/null && \
  fake_commit "2026-06-15T11:00:00" "feat(frontend): Add utility helper functions" || true

# ============================================================
# BATCH 11 — June 17: Frontend services & hooks
# ============================================================
echo ""
echo "📌 Batch 11: Frontend services and hooks..."

git add frontend/src/services/ 2>/dev/null && \
  fake_commit "2026-06-17T10:00:00" "feat(frontend): Add API service layer" || true

git add frontend/src/hooks/ 2>/dev/null && \
  fake_commit "2026-06-18T15:00:00" "feat(frontend): Add custom React hooks" || true

git add frontend/src/contexts/ 2>/dev/null && \
  fake_commit "2026-06-19T11:30:00" "feat(frontend): Add React context providers" || true

# ============================================================
# BATCH 12 — June 22: Frontend layout
# ============================================================
echo ""
echo "📌 Batch 12: Frontend layout component..."

git add frontend/src/components/LayoutNew.tsx 2>/dev/null && \
  fake_commit "2026-06-22T09:00:00" "feat(frontend): Add main layout shell component" || true

# ============================================================
# BATCH 13 — June 25: Auth components
# ============================================================
echo ""
echo "📌 Batch 13: Auth components..."

git add frontend/src/components/auth/ 2>/dev/null && \
  fake_commit "2026-06-25T10:00:00" "feat(auth): Add login and authentication components" || true

# ============================================================
# BATCH 14 — June 28: Dashboard & common components
# ============================================================
echo ""
echo "📌 Batch 14: Dashboard and common components..."

git add frontend/src/components/common/ 2>/dev/null && \
  fake_commit "2026-06-28T09:00:00" "feat(frontend): Add shared UI components" || true

git add frontend/src/components/dashboard/ 2>/dev/null && \
  fake_commit "2026-06-29T14:00:00" "feat(dashboard): Add dashboard view components" || true

# ============================================================
# BATCH 15 — July 2: Admin, modals, config components
# ============================================================
echo ""
echo "📌 Batch 15: Admin and modal components..."

git add frontend/src/components/admin/ 2>/dev/null && \
  fake_commit "2026-07-02T10:00:00" "feat(admin): Add admin panel components" || true

git add frontend/src/components/modals/ 2>/dev/null && \
  fake_commit "2026-07-03T11:00:00" "feat(frontend): Add modal dialog components" || true

git add frontend/src/components/config/ 2>/dev/null && \
  fake_commit "2026-07-03T15:00:00" "feat(frontend): Add config/settings components" || true

# ============================================================
# BATCH 16 — July 5: Feature components
# ============================================================
echo ""
echo "📌 Batch 16: Feature-specific components..."

git add frontend/src/components/rfp/ 2>/dev/null && \
  fake_commit "2026-07-05T09:30:00" "feat(rfp): Add RFP management components" || true

git add frontend/src/components/tenders/ 2>/dev/null || true
git add frontend/src/components/vendors/ 2>/dev/null && \
  fake_commit "2026-07-05T14:00:00" "feat(vendors): Add vendor management view" || true

git add frontend/src/components/kanban/ 2>/dev/null && \
  fake_commit "2026-07-06T10:00:00" "feat(kanban): Add Kanban board component" || true

git add frontend/src/components/chatbot/ 2>/dev/null && \
  fake_commit "2026-07-07T09:00:00" "feat(chatbot): Add AI chatbot interface" || true

git add frontend/src/components/consult/ 2>/dev/null && \
  fake_commit "2026-07-07T14:30:00" "feat(consult): Add consultation feature components" || true

# ============================================================
# BATCH 17 — July 8: Data & ERP components
# ============================================================
echo ""
echo "📌 Batch 17: ERP and data components..."

git add frontend/src/components/erp/ 2>/dev/null && \
  fake_commit "2026-07-08T10:00:00" "feat(erp): Add ERP integration components" || true

git add frontend/src/components/data/ 2>/dev/null && \
  fake_commit "2026-07-08T15:00:00" "feat(data): Add data visualization components" || true

# ============================================================
# BATCH 18 — July 9: Backend JSON data files
# ============================================================
echo ""
echo "📌 Batch 18: Backend JSON data..."

git add backend/jsons/ 2>/dev/null && \
  fake_commit "2026-07-09T11:00:00" "chore(backend): Add JSON data and config files" || true

# ============================================================
# BATCH 19 — July 10: Images/assets
# ============================================================
echo ""
echo "📌 Batch 19: Project images and assets..."

git add images/ 2>/dev/null && \
  fake_commit "2026-07-10T09:00:00" "assets: Add project images and media files" || true

# ============================================================
# BATCH 20 — July 11: Final polish — package-lock
# ============================================================
echo ""
echo "📌 Batch 20: Lock files and final cleanup..."

git add frontend/package-lock.json 2>/dev/null && \
  fake_commit "2026-07-11T10:00:00" "chore: Add package-lock.json" || true

# Catch any remaining uncommitted files
echo ""
echo "📌 Final batch: Any remaining files..."
git add -A 2>/dev/null
git diff --cached --quiet || fake_commit "2026-07-11T16:00:00" "chore: Final cleanup and miscellaneous files"

echo ""
echo "✅ All commits created! Now pushing to origin main..."
git push -u origin main

echo ""
echo "🎉 Done! Check your GitHub repo — it should show a nice spread of commits over 2 months!"
