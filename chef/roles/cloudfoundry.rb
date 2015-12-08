name "Cloud Foundry"
description "Cloud Foundry - Platform as a Service"
run_list(
        "recipe[cloudfoundry::default]"
)
default_attributes()
override_attributes()
