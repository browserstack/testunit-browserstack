
def run_tests(platform, browser, version)
  system("os=\"#{platform}\" browser=\"#{browser}\" browser_version=\"#{version}\" ruby test.rb")
end

task :windows_chrome_43 do
  run_tests('Windows', 'chrome', '43')
end

task :windows_firefox_40 do
  run_tests('Windows', 'firefox','40')
end

task :windows_chrome_45 do
  run_tests('Windows', 'chrome','45')
end

task :windows_firefox_39 do
  run_tests('Windows', 'firefox','39')
end

multitask :parallel_test => [
    :windows_chrome_43,
    :windows_firefox_40,
    :windows_chrome_45,
    :windows_firefox_39
  ] do
    puts 'Running parallel Tests'
end
