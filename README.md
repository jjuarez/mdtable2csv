# mdtable2csv - Convert Markdown Table To CSV File

This application convert markdown table to csv file.

[![GitHub license](https://img.shields.io/github/license/jjuarez/mdtable2csv)](https://github.com/jjuarez/istekbin-api/blob/master/LICENSE)
[![GitHub issues](https://img.shields.io/github/issues/jjuarez/mdtable2csv)](https://github.com/jjuarez/istekbin-api/issues)

## Install via Homebrew

```bash
brew tap jjuarez/mdtable2csv
brew install mdtable2csv
```

## Usage

```bash
mdtable2csv convert {filePath} {delimiter(default ',')}
```

Examples

```bash
mdtable2csv convert example/markdown.md
```

```bash
mdtable2csv convert example/markdown.md ;
```

## Result

```txt
| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |
```

```txt
Tables,Are,Cool
col 3 is,right-aligned,$1600
col 2 is,centered,$12
zebra stripes,are neat,$1
```

## Run this project

1 . Clone project on your machine

```bash
git clone git@github.com:jjuarez/mdtable2csv.git
```

2 . Change directory

```bash
cd mdtable2csv
```

3 . Build

```bash
go build .
```

4 . Run

```bash
./mdtable2csv convert example/markdown.md
```

## Run Test

```bash
go test ./cmd/
```

## TODO

- [X] Documentation
- [X] Brew repository
- [X] Test
- [ ] Argument helper
- [ ] Argument for trim option
- [ ] Argument for new file name

## Getting help

If you're having trouble getting this project running, feel free to [open an issue](https://github.com/jjuarez/mdtable2csv/issues/new)
