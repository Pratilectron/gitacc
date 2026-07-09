# gitacc

Smart GitHub account switching for SSH-based Git workflows.

![Demo GIF](./docs/demo.gif)

## Features

- Switch between GitHub SSH identities quickly
- Interactive arrow-key dashboard and account picker
- Add and delete accounts dynamically
- Auto-generate SSH keys for new accounts
- Guide GitHub SSH key registration
- Keep per-account switch counts
- Work both inside and outside Git repositories

## Installation

```bash
git clone git@github.com:Pratilectron/gitacc.git
cd gitacc
sudo ./install.sh
```

## Usage

```bash
gitacc
gitacc list
gitacc add
gitacc delete work
gitacc personal
gitacc --help
gitacc --version
```

## Example Session

```bash
$ gitacc
# open the dashboard

$ gitacc add
# add a new account, generate keys, and register it on GitHub

$ gitacc work
# switch the current repo to the work account
```

## Why It Exists

Managing multiple GitHub SSH identities across personal and work repos is repetitive and error-prone; gitacc makes the switch predictable, fast, and interactive.
