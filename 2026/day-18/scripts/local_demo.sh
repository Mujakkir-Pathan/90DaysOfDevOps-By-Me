#!/bin/bash

name="pathan"

func_a(){
       local name="mujakkir"
       echo "Inside func_a: $name"
}

func_b(){
	 name="khan"
	 echo "Inside func_b: $name"
}

func_a

echo "Outside after func_a: $name"

func_b

echo "Outside after func_b: $name"

