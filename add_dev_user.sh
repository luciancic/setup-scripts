#!/bin/bash

# Add dev user and give sudo permission

adduser dev 
usermod -aG sudo dev
