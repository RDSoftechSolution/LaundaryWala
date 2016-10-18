/*-----------------------------------------------------------------------------------*/
/*	HOME POPUP WINDOW SETUP
/*-----------------------------------------------------------------------------------*/


jQuery(document).ready(function() {
			jQuery('body').sspopup({
				mode:'mixed',
				animtime:0.6,
				animation:'rotatein',
				autoopen:'true',
				customfields:'[]',
				facebook_appid:'sample',
				googleplus_clientid:"sample",
				googleplus_apikey:"",
				customfieldsmargin:'15px',
				bgcolor:'rgb(255, 255, 255)',
				lockbgcolor:'#000',
				buttonbgcolor:'rgb(199, 18, 47)',
				buttoncolor:'rgb(255, 255, 255)',
				closecolor:'rgb(0, 0, 0)',
				closefontsize:'12px',
				color:'rgb(0, 0, 0)',
				contentcolor:'rgb(0, 0, 0)',
				fontfamily:'Lato',
				contentfontfamily:'Lato',
				contentfontsize:'14px',
				contentweight:'normal',
				title:'Place Your Order',
				bottomtitle:'',
				text:'Stay updated on our OFFERS.',
				vspace:'60px',
				hspace:'10px',
				timer:5000,
				position:'centercenter',
				invalid_address:'INVALID ADDRESS',
				signup_success:'SIGNUP SUCCESS!',
				borderradius:'4px',
				inputborderradius:'0px',
				openbottom: false,
				fontsize:'20px',
				fontweight:'bold',
				double_optin: false,
				update_existing: true,
				replace_interests: false,
				send_welcome: false,
				once_per_user: false,
				cookie_days:'999',
				once_per_filled: false,
				filled_cookie_days:'999',
				subscribe_text:'GET UPDATES',
				placeholder_text:'Enter your email address',
				lock:'true',
				closewithlayer: true,
				hideclose: false,
				preset:'custom',
								
				/* sample image*/
			media:"images/gallary/g10w.jpg",
				
				/* sample youtube video: uncomment to activate*/
				/*media:"IpDlzCiAY28",*/
				
				mediawidth:"600px",
				mediaheight:"255px",
				mediapos:1,
				yaplay:true,
				yinfo:true,
				yloop:true,
				ycontrols:true,
				imgrepeat:false,
				imgopacity:100,
				embed:'',
				elemanimation:'elemmove',
				width: "",
				visible: true,
				redirecturl: "",
				formid: "1112",
				callBack: function () {

				},
				onSubmit: function () {
                    debugger

				},
				onShow: function () {

				},
				onHide:						function(){},
				onClose:					function(){}
			});
		});
