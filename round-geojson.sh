#!/usr/bin/env bash

json -o json-0 -e 'this.features.forEach(function (f) {
        f.geometry.coordinates.forEach(function (poly) {
            poly.forEach(function (c, i) {
	        if (Array.isArray(c[0])) {
                    c.forEach(function (d, j) {
	                c[j] = [+d[0].toFixed(6), +d[1].toFixed(6)];
	            });
		}
                else {
	            poly[i] = [+c[0].toFixed(6), +c[1].toFixed(6)];
	        }
	    });
        });
    })'
