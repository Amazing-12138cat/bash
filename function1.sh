#!/bin/bash

print() {
        read -p 'what is your name:' name
        echo $name
        echo "hello $name,nice to meet you"
}
print
