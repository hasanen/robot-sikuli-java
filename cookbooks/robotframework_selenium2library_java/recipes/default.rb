
version = node['robotframework_selenium2library_java']['version']
filename = "robotframework-selenium2library-java-#{version}-jar-with-dependencies.jar"

remote_file "/vagrant/lib/#{filename}" do
  source "http://search.maven.org/remotecontent?filepath=com/github/markusbernhardt/robotframework-selenium2library-java/#{version}/#{filename}"

  action :create_if_missing
end