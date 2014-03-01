export default Ember.Route.extend({
  model: function(params) {
    return this.store.find('amenity', params.amenity_id);
  },
  deactivate: function() {
    var model = this.get('controller.model');
    model.rollback();
  },
  actions: {
    save: function(model) {
      var _this = this;
      model.save().then(function() {
        _this.transitionTo('amenities.show', model);
      });
    },
    cancel: function(model) {
      this.transitionTo('amenities.show', model);
    }
  }
});
