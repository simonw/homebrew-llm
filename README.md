# homebrew-llm

Homebrew formula for installing the [LLM](https://llm.datasette.io/) family of tools.

## Installing llm

[LLM](https://llm.datasette.io/) lets you run prompts against large language models from the command-line.
```bash
brew install simonw/llm/llm
```
Example:
```bash
llm 'Ten great names for a pet pelican'
```
## Installing strip-tags

[strip-tags](https://github.com/simonw/strip-tags) strip tags from HTML, useful for feeding content to a large language model while keeping the token count down.
```bash
brew install simonw/llm/strip-tags
```
Example:
```bash
curl -s 'https://www.nytimes.com/' | strip-tags | llm --system 'Summarize headlines'
```
## Installing symbex

[symbex](https://github.com/simonw/symbex) is a tool for finding Python functions and classes within a codebase. It can also output just the signatures or docstrings of code that it finds.
```bash
brew install simonw/llm/symbex
```
Example - this finds the `def inspect_hash()` function and explains what it does:
```bash
symbex inspect_hash | llm --system 'explain this code'
```
