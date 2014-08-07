jQuery(document).ready(function() {
  jQuery('#tabs > div').hide(); // hide all child divs
  jQuery('#tabs div:first').show(); // show first child dive
  jQuery('#tabsnav li:first').addClass('active');

  jQuery('.menu-internal').click(function(){
   jQuery('#tabsnav li').removeClass('active');
   var currentTab = jQuery(this).attr('href');
   jQuery('#tabsnav li a[href="'+currentTab+'"]').parent().addClass('active');
   jQuery('#tabs > div').hide();
   jQuery(currentTab).show();
   return false;
  });
  // Create a bookmarkable tab link
  hash = window.location.hash;
  elements = jQuery('a[href="'+hash+'"]'); // look for tabs that match the hash
  if (elements.length === 0) { // if there aren't any, then
   jQuery("ul.tabs li:first").addClass("active").show(); // show the first tab
  } else { elements.click(); } // else, open the tab in the hash
 });