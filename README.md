# AliExpress fake site detector

There are a bunch of fake machine-translated websites out there with the sole purpose of redirecting you to AliExpress.   
You can read more about them in [this Google Search Help thread](https://support.google.com/websearch/thread/111669340/i-have-discovered-that-99-search-results-redirect-me-to-aliexpress-they-all-are-fake-online-stores?hl=en).

This repository contains a spreadsheet of common terms that bring out a lot of these sites, which is used by a script (currently not open-source in order to avoid counter-measures) that detects them and builds a list of their domains.

That list can then be used by [uBlacklist](https://github.com/iorate/uBlacklist) or another blocking tool to rid your search results of these sites.

## How to use

Install uBlacklist from one of these links: [Firefox](https://addons.mozilla.org/en-US/firefox/addon/ublacklist) | [Google Chrome](https://chrome.google.com/webstore/detail/ublacklist/pncfbmialoiaghdehhbnbhkkgmjanfhe) | [Safari](https://apps.apple.com/us/app/ublacklist-for-safari/id1547912640)

Open uBlacklist settings:   

![image](https://user-images.githubusercontent.com/3891092/150679333-c301d7db-5b22-4738-a1b3-a1eb1b322a0c.png)



At the very bottom, add a new subscription:

![image](https://user-images.githubusercontent.com/3891092/150679015-4fe5494a-9195-446f-9b8a-c9e640fbfc49.png)

Paste in this link:

```
https://raw.githubusercontent.com/franga2000/aliexpress-fake-sites/main/domains_uBlacklist.txt
```

![image](https://user-images.githubusercontent.com/3891092/150679054-9a9236f5-81c0-4d6a-b539-73af1821bc93.png)
