resource "aws_identitystore_user" "example" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.example.identity_store_ids)[0]

  display_name = "John Doe"
  user_name    = "johndoe"

  name {
    given_name  = "John"
    family_name = "Doe"
  }

  emails {
    value = "john@example.com"
  }
}


data "aws_identitystore_user" "example" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.example.identity_store_ids)[0]

  alternate_identifier {
    unique_attribute {
      attribute_path  = "UserName"
      attribute_value = "ExampleUser"
    }
  }
}