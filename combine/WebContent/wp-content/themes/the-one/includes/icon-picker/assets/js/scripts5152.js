"use strict";

jQuery( function( $ ){
	$( document ).on( 'click', '.to-insert-icon', function( e ){
		e.preventDefault();
		var $list = $( this ).next();
		if( $list.is( ':visible' ) ){
			$list.slideUp( 'fast' );
		}
		else{
			$list.slideDown( 'fast' );
			$list.find( 'input[type="search"]' ).focus();
		}
	} );

	$( document ).on( 'click', '.to-icon-picker .list a', function( e ){
		e.preventDefault();
		wp.media.editor.insert( '[to-fa-icon name="' + $( this ).data( 'id' ) + '"]' );
		$( this ).closest( '.icons-list' ).slideUp();
	} );

	$( document ).on( 'keyup', '.to-icon-picker input', function( e ){
		var $this = $( this ), q, $container = $this.closest( '.to-icon-picker' );
		q = $.trim( $this.val() );
		if( q == '' ){
			$container.find( '.list a' ).removeAttr( 'style' );
			$container.removeClass( 'searching' );
		}
		$container.addClass( 'searching' );
		$container.find( '.list a' ).removeAttr( 'style' );
		$container.find( '.list' ).find( "a:contains('" + q + "')" ).css( 'display', 'inline-block' );
	} );
} );