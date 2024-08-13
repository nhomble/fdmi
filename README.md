fdmi
==

# !! Disabled

I have moved my rss feeds to [obsidian](https://obsidian.md/), so I don't need this anymore.

---

![Feed Update Status](https://github.com/nhomble/fdmi/workflows/Update%20Feeds/badge.svg)

My own [feed mirror](https://nhomble.github.io/fdmi/). 

#### Updating new feeds
```bash
$ echo "new.feed.rss" >> feeds/general
```

#### Find an old post
```bash
$ git log -G'<search string>' -p -- top.html
```

#### Dependencies
The [index.html](./index.html) is rebuilt on a schedule with [feed-cli](https://github.com/nhomble/feed-cli).

#### Inspired by:
https://github.com/jamesroutley/news.routley.io
