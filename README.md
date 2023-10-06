<a name='readme-top'></a>

<br />
<div align='center'>
  <h3 align='center'>Simbna</h3>
  <p align='center'>
    <em>A build system</em>
    <br/>
  </p>
</div>

<div align='center'>
  <img width="600px" height="300px" src='assets/brand/simba-flies-away.gif' alt='Simbna gif'/>
</div>

## About the project

**Simbna** pronounced *simba*, (the n is silent) (just like the character from
Lion King) is sort for 'Simple build, not GNU Autotools'.

Simbna is an extremely rudimentary build "system" heavily influenced by the
software suite GNU Autotools and general GNU hacker culture.

[GNU Automake](https://www.gnu.org/software/automake/manual/automake.html)

[GNU Autoconf](https://www.gnu.org/savannah-checkouts/gnu/autoconf/manual/autoconf-2.71/autoconf.html)

[GNU Coding Standards](https://www.gnu.org/prep/standards/standards.html)

It's focus is on small projects of any language that do not want to make use of
a full blown build system, have no need for it, or one does not even exist for
their language, but could do with some automation and standardization.

The author hopes that one might even enjoy the feeling one gets when their tool
is simple enough to be able to grasp it in whole. (for those of us with a small
brain!)


## Getting started

Simbna can only be used in unix-like OS's. It does not support Windows.

However one may use the windows subsystem for linux(wsl) or cygwin.

### Prerequisites

- git
- bash

  The bash version in my local development environment is:

  GNU bash, version 5.1.16(1)-release (x86_64-pc-linux-gnu)

### Installation

```bash
git clone git@github.com:pnoulis/simbna.git
./configure --prefix=XDG
make && make install
```

## Usage

```bash
# Create a project
mkdir ~/projects/bubbly
cd ~/projects/bubbly
# Initialize simbna
simbna --init .
```

## Development

### Configuring simbna for development

```bash
./configure --dev
```

## Contributing

1. Fork the project
2. Open a pull request

## License
Distributed under the GPLv3 License. See `LICENSE.txt` for more information.

## Contact

Pavlos noulis - pavlos.noulis@gmail.com

project link - [Simbna](https://github.com/pnoulis/simbna)
