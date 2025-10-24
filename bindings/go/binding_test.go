package tree_sitter_ushader_test

import (
	"testing"

	tree_sitter "github.com/smacker/go-tree-sitter"
	"github.com/taku25/tree-sitter-unreal-shader"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_ushader.Language())
	if language == nil {
		t.Errorf("Error loading hlsl grammar")
	}
}
