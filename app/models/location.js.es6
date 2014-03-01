export default DS.Model.extend({
  spaceId: DS.attr('number'),
  address: DS.attr('string'),
  longitude: DS.attr('number'),
  latitude: DS.attr('number')
});
