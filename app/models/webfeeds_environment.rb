class WebfeedsEnvironment < ActiveResource::Base

  self.site = "http://vw.mverve.net/"
  self.prefix = "pnapi/"
  self.element_name = 'webfeedsEnvironments/'
  self.user = "adManager"
  self.password = "evrevdeconstruct"
end
