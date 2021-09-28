package test

import (
	"testing"

	"os"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestGroupBasic(t *testing.T) {
	t.Parallel()
	gitlabAccessToken := os.Getenv("GITLAB_ACCESS_TOKEN")
	variables := map[string]interface{}{
		"VAR1": "var 1",
	}

	terraformOptions := &terraform.Options{
		// The path to where your Terraform code is located
		TerraformDir: "environment-basic",
		Upgrade:      true,
		Vars: map[string]interface{}{
			"group_name":   "hadenlabs-test",
			"project_name": "test_repository",
			"variables":    variables,
			"gitlab_token": gitlabAccessToken,
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)
}
