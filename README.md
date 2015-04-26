redis-resource
==============

Install redis services.

## Supported Platforms

* SmartOS

## Usage

Include `redis-lwrp` in your recipe to get the magic:

```ruby
include_recipe 'redis-lwrp'
```

### Resources

```ruby
redis 'my-app' do
  version '~> 3.0'
  port 6379
  bind node['ipaddress']
  tcp_keepalive 0
  databases 16

  dbfilename 'dump.rdb'

  save seconds: 900, changes: 1
  save seconds: 300, changes: 100
end
```
