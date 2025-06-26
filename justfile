set allow-duplicate-recipes

refresh-hooks:
    @rm .git/justfile
    @find .git/hooks -type f -maxdepth 1 ! -name *.custom | xargs rm
    @git init --template $HOME/Dev/Personal/Projects/git-template

test:
    @echo "Test recipe not implemented"
