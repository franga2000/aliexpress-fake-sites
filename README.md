# AliExpress fake site detector

There are a bunch of fake machine-translated websites out there with the sole purpose of redirecting you to AliExpress.   
You can read more about them in [this Google Search Help thread](https://support.google.com/websearch/thread/111669340/i-have-discovered-that-99-search-results-redirect-me-to-aliexpress-they-all-are-fake-online-stores?hl=en).

This repository contains a spreadsheet of common terms that bring out a lot of these sites, which is used by a script (currently not open-source in order to avoid counter-measures) that detects them and builds a list of their domains.

That list can then be used by [uBlacklist](https://github.com/iorate/uBlacklist) or another blocking tool to rid your search results of these sites.
