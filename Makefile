.PHONY: all

all:
  cat fixtures/exercises.json | jq 'map({name: .name.en, muscle: .muscle, description: .description})'