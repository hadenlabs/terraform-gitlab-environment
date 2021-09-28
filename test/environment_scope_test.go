package test

import (
	"testing"

	"os"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestScopeSuccess(t *testing.T) {
	t.Parallel()
	groupName := "hadenlabs-test"
	projectName := "test-repository"
	scope := "develop"
	gitlabAccessToken := os.Getenv("GITLAB_ACCESS_TOKEN")
	variables := map[string]interface{}{
		"VAR1": "var 1",
	}

	terraformOptions := &terraform.Options{
		// The path to where your Terraform code is located
		TerraformDir: "environment-scope",
		Upgrade:      true,
		Vars: map[string]interface{}{
			"group_name":   groupName,
			"project_name": projectName,
			"variables":    variables,
			"scope":        scope,
			"gitlab_token": gitlabAccessToken,
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)
}
