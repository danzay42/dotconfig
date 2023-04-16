#!/usr/bin/env python3 
import os
import sys
from pathlib import Path
import subprocess
from argparse import ArgumentParser, ArgumentDefaultsHelpFormatter


PACMAN = ["pacman", "apt", "dnf"]
PACKAGES = [
    "fish",
    "bash",
    "zsh",
]
CMDS = [
    "curl -sSL https://install.python-poetry.org | python3 -",
    "curl -sS https://starship.rs/install.sh | sh",
    ""
]


class Environment:
    pass



def install():
    parser = ArgumentParser(
        description="""My tool installator"""
    )
    params = parser.parse_args()

    

if __name__ == "__main__":
    install() 
