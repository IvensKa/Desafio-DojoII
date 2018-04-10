require 'watir'

Before do |scenario|
  DataMagic.load_for_scenario(scenario)
end

After do |scenario|
	data = Time.now.strftime("%Y%m%dT%H%M%S")
	page.save_screenshot 'Evidencia tasks '+data+'.png'
end