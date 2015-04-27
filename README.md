# ScanData
Server for comic scan data.

See [ComicScanner](https://github.com/jcolag/ComicScanner) for a more detailed discussion.  That is designed to be the key client for this web service.

However, in short, _ScanData_ is intended to be a web service similar in spirit to the venerable [Compact Disc Database](https://en.wikipedia.org/wiki/CDDB) or its successor [freedb](https://en.wikipedia.org/wiki/Freedb), except for comic book scan archive files.

While it may change over time, the current vision is for _ScanData_ to be a straightforward [CRUD](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete) site , with a standard [REST](https://en.wikipedia.org/wiki/Representational_state_transfer) API for clients to use for accessing or updating the data.

##Architecture and Schema

Coming Soon.

##API

TBD

##Data Storage

As mentioned in the _ComicScanner_ project, data from this project will be made freely available, as is the code for both the client and server, under liberal licensing terms.

The intent is to make it easy to reconstruct the infrastructure, should anything happen to it.  The only information that won't be shared is information on users, except possibly in aggregate.
