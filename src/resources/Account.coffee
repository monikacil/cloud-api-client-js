import APIPageable from './APIPageable'
import APIResource from './APIResource'

import Services from './Services'

class Account extends APIPageable
  constructor: (api, parent) ->
    super(api, parent)
    @pushSelector('account')

  services: ->
    new Services(@api, this)
  service: (id) ->
    @api.throwUnlessId(id, 'Account Services')
    a = new APIResource(@api, this)
    a.pushSelector('services', id)

  roles: ->
    a = new APIPageable(@api, this)
    a.pushSelector('roles')
  role: (id) ->
    @api.throwUnlessId(id, 'Account Roles')
    a = new APIResource(@api, this)
    a.pushSelector('roles', id)

  additionalUsers: ->
    a = new APIPageable(@api, this)
    a.pushSelector('additional-users')
  additionalUser: (id) ->
    @api.throwUnlessId(id, 'Account Additional User')
    a = new APIResource(@api, this)
    a.pushSelector('additional-users', id)



export default Account