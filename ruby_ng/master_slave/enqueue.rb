require 'iron_worker_ng'
require_relative '../../ruby/examples_helper'

config = ExamplesHelper.load_config

client = IronWorkerNG::Client.new(config['iw']['token'], config['iw']['project_id'])

slaves = {
  'slave one' => {'foo' => 'bar'},
  'slave two' => {'hello' => 'world'}
}

client.tasks.create('MasterWorker', 'slaves' => slaves)
