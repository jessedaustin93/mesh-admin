#!/bin/bash
git add .
git commit -m "${1:-quick commit}"
git push
