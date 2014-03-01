export default Ember.Route.extend({
  model: function(params) {
    return this.store.find('amenity', params.amenity_id);
  },
  actions: {
    destroyRecord: function(model) {
      var _this = this;
      model.destroyRecord().then(function() {
        _this.transitionTo('amenities.index');
      });
    }
  }
});
