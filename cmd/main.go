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

var Homepath = os.Getenv("HOME")

func main() {
	userlangs := cliqs()
	var langpluginsfile string
	wg := sync.WaitGroup{}
	for _, v := range userlangs {
		langpluginsfile = Homepath + "/.config/nvim/lang/" + v + ".yaml"
		wg.Add(1)
		go writefile(&wg, langpluginsfile)
	}
	wg.Wait()
	fmt.Println("success")
}

func writefile(wg *sync.WaitGroup, filename string) {
	userplugins := Homepath + "/.thinkvim.d/plugins.yaml"
	mu := sync.RWMutex{}
	mu.RLock()
	f, err := os.OpenFile(userplugins, os.O_CREATE|os.O_APPEND|os.O_WRONLY, 0644)
	if err != nil {
		log.Fatalln("Open user plugins.yaml failed!")
	}
	content, _ := ioutil.ReadFile(filename)
	_, err = f.Write(content)
	if err != nil {
		log.Fatalln("write to thinkvim/plugins.yaml failed")
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
					"javascript",
					"typescript",
					"vue",
					"go",
					"rust",
					"python",
					"docker",
					"json",
					"nginx",
					"toml",
				},
			},
		},
	}
	err := survey.Ask(langquestion, &answers, survey.WithIcons(func(icons *survey.IconSet) {
		icons.UnmarkedOption.Text = "○"
		icons.MarkedOption.Text = "◉"
	}), survey.WithPageSize(10))
	if err != nil {
		panic(err)
	}
	return answers
}
