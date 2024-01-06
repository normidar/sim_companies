
.DEFAULT_GOAL := help
.PHONY: help
help:
	@echo "List of available make commands";
	@echo "";
	@grep -hE '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}';
	@echo "";


.PHONY: export
export: ## EXPORT
	scripts/export.sh
