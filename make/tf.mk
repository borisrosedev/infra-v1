TF_DIR=infra
TF_ENV_DIR=infra/envs/$(ENV)

tf.init: ## initialize terraform project
	@terraform -chdir=$(TF_ENV_DIR) init -input=false -lock=false
tf.fmt: ## fmt .tf
	@terraform -chdir=$(TF_DIR) fmt -diff -recursive
tf.fmt.check: ## checks if .tf are formatted
	@terraform -chdir=$(TF_DIR) fmt -check -recursive
tf.ok: ## validates .tf
	@terraform -chdir=$(TF_DIR) validate

.PHONY: tf.init tf.fmt.check tf.fmt tf.ok
