# Code Climate Shredder

![](https://upload.wikimedia.org/wikipedia/en/5/59/TMNT1987_Shredder.png)

## Overview

A minimalist Docker image for securely removing data from directories.

## Usage

Mount directories to shred & pass their mounted paths to the container. Targets
are intended to be `rm -rf`ed, so you should mount the *parent* of the file you
want deleted, but specify the mounted path to the file you want deleted as an
argument.

```
> docker run --rm \
  --volume "/my/data:/tmp/target1" \
  --volume "/other/data:/tmp/target2" \
  codeclimate/shredder /tmp/target1/dir-to-del /tmp/target2/other-target
```
