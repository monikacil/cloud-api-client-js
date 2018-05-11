import APIResource from './APIResource'
import APIPageable from './APIPageable'

import Build from './Build'

class Job extends APIResource
  constructor: (api, parent, id) ->
    super(api, parent)
    @api.throwUnlessId(id, 'Job')
    @pushSelector('jobs', id)

  config: ->
    a = new APIResource(@api, this)
    a.pushSelector('config')

  build: (id) ->
    new Build(@api, this, id)
  builds: ->
    a = new APIPageable(@api, this)
    a.pushSelector('builds')



export default Job
