curl -XPOST http://admin:admin@localhost:63959/api/auth/keys --header "Content-Type: application/json" --data '{"name":"deployment-key", "role":"Admin"}' 
# Returns
{"name":"deployment-key","key":"eyJrIjoiMnBZdm9TemFzbmlmMXNqbTRJcTUwNkpKNHh2ZXd0Y2EiLCJuIjoiZGVwbG95bWVudC1rZXkiLCJpZCI6MX0="}

curl -XPOST http://localhost:63959/api/dashboards/db -H "Content-Type: application/json" -H "Authorization: Bearer eyJrIjoiMnBZdm9TemFzbmlmMXNqbTRJcTUwNkpKNHh2ZXd0Y2EiLCJuIjoiZGVwbG95bWVudC1rZXkiLCJpZCI6MX0=" --data @testing_dashboard.json
# make sure there is a parent key called "dashboard" when exporting dashboards

curl -XPOST http://localhost:63959/api/datasources -H "Content-Type: application/json" -H "Authorization: Bearer eyJrIjoiMnBZdm9TemFzbmlmMXNqbTRJcTUwNkpKNHh2ZXd0Y2EiLCJuIjoiZGVwbG95bWVudC1rZXkiLCJpZCI6MX0=" --data @testing_datasource.json
# sample datasource