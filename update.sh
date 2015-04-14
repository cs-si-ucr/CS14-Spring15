#!/bin/bash

mkdocs build --clean
mkdocs build
rm -r css fonts img js index.html lab_week* license
mv site/* .
