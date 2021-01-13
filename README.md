fdmi
==
![Feed Update Status](https://github.com/nhomble/fdmi/workflows/Update%20Feeds/badge.svg)

My own [feed mirror](https://nhomble.github.io/fdmi/). 

#### Updating new feeds
```bash
$ echo "new.feed.rss" >> feeds
```

#### Find an old post
```bash
$ git log -G'<search string>' -p -- index.html
```

#### Dependencies
The [index.html](./index.html) is rebuilt on a schedule with [feed-cli](https://github.com/nhomble/feed-cli).

#### Inspired by:
https://github.com/jamesroutley/news.routley.io
