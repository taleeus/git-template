# Git Template
Template for my personal projects. Contains useful hooks for my workflows.

## Flow
```mermaid
graph TD
	commit[Commit]
	checkmsg(Check if the commit message satisfies Conventional Commits)
	test(Execute tests, if any)
	push(Push)
	is-main{Are you pushing to main?}
	tag(Generate SemVer tag)
	push-complete(Push complete)
	complete[End]

	commit --> checkmsg
	checkmsg --> test
	test --> push
	push --> is-main
	is-main -->|true| tag
	tag --> push-complete
	push-complete --> complete
	is-main -->|false| complete
```

### Notes
#### Why not GitHub Actions for your workflows?
TLDR: I hate them, I don't need them outside work and they are almost always overkill.
- They're very slow
- I don't need a container or a VM to run tests and tag a commit
- I want to do checks _before_ committing and pushing
