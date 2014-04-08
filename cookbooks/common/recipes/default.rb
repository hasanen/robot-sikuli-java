execute "add-apt-repository 'deb http://ppa.launchpad.net/xpresser-team/ppa/ubuntu precise main'" do
  action :run
end
execute 'apt-get update' do
  action :run
end
execute 'apt-get upgrade -y' do
  action :run
end
package 'xubuntu-desktop'
package 'firefox'
package 'libtesseract3'
package 'libopencv-core2.4'
package 'libopencv-highgui2.4'
package 'libopencv-imgproc2.4'
package 'openjdk-7-jdk'
package 'python-xpresser' do
  action :install
  options "--force-yes"
end
