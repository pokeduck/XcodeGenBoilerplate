#!/bin/sh

rswift_filename="R.generated.swift"

if [ -f "$rswift_filename" ]; then
    echo "$rswift_filename exists."
else 
    touch $rswift_filename
fi