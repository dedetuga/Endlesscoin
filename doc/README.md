EndessCoin Core
=============

Setup
---------------------
EndessCoin Core is the original EndessCoin client and it builds the backbone of the network. It downloads and, by default, stores the entire history of EndessCoin transactions (which is currently more than 100 GBs); depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download EndessCoin Core, visit [endlesscoincore.org](https://endlesscoincore.org/en/releases/).

Running
---------------------
The following are some helpful notes on how to run EndessCoin on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/endlesscoin-qt` (GUI) or
- `bin/endlesscoind` (headless)

### Windows

Unpack the files into a directory, and then run endlesscoin-qt.exe.

### OS X

Drag EndessCoin-Core to your applications folder, and then run EndessCoin-Core.

### Need Help?

* See the documentation at the [EndessCoin Wiki](https://en.endlesscoin.it/wiki/Main_Page)
for help and more information.
* Ask for help on [#endlesscoin](http://webchat.freenode.net?channels=endlesscoin) on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net?channels=endlesscoin).
* Ask for help on the [EndessCoinTalk](https://endlesscointalk.org/) forums, in the [Technical Support board](https://endlesscointalk.org/index.php?board=4.0).

Building
---------------------
The following are developer notes on how to build EndessCoin on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [OS X Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [Gitian Building Guide](gitian-building.md)

Development
---------------------
The EndessCoin repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://dev.visucore.com/endlesscoin/doxygen/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [Travis CI](travis-ci.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [EndessCoinTalk](https://endlesscointalk.org/) forums, in the [Development & Technical Discussion board](https://endlesscointalk.org/index.php?board=6.0).
* Discuss project-specific development on #endlesscoin-core-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=endlesscoin-core-dev).
* Discuss general EndessCoin development on #endlesscoin-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=endlesscoin-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
This product includes software developed by the OpenSSL Project for use in the [OpenSSL Toolkit](https://www.openssl.org/). This product includes
cryptographic software written by Eric Young ([eay@cryptsoft.com](mailto:eay@cryptsoft.com)), and UPnP software written by Thomas Bernard.
