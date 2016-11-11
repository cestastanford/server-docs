index.html : server_documentation.Rmd
	pandoc --filter pandoc-citeproc --standalone --smart \
		$< -o $@

clean :
	rm -f index.html

.PHONY: clean deploy
