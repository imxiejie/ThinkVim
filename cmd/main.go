// Package main provides ...
package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"sync"

	"github.com/AlecAivazis/survey/v2"
)

var (
	homepath        = os.Getenv("HOME")
	langpluginsfile string
	wg              sync.WaitGroup
)

func main() {
	userlangs := cliqs()
	for _, v := range userlangs {
		langpluginsfile = homepath + "/.config/nvim/lang/" + v + ".yaml"
		wg.Add(1)
		go writeuserplugins(&wg, langpluginsfile)
	}
	wg.Wait()
	fmt.Println("generat your languages plugins.yaml success")
}

func writeuserplugins(wg *sync.WaitGroup, filename string) {
	userplugins := homepath + "/.thinkvim.d/plugins.yaml"
	mu := sync.RWMutex{}
	mu.RLock()
	f, err := os.OpenFile(userplugins, os.O_CREATE|os.O_APPEND|os.O_WRONLY, 0644)
	if err != nil {
		log.Fatalln("Open user plugins.yaml failed!")
	}
	content, _ := ioutil.ReadFile(filename)
	_, err = f.Write(content)
	if err != nil {
		log.Fatalln("write to user plugins.yaml failed")
		os.Exit(1)
	}
	wg.Done()
	f.Close()
	mu.RUnlock()
}

func cliqs() []string {
	answers := []string{}
	var langquestion = []*survey.Question{
		{
			Name: "LanguageQuestion",
			Prompt: &survey.MultiSelect{
				Message: "What languages do you write:",
				Options: []string{
					"c-family",
					"R",
					"javascript",
					"typescript",
					"vue",
					"go",
					"rust",
					"haskell",
					"php",
					"ruby",
					"scala",
					"shell",
					"lua",
					"python",
					"dockerfile",
					"json",
					"nginx",
					"toml",
					"web",
				},
			},
		},
	}
	err := survey.Ask(langquestion, &answers, survey.WithIcons(func(icons *survey.IconSet) {
		icons.UnmarkedOption.Text = "○"
		icons.MarkedOption.Text = "◉"
	}), survey.WithPageSize(18))
	if err != nil {
		panic(err)
	}
	return answers
}
