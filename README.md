# libthai4r

Ruby Libthai binding for Ruby 1.9.x.

Original project http://code.google.com/p/libthai4r

## Install Prerequisite Packages

### Required-Package: libdatrie

#### For Ubuntu users

	$ sudo apt-get install libdatrie-dev libdatrie1

#### Manually

	$ wget ftp://linux.thai.net/pub/thailinux/software/libthai/libdatrie-0.2.5.tar.gz
	$ tar zxvf libdatrie-0.2.5.tar.gz
	$ cd libdatrie-0.2.5
	$ ./configure
	$ make
	$ sudo make install

### Required-Package: libthai

#### For Ubuntu users

	$ sudo apt-get install libthai-dev libthai0
	
#### Manually

	$ wget http://linux.thai.net/pub/thailinux/software/libthai/libthai-0.1.18.tar.gz
	$ tar zxvf libthai-0.1.18.tar.gz 
	$ cd libthai-0.1.18/
	$ ./configure 
	$ make
	$ sudo make install

## Install LibThai4R

	$ mkdir libthai4r && curl -L https://github.com/ptantiku/libthai4r/tarball/master | tar xz --strip 1 -C libthai4r
	$ cd libthai4r	#( If use rvm, edit libthai4r/.rvmrc to your default ruby version, then re-enter the directory )
	$ sudo ruby extconf.rb #( if use rvm ⇒ $ rvmsudo ruby extconf.rb )
	$ make
	$ sudo make install

You can test with test file in test folder.

	$ ruby test/thbrk.rb
	ภาษา|ไทย|เป็น|ภาษา|ที่|ง่าย|ที่สุด|ใน|โลก

## Usage

You much install iconv. If You using RMV you can do follow this http://beginrescueend.com/packages/iconv

	#!/usr/bin/env ruby
	# encoding: utf-8
	require 'libthai4r'

	# libthai requires input to be tis620/windows874 (one-byte char)
	input = 'ภาษาไทยเป็นภาษาที่ง่ายที่สุดในโลก'
	input_windows874 = input.encode('Windows-874', :undef => :replace,:replace => '')

	# break words in the line
	output_windows874 = LibThai::brk_line(input_windows874)

	# encode back to UTF-8
	output = output_windows874.encode('UTF-8')

	print output

Result

	ภาษา|ไทย|เป็น|ภาษา|ที่|ง่าย|ที่สุด|ใน|โลก

## License

Original Work: Copyright © 2011 Phuwanart Larpmark, released under the MIT license

Modified Work: Copyright © 2012 Phitchayaphong Tantikul, released under the MIT license
