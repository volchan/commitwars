//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

if (parseInt($('.team-one .commits-total p').text()) < parseInt($('.team-two .commits-total p').text())) {
  $('.team-one').addClass('loser');
  $('.team-two').addClass('winner');
	$('.result-team-one').addClass('loser-text').text('Loser');
	$('.result-team-two').addClass('winner-text').text('Winner');
} else {
  $('.team-one').addClass('winner');
  $('.team-two').addClass('loser');
	$('.result-team-one').addClass('winner-text').text('Winner');
	$('.result-team-two').addClass('loser-text').text('Loser');
};
