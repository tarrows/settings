CONFIG := nvim zellij

.PHONY: symlink
symlink:
	@for cfg in $(CONFIG); do \
		ln -s "$(PWD)/.config/$$cfg" "$(HOME)/.config/$$cfg"; \
	done

.PHONY: check
check:
	find ~/.config -type l
