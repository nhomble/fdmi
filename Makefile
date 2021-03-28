FEED_CLI	=go run github.com/nhomble/feed-cli -numWorkers 1
SUB		=-templateOverride sub.tpl
INDEX		=-templateOverride index.tpl

general.html:
	cat feeds/general | $(FEED_CLI) $(SUB) > $@

social.html:
	cat feeds/social | $(FEED_CLI) $(SUB) > $@

top.html:
	cat feeds/top | $(FEED_CLI) $(SUB) > $@

papers.html:
	cat feeds/papers | $(FEED_CLI) $(SUB) > $@

twitter.html:
	cat feeds/twitter | $(FEED_CLI) $(SUB) > $@

index.html: general.html social.html top.html papers.html twitter.html
	# kinda hack with the current cli, we'll just timeout against nothing
	echo "" | $(FEED_CLI) $(INDEX) > $@

website: index.html

clean:
	rm *.html

.PHONY: clean
