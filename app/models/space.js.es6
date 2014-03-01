export default DS.Model.extend({
  title: DS.attr('string'),
  description: DS.attr('string'),
  publishedAt: DS.attr('date'),
  intro: DS.attr('string'),
  extended: DS.attr('string')
});
