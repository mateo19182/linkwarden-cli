PREFIX ?= $(HOME)/.local
BINDIR = $(PREFIX)/bin

.PHONY: install uninstall

install:
	@echo "Installing linkwarden-add to $(BINDIR)/"
	@mkdir -p $(BINDIR)
	@cp linkwarden-add $(BINDIR)/
	@chmod +x $(BINDIR)/linkwarden-add
	@echo "✅ Installed successfully!"
	@echo ""
	@echo "Make sure $(BINDIR) is in your PATH:"
	@echo "  export PATH=\"$(BINDIR):\$$PATH\""
	@echo ""
	@echo "Create config at ~/.config/linkwarden/config.env:"
	@echo "  LINKWARDEN_URL=https://links.example.com"
	@echo "  LINKWARDEN_TOKEN=your_api_token"

uninstall:
	@echo "Removing linkwarden-add from $(BINDIR)/"
	@rm -f $(BINDIR)/linkwarden-add
	@echo "✅ Uninstalled successfully!"
