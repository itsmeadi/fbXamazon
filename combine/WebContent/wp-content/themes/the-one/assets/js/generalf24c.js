"use strict";

(function( $ ){

	$.debounce = function( func, wait, immediate ){
		var timeout;
		return function(){
			var context = this, args = arguments;
			var later = function(){
				timeout = null;
				if( !immediate ) func.apply( context, args );
			};
			var callNow = immediate && !timeout;
			clearTimeout( timeout );
			timeout = setTimeout( later, wait );
			if( callNow ) func.apply( context, args );
		};
	};

	$.fn.isOrChildOf = function( target ){
		return $( this ).is( target ) || $( this ).closest( target ).length !== 0;
	};

	$.fn.isVisible = function( tOffset, lOffset ){

		var win = $( window );


		var cOffset = {
			top : typeof tOffset !== 'undefined' && !isNaN( parseInt( tOffset ) ) ? parseInt( tOffset ) : 0,
			left: typeof lOffset !== 'undefined' && !isNaN( parseInt( lOffset ) ) ? parseInt( lOffset ) : 0
		};


		var viewport = {
			top : win.scrollTop() - cOffset.top,
			left: win.scrollLeft() - cOffset.left
		};
		viewport.right = viewport.left + win.width();
		viewport.bottom = viewport.top + win.height();

		var bounds = this.offset();
		bounds.right = bounds.left + this.outerWidth();
		bounds.bottom = bounds.top + this.outerHeight();

		return (!(viewport.right < bounds.left || viewport.left > bounds.right || viewport.bottom < bounds.top || viewport.top > bounds.bottom));

	};

	$.fn.forceHide = function( args ){

		var settings = $.extend(
			{},
			{
				trigger       : $(),
				showAnimation : {opacity: 'show'},
				hideAnimation : {opacity: 'hide'},
				animationSpeed: 100
			},
			typeof args === 'object' ? args : {}
		);


		return this.each( function(){

			var container = $( this );

			$( document ).on( 'click', function( event ){
				var
					hide = true,
					target = event.target;
				if( $( target ).isOrChildOf( container ) ){
					hide = false;
				} else if( $( target ).isOrChildOf( settings.trigger ) ){
					hide = false;
					if( container.is( ':visible' ) ){
						settings.trigger.removeClass( 'active' );
						container.animate( settings.hideAnimation, settings.animationSpeed );
					} else{
						settings.trigger.addClass( 'active' );
						container.animate( settings.showAnimation, settings.animationSpeed );
					}
					return false;
				}

				if( hide ){
					settings.trigger.removeClass( 'active' );
					container.animate( settings.hideAnimation, settings.animationSpeed );
				}
			} );

		} );

	};

})( jQuery );

