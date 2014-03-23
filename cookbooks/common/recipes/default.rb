execute 'apt-get update' do
  action :run
end
execute 'apt-get upgrade' do
  action :run
end
package 'xubuntu-desktop'
package 'firefox'
package 'libtesseract3'
package 'libopencv-core2.4'
package 'libopencv-highgui2.4'
package 'libopencv-imgproc2.4'
package 'openjdk-7-jdk'
