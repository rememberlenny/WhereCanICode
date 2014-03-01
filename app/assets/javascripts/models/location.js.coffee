# for more details see: http://emberjs.com/guides/models/defining-models/

Wcic.Location = DS.Model.extend
  spaceId: DS.attr 'number'
  address: DS.attr 'string'
  longitude: DS.attr 'number'
  latitude: DS.attr 'number'
