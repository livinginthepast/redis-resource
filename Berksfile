source "https://supermarket.chef.io"

metadata

cookbook 'paths', git: 'https://github.com/bixu/paths'
cookbook 'smf'

group :integration do
  cookbook 'test', path: 'test/cookbooks/test'
end

