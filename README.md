# ScanData
Server for comic scan data.

See [ComicScanner](https://github.com/jcolag/ComicScanner) for a more detailed discussion.  That is designed to be the key client for this web service.

However, in short, _ScanData_ is intended to be a web service similar in spirit to the venerable [Compact Disc Database](https://en.wikipedia.org/wiki/CDDB) or its successor [freedb](https://en.wikipedia.org/wiki/Freedb), except for comic book scan archive files.

While it may change over time, the current vision is for _ScanData_ to be a straightforward [CRUD](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete) site, with a standard [REST](https://en.wikipedia.org/wiki/Representational_state_transfer) API for clients to use for accessing or updating the data.

##Architecture and Schema

Coming Soon, though the architecture is primarily a straightforward Ruby on Rails application.

##API

TBD, though almost certainly using [JSON](http://json.org/)-based [REST](https://en.wikipedia.org/wiki/Representational_state_transfer) calls.

The current thinking is that three API calls are necessary to start.

 - `/submission/new.json`, primarily for tools such as _ComicScanner_, allows `POST`ing of a JSON array of objects with automatically-readable file information that can be used to fill the various parts of the file model.  Such tools must notify the user that submissions are not complete until visiting the website to hand-input the remaining data.  (__Note__:  As the API becomes more flexible, it might be reasonable for a client program to collect this information from the user and `POST` it through the proper channel, but that would be a future plan.)

 - `/documents/`_hash_`.json`, primarily for comic-reading applications, returns the relevant JSON `document`, `archive`, `image`, `alias`, and `inclusion` objects for the submitted hash value, minus any sensitive data.  (__Note__:  Eventually, this will have an interface that allows for `POST`ing a JSON array of hash values, returning arrays of objects.)

 - `/aliases/`_name_`.json`, also for comic-reading applications, returns an array of JSON `document` objects that have the same or similar names.

If [XML](https://en.wikipedia.org/wiki/XML) turns out to be popular, that can be turned on, as well, though it appears to be falling out of favor.

##Data Storage

As mentioned in the _ComicScanner_ project, data from this project will be made freely available, as is the code for both the client and server, under liberal licensing terms.

The intent is to make it easy to reconstruct the infrastructure, should anything happen to it.  The only information that won't be shared is information on users, except possibly in aggregate.
