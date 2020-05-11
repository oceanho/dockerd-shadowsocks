#!/bin/bash
#

function enableHttpProxy(){
  echo enableHttpProxy
}

function enableHttpsProxy(){
  echo enableHttpsProxy
}

function enableSocksProxy(){
  echo enableSocksProxy
}

function enableAllProxy(){
   enableHttpProxy
   enableHttpsProxy
   enableSocksProxy
}

export enableHttpProxy
export enableHttpsProxy
export enableSocksProxy
export enableAllProxy
