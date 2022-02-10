package main

import (
	"golang-service/utils"
	"testing"
)

func TestTotal(t *testing.T) {
	testCases := []struct {
		value1   int
		value2   int
		expected int
	}{
		{
			value1:   2,
			value2:   3,
			expected: 5,
		},
		{
			value1:   -1,
			value2:   1,
			expected: 0,
		},
	}
	for _, tc := range testCases {
		totalActual := utils.Total(tc.value1, tc.value2)
		if totalActual != tc.expected {
			t.Errorf("run fail")
		}
	}
}
