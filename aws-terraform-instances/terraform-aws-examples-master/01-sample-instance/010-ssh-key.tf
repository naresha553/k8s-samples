# Define ssh to config in instance

# Create default ssh publique key
resource "aws_key_pair" "user_key" {
  key_name   = "user-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTKp+lbJjBjf1EeKnD6pNhIxC3b5hVqqa83S+V+cZf9q2vmE7NbU3TJ03Mqs0pTWX1aS9G4iKpWRkpX3e9tQlVgPKbxjpnIY1tcw+MlU7JgRadGi4YaG9VTQ8noQucLI6cewh4+kxuknjXPW6NWMSLV1f1LY32GaPlIuf/ND84suhPcYfkW05YjSGhXaXpl6PQIkyoZUDoxnJZ+h3GAcndep+D1eunG/kq/dJJFWgyGkNOBaII3F6x3Z2KUhcXhRUorP27H8T8Xp0GYk7p1OPSIAe7zveCumUwylC7m992C8NApG9b3kqDc177utXPE7U2+YdfTanMQ1BfpE1OojPh cloud_user@98ca8001152c.mylabserver.com"
}

