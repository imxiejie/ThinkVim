// Package main provides ...
package main

import (
	"fmt"
	"strings"
	"testing"
)

func TestGetColorScheme(t *testing.T) {
	var tests = []struct {
		a    []string
		want string
	}{
		{[]string{"NLKNguyen/papercolor-theme", "ayu-theme/ayu-vim"}, "PaperColor"},
		{[]string{"joshdick/onedark.vim", "arcticicestudio/nord-vim"}, "onedark"},
		{[]string{"lifepillar/vim-solarized8", "mhartington/oceanic-next"}, "solarized8"},
	}
	for key, test := range tests {
		testname := fmt.Sprintf("%d,%s", key, test.want)
		t.Run(testname, func(t *testing.T) {
			actual := GetColorScheme(test.a)
			if strings.EqualFold(actual, test.want) {
				t.Errorf(" value is %s,expected is %s", actual, test.want)
			}
		})
	}
}
