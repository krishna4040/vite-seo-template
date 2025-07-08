.DEFAULT_GOAL := help

# === Bun Scripts ===
dev:
	bun run dev
build:
	bun run build
install:
	bun install
lint:
	bun run lint
lint-fix:
	bun run lint:fix
preview:
	bun run preview
test:
	bun run test
release:
	bun run release
clean:
	rm -rf dist .bun .turbo .cache node_modules .vite tsconfig.*.tsbuildinfo

# === Docker Commands ===
build-docker:
	docker build -t krishna4040/vite-seo-template .
clean-docker:
	docker rmi krishna4040/vite-seo-template || true
	docker system prune -f
run-docker:
	docker run -it --rm -p 8080:80 krishna4040/vite-seo-template

# === Help ===
help:
	@echo "Usage: make <command>"
	@echo ""
	@echo "Project Commands:"
	@echo "  install        Install dependencies with Bun"
	@echo "  dev            Run Vite development server"
	@echo "  build          Build TypeScript + Vite app"
	@echo "  preview        Preview production build"
	@echo "  lint           Run ESLint"
	@echo "  lint-fix       Auto-fix lint issues"
	@echo "  test           Run tests (stubbed)"
	@echo "  release        Release via release-it"
	@echo "  clean          Remove build & temp files"
	@echo ""
	@echo "Docker Commands:"
	@echo "  build-docker   Build Docker image"
	@echo "  clean-docker   Remove image and prune system"
	@echo "  run-docker     Run container at http://localhost:8080"
