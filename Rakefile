
def run_tests(platform, browser, version)
  system("os=\"#{platform}\" browser=\"#{browser}\" browser_version=\"#{version}\" ruby test.rb")
end

task :windows_chrome_80 do
  run_tests('Windows', 'chrome', '80')
end

task :windows_firefox_73 do
  run_tests('Windows', 'firefox','40')
end

task :windows_chrome_75 do
  run_tests('Windows', 'chrome','75')
end

task :windows_firefox_70 do
  run_tests('Windows', 'firefox','70')
end

multitask :parallel_test => [
    :windows_chrome_80,
    :windows_firefox_73,
    :windows_chrome_75,
    :windows_firefox_70
  ] do
    puts 'Running parallel Tests'
end
