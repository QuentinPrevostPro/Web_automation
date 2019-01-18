require 'watir'
search = ARGV.join(" ")
abort("Veuillez saisir une recherche!") if ARGV.empty?
browser = Watir::Browser.new(:firefox)
browser.goto 'google.com'
search_bar = browser.text_field(class: 'gsfi')
search_bar.set(search)
search_bar.send_keys(:enter)