export default Ember.Route.extend({
  model: function(params) {
    return this.store.find('location', params.location_id);
  },
  actions: {
    destroyRecord: function(model) {
      var _this = this;
      model.destroyRecord().then(function() {
        _this.transitionTo('locations.index');
      });
    }
  }
});
