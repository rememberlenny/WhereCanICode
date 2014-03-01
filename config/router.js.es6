var Router = Ember.Router.extend({
  // Uncomment to change Ember's router to use the 
  // HTML5 History API
  // Please note that not all browsers support this!
  // You will also need to uncomment the greedy route matcher
  // in config/routes.rb

  // location: 'history'
});

Router.map(function() {
  this.resource('locations', function() {
    this.route('new');
    this.route('show', {path: ':location_id'});
    this.route('edit', {path: ':location_id/edit'});
  });
  this.resource('amenities', function() {
    this.route('new');
    this.route('show', {path: ':amenity_id'});
    this.route('edit', {path: ':amenity_id/edit'});
  });
  this.resource('spaces', function() {
    this.route('new');
    this.route('show', {path: ':space_id'});
    this.route('edit', {path: ':space_id/edit'});
  });
});

export default Router;
