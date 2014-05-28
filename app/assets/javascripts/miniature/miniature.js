$("#img_principal").elevateZoom({
	gallery:'gallery_miniature',
	cursor: 'pointer',
	galleryActiveClass: 'active',
	imageCrossfade: true,
	loadingIcon: 'http://www.elevateweb.co.uk/spinner.gif',
	zoomType: "inner",
	responsive :"true"	
});

/*
//pass the images to Fancybox 
$("#img_principal").bind("click", function(e) { 
	var ez = $('#img_principal').data('elevateZoom');	
		$.fancybox(ez.getGalleryList()); 
	return false; 
});*/