jQuery( function( $ ){

	var
		ajaxurl = theone.ajaxurl,
		getOwlSettings = function( element ){
			var ret = {};
			$.each( element.attributes, function(){
				if( this.specified && this.name.indexOf( 'data-owl-option-' ) === 0 ){
					ret[this.name.split( 'data-owl-option-' )[1]] = this.value;
				}
			} );
			return ret;
		};

	$( 'nav.menu-nav' ).find( '> ul' ).dropdown_menu( {
		speed_open: 200,
		open_delay: 100
	} );


	$( '.force-hide-trigger' ).each( function(){
		$( this ).next( '.force-hide' ).forceHide( {
			trigger: $( this )
		} );
	} );


	// Owl Carousels
	(function(){

		var parseResponsiveField = function( val ){
			var output = {}, p = {0: 1, 1: 767, 2: 992, 3: 1200};
			$.each( val.split( ',' ).slice( 0, 4 ), function( index, itemVal ){
				if( $.trim( itemVal ) !== '' ){
					output[p[index]] = itemVal;
				}
			} );
			return output;
		};
		$( '.owl-carousel' ).each( function(){
			var $this = $( this );
			var
				settings = $.extend(
					{},
					{
						nav    : true,
						items  : 5,
						margin : 10,
						navText: ['', '']
					},
					getOwlSettings( this )
				);

			var responsive = {
				1   : {},
				767 : {},
				992 : {},
				1200: {}
			};
			$.each( ['items', 'margin'], function( index, field ){
				if( typeof settings[field] !== 'string' || settings[field].indexOf( ',' ) === -1 ){
					return true;
				}
				$.each( parseResponsiveField( settings[field] ), function( parseBP, parseVal ){
					responsive[parseBP][field] = $.isNumeric( parseVal ) ? parseInt( parseVal, 10 ) : parseVal;
					if( typeof settings[field] !== 'undefined' ){
						delete settings[field];
					}
				} );
			} );

			settings.responsive = responsive;

			$.each( settings, function( key, value ){
				if( $.isNumeric( value ) ){
					settings[key] = parseInt( value, 10 );
				}
			} );

			var owl = $this.owlCarousel( settings );
		} );
	})();


	$( '.masonry-container' ).each( function(){
		var $this = $( this );
		var
			settings = $.extend(
				{},
				{
					columnWidth: 265
				},
				typeof $this.data( 'settings' ) === 'object' ? $this.data( 'settings' ) : {}
			);

		$this.masonry( settings );
	} );


	// Header
	(function(){
		var $header = $( 'header.masthead' );

		// Login modal btn in nav
		$( document ).on( 'click', '.open-login-modal', function( e ){
			e.preventDefault();
			$( '#to-login-modal' ).modal( 'toggle' );
		} );

		// Sticky Menu
		(function(){
			if( !$header.hasClass( 'sticky' ) ){
				return false;
			}
			var $window = $( window ),
				$body = $( 'body' ),
				$html = $( 'html' ),
				$headerDefaultTop = isNaN( parseInt( $header.css( 'top' ), 10 ) ) ? 0 : parseInt( $header.css( 'top' ), 10 ),
				$bodyDefaultTopMargin = isNaN( parseInt( $body.css( 'margin-top' ), 10 ) ) ? 0 : parseInt( $body.css( 'margin-top' ), 10 ),
				$htmlDefaultTopMargin = isNaN( parseInt( $html.css( 'margin-top' ), 10 ) ) ? 0 : parseInt( $html.css( 'margin-top' ), 10 );


			$window.on( 'scroll', $.debounce( function(){
				if( $window.scrollTop() >= ($header.outerHeight() + 10) ){
					$body.css( 'margin-top', $bodyDefaultTopMargin + $htmlDefaultTopMargin + $header.outerHeight( true ) );
					$header.addClass( 'fixed' ).css( 'top', $bodyDefaultTopMargin + $htmlDefaultTopMargin );
					$( document ).trigger( 'theone.stickyNav.display' );
				}
				else{
					$body.css( 'margin-top', $bodyDefaultTopMargin );
					$header.removeClass( 'fixed' ).css( 'top', $headerDefaultTop );
					$( document ).trigger( 'theone.stickyNav.hide' );
				}
			}, 1 ) );
		})();

		// Mobile Nav
		(function(){
			var $html = $( 'html' ), $body = $( 'body' ), $mobileNavContainer = $( '.mobile-nav-container' );

			$( document ).click( function( event ){
				$( 'html' ).removeClass( 'mobile-nav-visible' );
			} );

			$header.on( 'click', '.mobile-nav-trigger', function(){

				if( !$html.hasClass( 'mobile-nav-visible' ) ){
					$body.data( '_last_scroll_position', $body.scrollTop() );
				}
				else{
					setTimeout( function(){
						$body.scrollTop( $body.data( '_last_scroll_position' ) );
					}, 1 );
				}

				$( 'html' ).toggleClass( 'mobile-nav-visible' );

				return false;
			} );


			$mobileNavContainer.find( 'a' ).click( function(){
				var
					$this = $( this ),
					$subMenu = $this.next( 'ul.sub-menu' );
				if( !$subMenu.length ){
					return true;
				}
				if( $subMenu.is( ':visible' ) ){
					$subMenu.slideUp( 'fast', function(){
						$this.parent().removeClass( 'active' );
					} );
				}
				else{
					$subMenu.slideDown( 'fast' );
					$this.parent().addClass( 'active' );
				}
				return false;
			} );
		})();

		// Current User
		(function(){
			var timeout;
			$header.find( '.current-user' ).hover(
				function(){
					var $this = $( this );
					clearTimeout( timeout );
					timeout = setTimeout( function(){
						$this.find( '.options' ).fadeIn( 'fast' );
					}, 100 );
				},
				function(){
					var $this = $( this );
					clearTimeout( timeout );
					timeout = setTimeout( function(){
						$this.find( '.options' ).fadeOut( 'fast' );
					}, 300 );
				}
			);
		})();

	})();


	// Animated Number
	(function(){

		$( '.animated-number' ).each( function(){
			var $this = $( this );
			$this.text( $this.data( 'from' ) );

		} );

		$( window ).scroll( function(){

			$( '.animated-number' ).each( function(){

				var $this = $( this );


				if( $this.data( 'has-animated' ) ){
					return true;
				}


				if( $this.isVisible( 70 ) ){

					$this.data( 'has-animated', true );
					$this.animateNumber(
						{
							number: $this.data( 'to' )
						},
						$this.data( 'speed' )
					);
				}
			} );
		} );
	})();


	// Retina Support
	(function(){
		var isRetina = function(){
			var mediaQuery = '(-webkit-min-device-pixel-ratio: 1.5), (min--moz-device-pixel-ratio: 1.5), (-o-min-device-pixel-ratio: 3/2), (min-resolution: 1.5dppx)';

			if( window.devicePixelRatio > 1 ){
				return true;
			}

			return !!(root.matchMedia && root.matchMedia( mediaQuery ).matches);

		};

		$( 'img[data-ret-src]' ).each( function(){
			var $img = $( this ), width = $img.actual( 'width' ), height = $img.actual( 'height' );

			if( isRetina )
				$img.attr( 'src', $img.data( 'ret-src' ) ).attr( 'width', width ).attr( 'height', height );
		} );
	})();


	// BuddyPress
	(function(){
		var $buddyPress = $( '#buddypress' );
		var $header = $( 'header.masthead' ), $notsCount = $header.find( '.bp-notifications-count' );
		if( $notsCount.length )
			$( document ).on( 'bpln:new_notifications', function( evt, data ){
				var cCount = parseInt( $notsCount.text(), 10 );
				if( !isNaN( cCount ) && data.count && data.count > 0 ){
					$notsCount.fadeIn().text( cCount + parseInt( data.count, 10 ) );
				}
			} );

	})();


	// AJAX Login
	(function( url ){
		$( '.to-lin-form.ajax' ).submit( function(){
			var $form = $( this ), $ajaxAlert = $form.find( '.ajax-alert' );
			$form.prop( 'disabled', true );
			$form.addClass( 'loading' );
			$ajaxAlert.fadeOut();
			$.ajax( {
				url     : url,
				method  : 'post',
				dataType: 'json',
				data    : {
					action  : 'theone',
					action2 : 'frontend.login',
					username: $form.find( '.user-name' ).val(),
					password: $form.find( '.password' ).val(),
					remember: $form.find( '.rememberme' ).val()
				},
				success : function( res ){
					$form.removeClass( 'loading' );
					$form.prop( 'disabled', false );
					if( res.status != 1 ){
						if( res.msg ){
							$ajaxAlert.html( res.msg ).fadeIn();
						}
						return;
					}
					location.reload();
				},
				error   : function(){
					$form.removeClass( 'loading' );
					$form.prop( 'disabled', false );
					alert( 'An error happened. Please try again.' );
				}
			} );
			return false;
		} );
	})( ajaxurl );


	// AJAX Search
	(function( ajaxURL ){
		var ajaxSearch = function( $searchForm ){
			$searchForm = $( $searchForm );
			var
				$searchInput = $searchForm.find( 'input[type="search"]' ),
				settings = {},
				lastSearchVal,
				$result,
				xhr,
				timeout;

			$.each( $searchForm[0].attributes, function(){
				if( this.specified && this.name.indexOf( 'data-search-setting-' ) === 0 ){
					settings[this.name.split( 'data-search-setting-' )[1]] = this.value;
				}
			} );

			if( !$searchForm.find( '.ajax-search-results' ).length ){
				$result = $( '<div class="ajax-search-results"></div>' );
				$searchForm.append( $result );
			}
			else{
				$result = $searchForm.find( '.ajax-search-results' );
			}

			$searchInput.attr( 'autocomplete', 'off' );
			$searchInput.on( 'keyup', function( e ){
				var $this = $( this ), val = $this.val();
				if( e.which === 13 ){
					preventDefault()
				}
				else if( val === lastSearchVal ){
					return true;
				}
				lastSearchVal = val;
				clearTimeout( timeout );
				$searchForm.addClass( 'loading' );
				timeout = setTimeout( function(){
					if( xhr ){
						xhr.abort();
					}
					$searchForm.addClass( 'loading' );
					xhr = $.ajax( {
						type    : 'post',
						dataType: 'json',
						url     : ajaxURL,
						data    : {
							action        : 'theone',
							action2       : 'frontend.search',
							s             : val,
							searchSettings: settings
						},
						success : function( res ){
							$searchForm.removeClass( 'loading' );
							if( typeof res.result !== 'undefined' ){
								$result.slideUp( 'fast', function(){
									$result.html( res.result );
									$( this ).slideDown();
								} );
							}

							xhr = false;
							$searchForm.removeClass( 'loading' );
						},
						error   : function( error, type ){
							if( type != 'abort' ){
								$searchForm.removeClass( 'loading' );
								xhr = false;
								// alert( 'An error happened.' );
							}
							$searchForm.removeClass( 'loading' );
						}
					} );
				}, 270 );
			} );


			$( document ).on( 'click', function( e ){
				var $target = $( e.target );
				if( !settings['hide-results-on-blur'] || $target.is( $result ) || $target.closest( $result ).length || $target.is( $searchInput ) ){
					return true;
				}
				$result.fadeOut( 'fast' );
			} );

			$searchInput.on( 'focus', function(){
				if( $result.children().length ){
					$result.fadeIn( 'fast' );
				}
			} );

		};
		$( 'form.search-form.ajax' ).each( function(){
			ajaxSearch( this );
		} );
	})( ajaxurl );


	// Parallax
	(function(){
		if( navigator.userAgent.match( /(Android|iPod|iPhone|iPad)/ ) ){
			return false;
		}
		var parallaxWindows = $( '.parallax-bg' );
		parallaxWindows.each( function(){
			var $this = $( this ), bgImage = $this.css( 'background-image' ).replace( /"/g, "" ).replace( /url\(|\)$/ig, "" );
			if( bgImage.match( /\.(jpeg|jpg|gif|png)$/ ) ){
				$this.parallax( {imageSrc: bgImage} );
				$this.css( 'background', 'transparent' );
			}
		} );
		if( parallaxWindows.length )
			$( document ).on( 'theone.stickyNav.display theone.stickyNav.hide', function(){
				jQuery( window ).trigger( 'resize' ).trigger( 'scroll' );
			} );
	})();



} );


