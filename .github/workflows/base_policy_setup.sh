ORG_DATA=$1
parameter1=$2
parameter2=$3

echo "$parameter1"
echo "$parameter2"
json_data=$ORG_DATA
echo $json_data
policy_file_name=$(echo "$(basename "$(find . -type f -exec grep -l "^include_policy" {} + )")")
# static_org=$(cat $policy_file_name | grep "^default_source :chef_server" | cut -d '/' -f 5)
static_org="CHEF_ORG"
echo "Static org: $static_org"
echo "$json_data" | jq -r 'to_entries[] | "\(.key) \(.value.client_name) \(.value.client_key_name) \(.value.org_name)"' | while read -r org client_name client_key_name org_name; do
  echo "Org: $org_name"
  cp $policy_file_name "${org_name}_${policy_file_name}"
  tmp_policy_file="${org_name}_${policy_file_name}"
  echo "Updating the Base Policyfiles org name in Chef server url"
  awk '/^default_source :chef_server/ {sub("'"${static_org}"'", "'"${org_name}"'")} 1' "${tmp_policy_file}" > "${tmp_policy_file}.tmp" && mv "${tmp_policy_file}.tmp" "${tmp_policy_file}"
  awk '/^include_policy/ {sub(/POLICY_GROUP/, "'"${parameter2}"'")} 1' "${tmp_policy_file}" > "${tmp_policy_file}.tmp" && mv "${tmp_policy_file}.tmp" "${tmp_policy_file}"
  awk '/^include_policy/ {sub("'"${static_org}"'", "'"${org_name}"'")} 1' "${tmp_policy_file}" > "${tmp_policy_file}.tmp" && mv "${tmp_policy_file}.tmp" "${tmp_policy_file}"

  echo "=========================="
  cat ${tmp_policy_file}
  echo "=========================="
  echo "let's run chef commands"
  # Connect to Chef server using knife ssl fetch
  # Terraform creation
  # Node bootstrap 
  # converge
  rm $tmp_policy_file
done